unit UMovObjetivo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF, Variants, 
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid;

type
  TfMovObjetivo = class(TForm)
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
    BitBtn6: TBitBtn;
    StaticText1: TStaticText;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel7: TPanel;
    BitBtn7: TBitBtn;
    SpeedButton9: TSpeedButton;
    DBMemo1: TDBMemo;
    BitBtn8: TBitBtn;
    DBText1: TDBText;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    SMDBGrid3: TSMDBGrid;
    SMDBGrid1: TSMDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    Label9: TLabel;
    DBText4: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
    function PodeExluirObjetivoAcaoItens: Boolean;
    procedure Excluir_Registro;
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fMovObjetivo: TfMovObjetivo;

implementation

uses UDM1, UDM2, UMovObjetivoItens, UMovObjetivoConclusao,
  UConsMovObjetivo, UPerspectiva, UObjetivo, DateUtils,
  UMovObjetivoDiasAcao, UConsMovObjetivo2;

{$R *.DFM}

procedure TfMovObjetivo.Habilita;
begin
  Panel3.Enabled            := not(Panel3.Enabled);
  Bitbtn1.Enabled           := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled           := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled           := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled           := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled           := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled           := not(Bitbtn6.Enabled);
  SMDBGrid3.Columns[1].ReadOnly := not(SMDBGrid3.Columns[1].ReadOnly);
  SMDBGrid3.Refresh;
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
end;

procedure TfMovObjetivo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DM1.tMovObjetivo.Close;
      DM1.tMovObjetivoAcao.Close;
      DM1.tMovObjetivoAcaoItens.Close;
      DM1.tObjetivo.Close;
      DM1.tAcao.Close;
      DM1.tPerspectiva.Close;
    end;
  Action := Cafree;
end;

procedure TfMovObjetivo.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsMovObjetivo.AsBoolean then
  begin
    BitBtn2.Tag := 0;
    DM1.tMovObjetivo.Refresh;
    DM2.tMovObjetivo2.Refresh;
    DM2.tMovObjetivo2.Last;
    DM1.tMovObjetivo.Insert;
    DM1.tMovObjetivoNumMov.AsInteger := DM2.tMovObjetivo2NumMov.AsInteger + 1;
    DM1.tMovObjetivoAno.AsInteger    := YearOf(Date);
    DM1.tMovObjetivo.Post;
    DM1.tMovObjetivo.Edit;
    Habilita;
    DBEdit1.SetFocus;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfMovObjetivo.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltMovObjetivo.AsBoolean then
  begin
    DM1.tMovObjetivo.Edit;
    BitBtn2.Tag := 1;
    Habilita;
    DBEdit1.SetFocus;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfMovObjetivo.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcMovObjetivo.AsBoolean then
  begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
      begin
        if not PodeExluirObjetivoAcaoItens then
          Raise Exception.Create('Não foi possível excluir o registro porque existe alguma ação já concluída, verifique!');
        Excluir_Registro;
      end;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfMovObjetivo.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    Excluir_Registro
  else
  if BitBtn2.Tag = 1 then
    DM1.tMovObjetivo.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfMovObjetivo.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfMovObjetivo.BitBtn6Click(Sender: TObject);
var
  vFlag : Boolean;
begin

  if DM1.tMovObjetivoAno.AsInteger <= 0 then
    Raise Exception.Create('Falta informar o ano!');

  if DM1.tMovObjetivoCodObjetivo.AsInteger <= 0 then
    Raise Exception.Create('Falta informar o objetivo!');

  if DM1.tMovObjetivoCodPerspectiva.AsInteger <= 0 then
    Raise Exception.Create('Falta informar a perspectiva!');

  if DM1.tMovObjetivoAcao.RecordCount < 1 then
    Raise Exception.Create('Falta informar a ação!');

  DM2.tMovObjetivo2.Refresh;  
  if (DM2.tMovObjetivo2.Locate('Ano;CodObjetivo;CodPerspectiva',VarArrayOf([DM1.tMovObjetivoAno.AsInteger,DM1.tMovObjetivoCodObjetivo.AsInteger,DM1.tMovObjetivoCodPerspectiva.AsInteger]),[locaseinsensitive])) and
     (DM2.tMovObjetivo2NumMov.AsInteger <> DM1.tMovObjetivoNumMov.AsInteger) then
    if MessageDlg('Já existe este objetivo e perspectiva lançado no ano, Continua?',mtconfirmation,[mbok,mbno],0)=mrno then
      exit;

  vFlag := True;
  DM1.tMovObjetivoAcao.First;
  while not DM1.tMovObjetivoAcao.Eof do
    begin
      if DM1.tMovObjetivoAcaoItens.RecordCount < 1 then
        begin
          vFlag := False;
          DM1.tMovObjetivoAcao.Last;
        end;
      DM1.tMovObjetivoAcao.Next;
    end;
  if not vFlag then
    Raise Exception.Create('Existe Ação sem itens!');

  if DM1.tMovObjetivo.State in [dsInsert, dsEdit] then
    DM1.tMovObjetivo.Post;

  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;

