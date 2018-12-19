unit UObjetivo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid;

type
  TfObjetivo = class(TForm)
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
  fObjetivo: TfObjetivo;

implementation

uses UDM1, UDM2;
                      
{$R *.DFM}

procedure TfObjetivo.Habilita;
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

procedure TfObjetivo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    DM1.tObjetivo.Close;
  Action := Cafree;
end;

procedure TfObjetivo.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsObjetivo.AsBoolean then
    begin
      DM1.tObjetivo.Refresh;
      DM1.tObjetivo.IndexFieldNames := 'Codigo';
      DM2.tObjetivo2.Refresh;
      DM2.tObjetivo2.IndexFieldNames := 'Codigo';
      DM2.tObjetivo2.Last;
      DM1.tObjetivo.Insert;
      DM1.tObjetivoCodigo.AsInteger := DM2.tObjetivo2Codigo.AsInteger + 1;
      DM1.tObjetivo.Post;
      DM1.tObjetivo.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfObjetivo.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltObjetivo.AsBoolean then
    begin
      DM1.tObjetivo.IndexFieldNames := 'Codigo';
      DM1.tObjetivo.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfObjetivo.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcObjetivo.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tObjetivo.Delete;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfObjetivo.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tObjetivo.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tObjetivo.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfObjetivo.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfObjetivo.BitBtn6Click(Sender: TObject);
begin
  if DM1.tObjetivoNome.AsString = '' then
    ShowMessage('Falta informar o nome!')
  else
    begin
      DM1.tObjetivo.Post;
      Habilita;
      BitBtn2.Tag := 0;
      BitBtn1.SetFocus;
    end;
end;

procedure TfObjetivo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tObjetivo.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfObjetivo.FormShow(Sender: TObject);
begin
  DM1.tObjetivo.Open;
end;

procedure TfObjetivo.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tObjetivo.IndexFieldNames := 'Nome';
end;

end.
