unit UPerspectiva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid;

type
  TfPerspectiva = class(TForm)
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
  private
    { Private declarations }
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fPerspectiva: TfPerspectiva;

implementation

uses UDM1, UDM2;
                      
{$R *.DFM}

procedure TfPerspectiva.Habilita;
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

procedure TfPerspectiva.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    DM1.tPerspectiva.Close;
  Action := Cafree;
end;

procedure TfPerspectiva.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsPerspectiva.AsBoolean then
    begin
      DM1.tPerspectiva.Refresh;
      DM1.tPerspectiva.IndexFieldNames := 'Codigo';
      DM2.tPerspectiva2.Refresh;
      DM2.tPerspectiva2.IndexFieldNames := 'Codigo';
      DM2.tPerspectiva2.Last;
      DM1.tPerspectiva.Insert;
      DM1.tPerspectivaCodigo.AsInteger := DM2.tPerspectiva2Codigo.AsInteger + 1;
      DM1.tPerspectiva.Post;
      DM1.tPerspectiva.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfPerspectiva.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltPerspectiva.AsBoolean then
    begin
      DM1.tPerspectiva.IndexFieldNames := 'Codigo';
      DM1.tPerspectiva.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfPerspectiva.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcPerspectiva.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tPerspectiva.Delete;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfPerspectiva.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tPerspectiva.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tPerspectiva.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfPerspectiva.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfPerspectiva.BitBtn6Click(Sender: TObject);
begin
  if DM1.tPerspectivaNome.AsString = '' then
    ShowMessage('Falta informar o nome!')
  else
    begin
      DM1.tPerspectiva.Post;
      Habilita;
      BitBtn2.Tag := 0;
      BitBtn1.SetFocus;
    end;
end;

procedure TfPerspectiva.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tPerspectiva.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else                                     
    CanClose := True;
end;

procedure TfPerspectiva.FormShow(Sender: TObject);
begin
  DM1.tPerspectiva.Open;
end;

procedure TfPerspectiva.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tPerspectiva.IndexFieldNames := 'Nome';
end;

end.
