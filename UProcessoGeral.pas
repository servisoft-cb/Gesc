unit UProcessoGeral;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF, Variants,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid, DBFilter;

type
  TfProcessoGeral = class(TForm)
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
    RxDBFilter1: TRxDBFilter;
    Panel7: TPanel;
    DBMemo1: TDBMemo;
    SMDBGrid1: TSMDBGrid;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    DBMemo2: TDBMemo;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    SpeedButton3: TSpeedButton;
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
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Limpa_Edit;
  public
    { Public declarations }
  end;

var
  fProcessoGeral: TfProcessoGeral;
implementation

uses UDM1, UDM2, UMovProcessoItens, UMovProcessoConclusao, UConsMovProcesso, DateUtils, UGeraProcessos,
  UPessoa, UConsMovProcessoVisita, UTipoProcesso, UProcessoGeralItens;

{$R *.DFM}

procedure TfProcessoGeral.Limpa_Edit;
begin
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo2.ClearValue;
  DBMemo1.Clear;
  DBMemo2.Clear;
  DBDateEdit1.Clear;
  RxDBLookupCombo2.SetFocus;
end;

procedure TfProcessoGeral.Habilita;
begin
  Panel3.Enabled        := not(Panel3.Enabled);
  Bitbtn1.Enabled       := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled       := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled       := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled       := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled       := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled       := not(Bitbtn6.Enabled);
  DBNavigator1.Enabled  := not(DBNavigator1.Enabled);
end;

procedure TfProcessoGeral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  DM1.tProcessoGeral.Close;
  DM1.tProcessoGeralItem.Close;
  DM1.tTipoProcesso.Close;
  dm1.tPessoa.Close;
  Action := Cafree;
end;

procedure TfProcessoGeral.BitBtn1Click(Sender: TObject);
var
  vNumMov : Integer;
begin
  if DM1.tUsuarioInsProcessoGeral.AsBoolean then
    begin
      BitBtn6.Tag := 1;
      BitBtn2.Tag := 0;
      DM1.tProcessoGeral.IndexFieldNames  := 'NumMov';
      DM1.tProcessoGeral.Refresh;
      Dm1.tProcessoGeral.Last;
      vNumMov                            := DM1.tProcessoGeralNumMov.AsInteger;
      DM1.tProcessoGeral.Insert;
      Dm1.tProcessoGeralNumMov.AsInteger  := vNumMov + 1;
      Dm1.tProcessoGeral.Post;
      Dm1.tProcessoGeral.Edit;
      Habilita;
      Limpa_Edit;
      DM1.tProcessoGeralData.AsDateTime  := Date;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfProcessoGeral.BitBtn2Click(Sender: TObject);
begin
  if DM1.tProcessoGeralNumMov.AsInteger < 1 then
    exit;
  if DM1.tUsuarioAltProcessoGeral.AsBoolean then
    begin
      DM1.tProcessoGeral.IndexFieldNames := 'NumMov';
      DM1.tProcessoGeral.Edit;
      BitBtn2.Tag := 1;
      BitBtn6.Tag := 0;
      Habilita;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');

end;

procedure TfProcessoGeral.BitBtn3Click(Sender: TObject);
begin
  if DM1.tProcessoGeralNumMov.AsInteger < 1 then
    exit;
  BitBtn2.Tag := 0;
  if DM1.tUsuarioExcProcessoGeral.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        begin
          DM1.tProcessoGeral.First;
          while not DM1.tProcessoGeralItem.Eof do
            DM1.tProcessoGeralItem.Delete;
          DM1.tProcessoGeral.Delete;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfProcessoGeral.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    begin
      DM1.tProcessoGeral.First;
      while not DM1.tProcessoGeralItem.Eof do
         DM1.tProcessoGeralItem.Delete;
      DM1.tProcessoGeral.Delete;
    end
  else
  if BitBtn2.Tag = 1 then
    begin
      DM1.tProcessoGeralItem.Cancel;
      DM1.tProcessoGeral.Cancel;
    end;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfProcessoGeral.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfProcessoGeral.BitBtn6Click(Sender: TObject);
begin
  if DM1.tProcessoGeralCodCliente.AsInteger <= 0 then
    ShowMessage('Falta informar o Cliente!')
  else
  if DM1.tProcessoGeralCodTipoProcesso.AsInteger <= 0 then
    ShowMessage('Falta informar o Processo!')
  else
    begin
      DM1.tProcessoGeral.Post;
      DM1.tProcessoGeral.Refresh;
      Habilita;
      BitBtn2.Tag := 0;
      BitBtn1.SetFocus;
    end;
end;

procedure TfProcessoGeral.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tProcessoGeral.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar para fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfProcessoGeral.FormShow(Sender: TObject);
begin
  DM1.tProcessoGeral.Open;
  DM1.tProcessoGeralItem.Open;
  DM1.tTipoProcesso.Open;
  DM1.tPessoa.Open;
  RXDbFilter1.Active := True;
end;

procedure TfProcessoGeral.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tPessoa.IndexFieldNames := 'Nome';
end;

procedure TfProcessoGeral.BitBtn7Click(Sender: TObject);
begin
  fProcessoGeralItens := TfProcessoGeralItens.Create(Self);
  BitBtn7.Tag := 0;
  fProcessogeralItens.ShowModal;
end;

procedure TfProcessoGeral.SpeedButton9Click(Sender: TObject);
begin
  if not DM1.tProcessoGeralItem.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este Item?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
         Dm1.tProcessoGeralItem.Delete
    end
  else
    ShowMessage('Não há Itens para Apagar na Ficha!');
end;

procedure TfProcessoGeral.BitBtn9Click(Sender: TObject);
begin
  if DM1.tProcessoGeralItem.IsEmpty then
    ShowMessage('Não há registro para ser alterado!')
  else
    begin
      BitBtn7.Tag := 1;
      fProcessoGeralItens                                := TfProcessoGeralItens.Create(Self);
      fProcessoGeralItens.vItem                          := DM1.tProcessoGeralItemItem.AsInteger;
      fProcessoGeralItens.DateEdit1.Date                 := DM1.tProcessoGeralItemData.AsDateTime;
      fProcessoGeralItens.DateEdit2.Date                 := DM1.tProcessoGeralItemDtConcluida.AsDateTime;
      fProcessoGeralItens.Memo1.Text                     := DM1.tProcessoGeralItemObs.AsString;
      fProcessoGeralItens.ShowModal;
    end;
end;

procedure TfProcessoGeral.SpeedButton2Click(Sender: TObject);
begin
   if DM1.tUsuarioPessoa.AsBoolean then
    begin
      fPessoa := TfPessoa.Create(Self);
      fPessoa.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfProcessoGeral.SpeedButton1Click(Sender: TObject);
begin
   if DM1.tUsuarioTipoProcesso.AsBoolean then
    begin
      fTipoProcesso := TfTipoProcesso.Create(Self);
      fTipoProcesso.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

end.
