unit USetor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid;

type
  TfSetor = class(TForm)
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
    Panel7: TPanel;
    SpeedButton9: TSpeedButton;
    BitBtn7: TBitBtn;
    SMDBGrid1: TSMDBGrid;
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
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Exclui_Tabelas;
  public
    { Public declarations }
  end;

var
  fSetor: TfSetor;

implementation

uses UDM1, UDM2, USetorProcesso;

{$R *.DFM}

procedure TfSetor.Exclui_Tabelas;
begin
  DM1.tSetorProcesso.First;
  while not DM1.tSetorProcesso.Eof do
    DM1.tSetorProcesso.Delete;
  DM1.tSetor.Delete;
end;

procedure TfSetor.Habilita;
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

procedure TfSetor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DM1.tSetor.Close;
      DM1.tSetorProcesso.Close;
      DM1.tProcesso.Close;
    end;
  Action := Cafree;
end;

procedure TfSetor.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsSetor.AsBoolean then
    begin
      DM1.tSetor.Refresh;
      DM1.tSetor.IndexFieldNames := 'Codigo';
      DM2.tSetor2.Refresh;
      DM2.tSetor2.IndexFieldNames := 'Codigo';
      DM2.tSetor2.Last;
      DM1.tSetor.Insert;
      DM1.tSetorCodigo.AsInteger := DM2.tSetor2Codigo.AsInteger + 1;
      DM1.tSetor.Post;
      DM1.tSetor.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfSetor.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltSetor.AsBoolean then
    begin
      DM1.tSetor.IndexFieldNames := 'Codigo';
      DM1.tSetor.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfSetor.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcSetor.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        Exclui_Tabelas;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfSetor.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    Exclui_Tabelas
  else
  if BitBtn2.Tag = 1 then
    DM1.tSetor.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfSetor.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfSetor.BitBtn6Click(Sender: TObject);
begin
  if DM1.tSetorNome.AsString = '' then
    ShowMessage('Falta informar o nome!')
  else
    begin
      DM1.tSetor.Post;
      Habilita;
      BitBtn2.Tag := 0;
      BitBtn1.SetFocus;
    end;
end;

procedure TfSetor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tSetor.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfSetor.FormShow(Sender: TObject);
begin
  DM1.tSetor.Open;
  DM1.tSetorProcesso.Open;
  DM1.tProcesso.Open;
end;

procedure TfSetor.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tSetor.IndexFieldNames := 'Nome';
end;

procedure TfSetor.SpeedButton9Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
    DM1.tSetorProcesso.Delete;
end;

procedure TfSetor.BitBtn7Click(Sender: TObject);
begin
  fSetorProcesso := TfSetorProcesso.Create(Self);
  fSetorProcesso.ShowModal;
end;

end.