end;

procedure TfMovObjetivo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tMovObjetivo.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfMovObjetivo.FormShow(Sender: TObject);
begin
  DM1.tMovObjetivo.Open;
  DM1.tMovObjetivoAcao.Open;
  DM1.tMovObjetivoAcaoItens.Open;
  DM1.tObjetivo.Open;
  DM1.tAcao.Open;
  DM1.tPerspectiva.Open;
end;


procedure TfMovObjetivo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tMovObjetivo.State in [dsBrowse]) then
    begin
      fConsMovObjetivo := TfConsMovObjetivo.Create(Self);
      fConsMovObjetivo.ShowModal;
    end;

  if (Key = Vk_F3) and (DM1.tMovObjetivo.State in [dsEdit]) and (DM1.tMovObjetivoAcaoItens.RecordCount > 0) then
    begin
      fMovObjetivoConclusao := TfMovObjetivoConclusao.Create(Self);
      fMovObjetivoConclusao.ShowModal;
    end;

  if (Key = Vk_F4) and (DM1.tMovObjetivo.State in [dsBrowse]) then
    begin
      fConsMovObjetivo2 := TfConsMovObjetivo2.Create(Self);
      fConsMovObjetivo2.ShowModal;
    end;

end;

procedure TfMovObjetivo.SpeedButton9Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
    begin
      if not PodeExluirObjetivoAcaoItens then
        Raise Exception.Create('Não foi possível excluir o registro porque existe alguma ação já concluída, verifique!');

      DM1.tMovObjetivoAcaoItens.First;
      while not DM1.tMovObjetivoAcaoItens.Eof do
        DM1.tMovObjetivoAcaoItens.Delete;

      DM1.tMovObjetivoAcao.Delete;
    end;
end;

function TfMovObjetivo.PodeExluirObjetivoAcaoItens: Boolean;
begin
  Result := False;
  DM1.tMovObjetivoAcaoItens.First;
  while not DM1.tMovObjetivoAcaoItens.Eof do
  begin
    if DM1.tMovObjetivoAcaoItensDtConclusao.AsDateTime > 0 then
      exit;
    DM1.tMovObjetivoAcaoItens.Next;
  end;
  Result := True;
end;

procedure TfMovObjetivo.Excluir_Registro;
begin
  DM1.tMovObjetivoAcaoItens.First;
  while not DM1.tMovObjetivoAcaoItens.Eof do
    DM1.tMovObjetivoAcaoItens.Delete;

  DM1.tMovObjetivoAcao.First;
  while not DM1.tMovObjetivoAcao.Eof do
    DM1.tMovObjetivoAcao.Delete;

  DM1.tMovObjetivo.Delete;
end;

procedure TfMovObjetivo.BitBtn7Click(Sender: TObject);
begin
  fMovObjetivoItens := TfMovObjetivoItens.Create(Self);
  fMovObjetivoItens.ShowModal;
end;

procedure TfMovObjetivo.BitBtn8Click(Sender: TObject);
begin
  if DM1.tMovObjetivoAcaoCodAcao.AsInteger > 0 then
    begin
      fMovObjetivoDiasAcao := TfMovObjetivoDiasAcao.Create(Self);
      fMovObjetivoDiasAcao.ShowModal;
    end
  else
    ShowMessage('Primeiro tem que ser feita a digitação da Ação!');
end;

procedure TfMovObjetivo.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tPerspectiva.IndexFieldNames := 'Nome';
end;

procedure TfMovObjetivo.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioPerspectiva.AsBoolean then
    begin
      fPerspectiva := TfPerspectiva.Create(Self);
      fPerspectiva.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfMovObjetivo.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioObjetivo.AsBoolean then
    begin
      fObjetivo := TfObjetivo.Create(Self);
      fObjetivo.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfMovObjetivo.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tObjetivo.IndexFieldNames := 'Nome';
  if DM1.tMovObjetivoAcao.RecordCount > 0 then
    RxDBLookupCombo1.ReadOnly := True
  else
    RxDBLookupCombo1.ReadOnly := False;
end;

procedure TfMovObjetivo.DBEdit1Enter(Sender: TObject);
begin
  if DM1.tMovObjetivoAcao.RecordCount > 0 then
    DBEdit1.ReadOnly := True
  else
    DBEdit1.ReadOnly := False;
end;

procedure TfMovObjetivo.Panel1Click(Sender: TObject);
begin
    Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;
end;

end.
