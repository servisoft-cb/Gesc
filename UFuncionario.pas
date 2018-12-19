unit UFuncionario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  DBFilter;

type
  TfFuncionario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label29: TLabel;
    RxSpeedButton1: TRxSpeedButton;
    Label32: TLabel;
    DBDateEdit2: TDBDateEdit;
    RxDBComboBox3: TRxDBComboBox;
    Label3: TLabel;
    DBDateEdit3: TDBDateEdit;
    Panel7: TPanel;
    RxDBGrid1: TRxDBGrid;
    StaticText13: TStaticText;
    DBEdit11: TDBEdit;
    StaticText14: TStaticText;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    StaticText15: TStaticText;
    Panel6: TPanel;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    RxDBLookupCombo18: TRxDBLookupCombo;
    StaticText1: TStaticText;
    BitBtn8: TBitBtn;
    RxDBFilter1: TRxDBFilter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Exclui_Pessoa;
  public
    { Public declarations }
  end;

var
  fFuncionario: TfFuncionario;

implementation

uses UDM1, UDM2;
                      
{$R *.DFM}

procedure TfFuncionario.Exclui_Pessoa;
begin
  DM1.tPessoaSetor.First;
  while not DM1.tPessoaSetor.Eof do
    begin
      DM1.tPessoaProcesso.First;
      while not DM1.tPessoaProcesso.Eof do
        DM1.tPessoaProcesso.Delete;
      DM1.tPessoaSetor.Delete;
    end;
  DM1.tPessoa.Delete;
end;

procedure TfFuncionario.Habilita;
begin
  Panel3.Enabled            := not(Panel3.Enabled);
  Panel5.Enabled            := not(Panel5.Enabled);
  Panel6.Enabled            := not(Panel6.Enabled);
  Bitbtn1.Enabled           := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled           := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled           := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled           := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled           := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled           := not(Bitbtn6.Enabled);
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
end;

procedure TfFuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  if Screen.FormCount < 3 then
    begin
      DM1.tPessoa.Close;
      DM1.tPessoaSetor.Close;
      DM1.tPessoaProcesso.Close;
      DM1.tSetor.Close;
      DM1.tPessoaProcesso.Close;
    end;
  Action := Cafree;
end;

procedure TfFuncionario.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsPessoa.AsBoolean then
    begin
      DM1.tPessoa.Refresh;
      DM1.tPessoa.IndexFieldNames := 'Codigo';
      DM2.tPessoa2.Refresh;
      DM2.tPessoa2.IndexFieldNames := 'Codigo';
      DM2.tPessoa2.Last;
      DM1.tPessoa.Insert;
      DM1.tPessoaCodigo.AsInteger      := DM2.tPessoa2Codigo.AsInteger + 1;
      DM1.tPessoaFuncionario.AsBoolean := True;
      DM1.tPessoa.Post;
      DM1.tPessoa.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfFuncionario.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltPessoa.AsBoolean then
    begin
      DM1.tPessoa.IndexFieldNames := 'Codigo';
      DM1.tPessoa.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfFuncionario.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcPessoa.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        Exclui_Pessoa;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfFuncionario.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    Exclui_Pessoa
  else
  if BitBtn2.Tag = 1 then
    DM1.tPessoa.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfFuncionario.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfFuncionario.BitBtn6Click(Sender: TObject);
begin
  if DM1.tPessoaNome.AsString = '' then
    ShowMessage('Falta informar o nome!')
  else
  if not(DM1.tPessoaFuncionario.AsBoolean) and not(DM1.tPessoaCliente.AsBoolean) then
    ShowMessage('Falta escolher o tipo do registro!')
  else
    begin
      DM1.tPessoa.Post;
      Habilita;
      BitBtn2.Tag := 0;
      BitBtn1.SetFocus;
    end;
end;

procedure TfFuncionario.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tPessoa.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfFuncionario.FormShow(Sender: TObject);
begin
  DM1.tPessoa.Open;
  DM1.tPessoaSetor.Open;
  DM1.tPessoaProcesso.Open;
  DM1.tSetor.Open;
  DM1.tProcesso.Open;
  RxDBFilter1.Active := True;
end;

procedure TfFuncionario.BitBtn8Click(Sender: TObject);
begin
  if RxDBLookupCombo18.Text = '' then
    ShowMessage('Falta informar o setor!')
  else
    begin
      if DM1.tPessoaSetor.Locate('CodSetor',RxDBLookupCombo18.KeyValue,[loCaseInsensitive]) then
        ShowMessage('Setor já informado!')
      else
        begin
          DM1.tPessoaSetor.Insert;
          DM1.tPessoaSetorCodPessoa.AsInteger := DM1.tPessoaCodigo.AsInteger;
          DM1.tPessoaSetorCodSetor.AsInteger  := RxDBLookupCombo18.KeyValue;
          DM1.tPessoaSetor.Post;
        end;
      SpeedButton7Click(Sender);
      DM1.tPessoaSetor.Refresh;
    end;
  RxDBLookupCombo18.SetFocus;
end;

procedure TfFuncionario.SpeedButton7Click(Sender: TObject);
begin
  RxDBLookupCombo18.ClearValue;
end;

procedure TfFuncionario.SpeedButton9Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
    begin
      DM1.tPessoaProcesso.First;
      while not DM1.tPessoaProcesso.Eof do
        DM1.tPessoaProcesso.Delete;
      DM1.tPessoaSetor.Delete;
    end;
  DM1.tPessoaSetor.Refresh;
end;

procedure TfFuncionario.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tPessoa.IndexFieldNames := 'Nome';
end;

end.
