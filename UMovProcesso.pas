unit UMovProcesso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF, Variants, 
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid, DBFilter;

type
  TfMovProcesso = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    DBDateEdit1: TDBDateEdit;
    StaticText1: TStaticText;
    RxDBFilter1: TRxDBFilter;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label5: TLabel;
    Panel7: TPanel;
    BitBtn7: TBitBtn;
    SpeedButton9: TSpeedButton;
    StaticText2: TStaticText;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DBMemo1: TDBMemo;
    StaticText3: TStaticText;
    Label1: TLabel;
    Shape1: TShape;
    Label9: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    BitBtn10: TBitBtn;
    Panel5: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    CheckBox1: TCheckBox;
    BitBtn11: TBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    SpeedButton2: TSpeedButton;
    BitBtn12: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn10Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Exclui_Tabelas;
    function ExisteProcessoConcluido: Boolean;

  public
    { Public declarations }
    procedure Grava_Setores(Codigo : Integer);
    procedure Le_PessoaSetor(codSetor: String);
    procedure Grava_tMovProcessoItens(CodSetor, CodProcesso: Integer);
    procedure Insere_Processo;
    procedure Calcula_Dias;
  end;

var
  fMovProcesso: TfMovProcesso;
implementation

uses UDM1, UDM2, UMovProcessoItens, UMovProcessoConclusao, UConsMovProcesso, DateUtils, UGeraProcessos,
  UPessoa, UConsMovProcessoVisita;

{$R *.DFM}

procedure TfMovProcesso.Insere_Processo;
begin
  DM1.tMovProcesso.Refresh;
  DM1.tMovProcesso.IndexFieldNames  := 'NumMov';
  DM2.tMovProcesso2.Refresh;
  DM2.tMovProcesso2.IndexFieldNames := 'NumMov';
  DM2.tMovProcesso2.Last;
  DM1.tMovProcesso.Insert;
  DM1.tMovProcessoNumMov.AsInteger := DM2.tMovProcesso2NumMov.AsInteger + 1;
  DM1.tMovProcesso.Post;
  DM1.tMovProcesso.Edit;
end;

procedure TfMovProcesso.Grava_tMovProcessoItens(CodSetor, CodProcesso : Integer);
var
  vDia : Integer;
  vAux : Real;
  vDiaMes : Integer;
  i : Integer;
begin
  if not DM1.tMovProcessoItens.Locate('CodSetor;CodProcesso',VarArrayOf([CodSetor,CodProcesso]),[locaseinsensitive]) then
    begin
      DM1.tMovProcessoItens.Insert;
      DM1.tMovProcessoItensNumMov.AsInteger      := DM1.tMovProcessoNumMov.AsInteger;
      DM1.tMovProcessoItensCodSetor.AsInteger    := CodSetor;
      DM1.tMovProcessoItensCodProcesso.AsInteger := CodProcesso;
      if DM1.tProcesso.Locate('Codigo',DM1.tMovProcessoItensCodProcesso.AsInteger,[loCaseInsensitive]) then
        vDia := DM1.tProcessoDiaVecto.AsInteger;
      vDiaMes := DaysInAMonth(DM1.tMovProcessoAnoRef.AsInteger,DM1.tMovProcessoMesRef.AsInteger);
      if vDia <= 0 then
        vDia := 01;
      if DM1.tProcessoTipoDia.AsString = 'U' then
        Calcula_Dias;
      if DM1.tProcessoTipoDia.AsString = 'F' then
        DM1.tMovProcessoItensDtVencimento.AsDateTime := EncodeDate(DM1.tMovProcessoAnoRef.AsInteger,DM1.tMovProcessoMesRef.AsInteger,vDia);
     DM1.tMovProcessoItens.Post;
    end;
end;

procedure TfMovProcesso.Calcula_Dias;
var
  vDataI  : TDate;
  Contador : Integer;
