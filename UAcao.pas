unit UAcao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid;

type
  TfAcao = class(TForm)
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
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fAcao: TfAcao;

implementation

uses UDM1, UDM2;
                      
{$R *.DFM}

procedure TfAcao.Habilita;
begin
  Panel3.Enabled            := not(Panel3.Enabled);
  Panel5.Enabled            := not(Panel5.Enabled);
  Bitbtn1.Enabled           := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled           := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled           := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled           := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled           := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled           := not(Bitbtn6.Enabled);
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
end;

procedure TfAcao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DM1.tAcao.Close;
      DM1.tPessoa.Close;
    end;
  Action := Cafree;
end;

procedure TfAcao.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsAcao.AsBoolean then
    begin
      DM1.tAcao.Refresh;
      DM1.tAcao.IndexFieldNames := 'Codigo';
      DM2.tAcao2.Refresh;
      DM2.tAcao2.IndexFieldNames := 'Codigo';
      DM2.tAcao2.Last;
      DM1.tAcao.Insert;
      DM1.tAcaoCodigo.AsInteger := DM2.tAcao2Codigo.AsInteger + 1;
      DM1.tAcao.Post;
      DM1.tAcao.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfAcao.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltAcao.AsBoolean then
    begin
      DM1.tAcao.IndexFieldNames := 'Codigo';
      DM1.tAcao.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfAcao.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcAcao.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tAcao.Delete;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfAcao.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tAcao.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tAcao.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfAcao.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfAcao.BitBtn6Click(Sender: TObject);
begin
  if DM1.tAcaoNome.AsString = '' then
    ShowMessage('Falta informar o nome!')
  else
  if DM1.tAcaoCodFuncionario1.AsInteger <= 0 then
    ShowMessage('Falta informar o funcionário titular!')
  else
    begin
      DM1.tAcao.Post;
      Habilita;
      BitBtn2.Tag := 0;
      BitBtn1.SetFocus;
    end;
end;

procedure TfAcao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tAcao.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfAcao.FormShow(Sender: TObject);
begin
  DM1.tAcao.Open;
  DM1.tPessoa.Open;
end;

procedure TfAcao.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tAcao.IndexFieldNames := 'Nome';
end;

procedure TfAcao.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tPessoa.IndexFieldNames := 'Nome';
end;

end.
