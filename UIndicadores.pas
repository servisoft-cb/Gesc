unit UIndicadores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid;

type
  TfIndicadores = class(TForm)
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
    Panel5: TPanel;
    RxDBComboBox1: TRxDBComboBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fIndicadores: TfIndicadores;

implementation

uses UDM1, UDM2;
                      
{$R *.DFM}

procedure TfIndicadores.Habilita;
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

procedure TfIndicadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    DM1.tIndicadores.Close;
  Action := Cafree;
end;

procedure TfIndicadores.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsAtividade.AsBoolean then
    begin
      DM1.tIndicadores.Refresh;
      DM1.tIndicadores.IndexFieldNames := 'Codigo';
      DM2.tIndicadores2.Refresh;
      DM2.tIndicadores2.IndexFieldNames := 'Codigo';
      DM2.tIndicadores2.Last;
      DM1.tIndicadores.Insert;
      DM1.tIndicadoresCodigo.AsInteger := DM2.tIndicadores2Codigo.AsInteger + 1;
      DM1.tIndicadores.Post;
      DM1.tIndicadores.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfIndicadores.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltIndicadores.AsBoolean then
    begin
      DM1.tIndicadores.IndexFieldNames := 'Codigo';
      DM1.tIndicadores.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfIndicadores.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcAtividade.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tIndicadores.Delete;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfIndicadores.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tIndicadores.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tIndicadores.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfIndicadores.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfIndicadores.BitBtn6Click(Sender: TObject);
begin
  if DM1.tIndicadoresNome.AsString = '' then
    ShowMessage('Falta informar o nome!')
  else
  if DM1.tIndicadoresTipoAnoMes.AsString = '' then
    ShowMessage('Falta informar o tipo!')
  else
    begin
      DM1.tIndicadores.Post;
      Habilita;
      BitBtn2.Tag := 0;
      BitBtn1.SetFocus;
    end;
end;

procedure TfIndicadores.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tIndicadores.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfIndicadores.FormShow(Sender: TObject);
begin
  DM1.tIndicadores.Open;
end;

end.