begin
  Contador  := 1;
  vDataI := EncodeDate(DM1.tMovProcessoAnoRef.AsInteger, DM1.tMovProcessoMesRef.AsInteger, 1);
    while (Contador <= DM1.tProcessoDiaVecto.AsInteger) do
      begin
        if ((DayOfWeek(vDataI) <> 1) and (DayOfWeek(vDataI) <> 7)) and not(DM1.tFeriado.Locate('Data',vDataI,[loCaseInsensitive])) then
          Inc(Contador);
        vDataI := vDataI + 1;
      end;
  DM1.tMovProcessoItensDtVencimento.AsDateTime := vDataI;
end;

procedure TfMovProcesso.Le_PessoaSetor(codSetor: String);
begin
  BitBtn8.Tag := 1;
  DM1.tPessoaSetor.First;
  if StrToInt(codSetor) > 0 then
  begin
    dm1.tPessoaSetor.Filtered := False;
    dm1.tPessoaSetor.Filter   := 'CodSetor = ''' + codSetor + '''';
    dm1.tPessoaSetor.Filtered := True;
  end;
  while not DM1.tPessoaSetor.Eof do
    begin
      Grava_Setores(DM1.tPessoaSetorCodSetor.AsInteger);
      DM1.tPessoaProcesso.First;
      while not DM1.tPessoaProcesso.Eof do
        begin
          if DM1.tPessoaProcessoPossui.AsBoolean then
            Grava_tMovProcessoItens(DM1.tPessoaProcessoCodSetor.AsInteger,DM1.tPessoaProcessoCodProcesso.AsInteger);
          DM1.tPessoaProcesso.Next;
        end;
      DM1.tPessoaSetor.Next;
    end;
  dm1.tPessoaSetor.Filtered := False;
  dm1.tPessoaSetor.Filter   := '';
  BitBtn8.Tag := 0;
end;

procedure TfMovProcesso.Grava_Setores(Codigo : Integer);
var
  vFlag : Boolean;
begin
  if DM1.tSetor.Locate('Codigo',Codigo,[loCaseInsensitive]) then
    begin
      if not DM1.tMovProcessoSetor.Locate('CodSetor',Codigo,[loCaseInsensitive]) then
        begin
          DM1.tMovProcessoSetor.Insert;
          DM1.tMovProcessoSetorNumMov.AsInteger   := DM1.tMovProcessoNumMov.AsInteger;
          DM1.tMovProcessoSetorCodSetor.AsInteger := Codigo;
          DM1.tMovProcessoSetor.Post;
        end;
      DM1.tSetorProcesso.First;
      while not DM1.tSetorProcesso.Eof do
        begin
          vFlag := True;
          if (DM1.tPessoaProcesso.Locate('CodPessoa;CodSetor;CodProcesso',
             VarArrayOf([DM1.tMovProcessoCodCliente.AsInteger,Codigo,DM1.tSetorProcessoCodProcesso.AsInteger]),[locaseinsensitive])) and
             not(DM1.tPessoaProcessoPossui.AsBoolean) then
            vFlag := False;
          if vFlag then
            Grava_tMovProcessoItens(Codigo,DM1.tSetorProcessoCodProcesso.AsInteger);
          DM1.tSetorProcesso.Next;
        end;
    end;
end;

procedure TfMovProcesso.Exclui_Tabelas;
begin
  DM1.tMovProcessoSetor.First;
  while not DM1.tMovProcessoSetor.Eof do
    begin
      DM1.tMovProcessoItens.First;
      while not DM1.tMovProcessoItens.Eof do
        DM1.tMovProcessoItens.Delete;
      DM1.tMovProcessoSetor.Delete;
    end;
  DM1.tMovProcesso.Delete;
end;

procedure TfMovProcesso.Habilita;
begin
  Panel3.Enabled       := not(Panel3.Enabled);
  Bitbtn1.Enabled      := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled      := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled      := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled      := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled      := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled      := not(Bitbtn6.Enabled);
  Bitbtn10.Enabled     := not(Bitbtn10.Enabled);
  Bitbtn12.Enabled     := not(Bitbtn12.Enabled);
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
  Panel5.Enabled       := not(Panel5.Enabled);
//  SMDBGrid1.Columns[5].ReadOnly := not(SMDBGrid1.Columns[5].ReadOnly);
//  SMDBGrid1.Refresh;
end;

procedure TfMovProcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  if Screen.FormCount < 3 then
    begin
      DM1.tMovProcesso.Close;
      DM1.tMovProcessoItens.Close;
      DM1.tMovProcessoSetor.Close;
      DM1.tProcesso.Close;
      DM1.tPessoa.Close;
      DM1.tPessoaSetor.Close;
      DM1.tPessoaProcesso.Close;
      DM1.tSetor.Close;
      DM1.tSetorProcesso.Close;
      DM1.tFeriado.Close;
    end;
  dm1.tMovProcesso.Filtered := False;
  dm1.tMovProcesso.Filter   := '';
  Action := Cafree;
end;

procedure TfMovProcesso.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsMovProcesso.AsBoolean then
    begin
      CheckBox1.Checked := False;
      Insere_Processo;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfMovProcesso.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltMovProcesso.AsBoolean then
    begin
      if DM1.tMovProcessoNumMov.AsInteger > 0 then
        begin
//          CheckBox1.Checked := False;
          DM1.tMovProcesso.Edit;
          BitBtn2.Tag := 1;
          Habilita;
          DBEdit1.SetFocus;
          SMDBGrid1.ReadOnly := False;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfMovProcesso.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcMovProcesso.AsBoolean then
    begin
      if DM1.tMovProcessoNumMov.AsInteger > 0 then
        if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        begin
          if ExisteProcessoConcluido then
            Raise Exception.Create('Não foi possível excluir o registro porque existe algum processo já concluído, verifique!');
          Exclui_Tabelas;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfMovProcesso.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    Exclui_Tabelas
  else
  if BitBtn2.Tag = 1 then
    DM1.tMovProcesso.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfMovProcesso.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfMovProcesso.BitBtn6Click(Sender: TObject);
begin
  if DM1.tMovProcessoCodCliente.AsInteger <= 0 then
    ShowMessage('Falta informar o cliente!')
  else
  if (DM1.tMovProcessoAnoRef.AsInteger <= 0) or (DM1.tMovProcessoMesRef.AsInteger <= 0) then
    ShowMessage('Falta informar o ano ou o mês!')
  else
  if (DM2.tMovProcesso2.Locate('CodCliente;AnoRef;MesRef',VarArrayOf([DM1.tMovProcessoCodCliente.AsInteger,DM1.tMovProcessoAnoRef.AsInteger,DM1.tMovProcessoMesRef.AsInteger]),[locaseinsensitive])) and
     (DM2.tMovProcesso2NumMov.AsInteger <> DM1.tMovProcessoNumMov.AsInteger) then
    ShowMessage('Este cliente com ano e mês já existe no movimento de nº ' + DM2.tMovProcesso2NumMov.AsString)
  else
    begin
      DM1.tMovProcesso.Post;
      Habilita;
      BitBtn2.Tag := 0;
      SMDBGrid1.ReadOnly := True;
      BitBtn1.SetFocus;
    end;
end;

procedure TfMovProcesso.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tMovProcesso.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar para fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfMovProcesso.FormShow(Sender: TObject);
begin
  DM1.tMovProcesso.Open;
  DM1.tMovProcessoItens.Open;
  DM1.tMovProcessoSetor.Open;
  DM1.tProcesso.Open;
  DM1.tPessoa.Open;
  DM1.tPessoaSetor.Open;
  DM1.tPessoaProcesso.Open;
  DM1.tSetor.Open;
  DM1.tSetorProcesso.Open;
  DM1.tFeriado.Open;
   if DM1.tUsuarioConsVisita.AsBoolean = True then
    begin
      BitBtn12.Visible := True;
      BitBtn12.Enabled := True;
    end
  else
    BitBtn12.Visible := False;
   RxDBFilter1.Active := True;
end;

procedure TfMovProcesso.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tPessoa.IndexFieldNames := 'Nome';
  if DM1.tMovProcessoSetor.RecordCount > 0 then
    RxDBLookupCombo2.ReadOnly := True
  else
    RxDBLookupCombo2.ReadOnly := False;
end;

procedure TfMovProcesso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tMovProcesso.State in [dsBrowse]) then
    begin
      fConsMovProcesso := TfConsMovProcesso.Create(Self);
      fConsMovProcesso.ShowModal;
    end;
  {if (Key = Vk_F3) and (DM1.tMovProcesso.State in [dsEdit]) and (DM1.tMovProcesso.RecordCount > 0) then
    begin
      fMovProcessoConclusao := TfMovProcessoConclusao.Create(Self);
      fMovProcessoConclusao.ShowModal;
    end;}
end;

procedure TfMovProcesso.BitBtn7Click(Sender: TObject);
begin
  fMovProcessoItens := TfMovProcessoItens.Create(Self);
  fMovProcessoItens.Panel2.Enabled := False;
  fMovProcessoItens.Panel1.Enabled := True;
  fMovProcessoItens.ShowModal;
end;

procedure TfMovProcesso.SpeedButton9Click(Sender: TObject);
begin
  if (DM1.tUsuarioExcMovProcesso.AsBoolean) and
     (MessageDlg('Deseja excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok) then
    begin
      if ExisteProcessoConcluido then
        Raise Exception.Create('Não foi possível excluir o registro porque existe algum processo já concluído, verifique!');
      DM1.tMovProcessoItens.First;
      while not DM1.tMovProcessoItens.Eof do
        DM1.tMovProcessoItens.Delete;
      DM1.tMovProcessoSetor.Delete;
    end;
end;

procedure TfMovProcesso.BitBtn8Click(Sender: TObject);
begin
  if ExisteProcessoConcluido then
    Raise Exception.Create('Não foi possível gerar os setores porque existe algum processo já concluído, verifique!');

  if (RxDBLookupCombo2.Text <> '') and
     (DM1.tPessoa.Locate('Codigo',RxDBLookupCombo2.KeyValue,[loCaseInsensitive])) then
    Le_PessoaSetor('0');
end;

function TfMovProcesso.ExisteProcessoConcluido: Boolean;
begin
  Result := False;
  DM1.tMovProcessoItens.First;
  while not DM1.tMovProcessoItens.Eof do
  begin
    Result := (DM1.tMovProcessoItensDtConclusao.AsDateTime > 0);
    if Result then
      exit;
    DM1.tMovProcessoItens.Next;
  end;
end;

procedure TfMovProcesso.BitBtn9Click(Sender: TObject);
begin
  fMovProcessoItens := TfMovProcessoItens.Create(Self);
  fMovProcessoItens.Panel2.Enabled := True;
  fMovProcessoItens.Panel1.Enabled := False;
  fMovProcessoItens.ShowModal;
end;

procedure TfMovProcesso.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tMovProcessoItensDtConclusao.AsDateTime > 1 then
    AFont.Color := clNavy
  else
  if DM1.tMovProcessoItensDtVencimento.AsDateTime < Date then
    AFont.Color := clRed;
end;

procedure TfMovProcesso.BitBtn10Click(Sender: TObject);
begin
  fGeraProcessos := TfGeraProcessos.Create(Self);
  fGeraProcessos.ShowModal;
end;

procedure TfMovProcesso.CheckBox1Click(Sender: TObject);
begin
  CurrencyEdit1.Enabled  := CheckBox1.Checked;
  CurrencyEdit2.Enabled  := CheckBox1.Checked;
  BitBtn11.Enabled          := CheckBox1.Checked;
  dm1.tMovProcesso.Filtered := CheckBox1.Checked;
end;

procedure TfMovProcesso.BitBtn11Click(Sender: TObject);
begin
  dm1.tMovProcesso.Filtered := False;
  dm1.tMovProcesso.Filter   := 'ANOREF = ''' + CurrencyEdit1.Text + ''' AND MESREF = '''+ CurrencyEdit2.Text + '''';
  dm1.tMovProcesso.Filtered := True;
end;

procedure TfMovProcesso.SpeedButton2Click(Sender: TObject);
begin
   if DM1.tUsuarioPessoa.AsBoolean then
    begin
      fPessoa := TfPessoa.Create(Self);
      fPessoa.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfMovProcesso.BitBtn12Click(Sender: TObject);
begin
  fConsMovProcessoVisitas := TfConsMovProcessoVisitas.Create(Self);
  fConsMovProcessoVisitas.ShowModal;
end;

end.
