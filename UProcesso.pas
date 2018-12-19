unit UProcesso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid;

type
  TfProcesso = class(TForm)
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
    RxDBComboBox1: TRxDBComboBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
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
  fProcesso: TfProcesso;

implementation

uses UDM1, UDM2;
                      
{$R *.DFM}

procedure TfProcesso.Habilita;
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

procedure TfProcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    DM1.tProcesso.Close;
  Action := Cafree;
end;

procedure TfProcesso.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsProcesso.AsBoolean then
    begin
      DM1.tProcesso.Refresh;
      DM1.tProcesso.IndexFieldNames := 'Codigo';
      DM2.tProcesso2.Refresh;
      DM2.tProcesso2.IndexFieldNames := 'Codigo';
      DM2.tProcesso2.Last;
      DM1.tProcesso.Insert;
      DM1.tProcessoCodigo.AsInteger := DM2.tProcesso2Codigo.AsInteger + 1;
      DM1.tProcesso.Post;
      DM1.tProcesso.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfProcesso.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltProcesso.AsBoolean then
    begin
      DM1.tProcesso.IndexFieldNames := 'Codigo';
      DM1.tProcesso.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfProcesso.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcProcesso.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tProcesso.Delete;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfProcesso.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    begin
      DM1.tProcesso.Delete;
    end
  else
  if BitBtn2.Tag = 1 then
    DM1.tProcesso.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfProcesso.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfProcesso.BitBtn6Click(Sender: TObject);
begin
  if DM1.tProcessoNome.AsString = '' then
    ShowMessage('Falta informar o nome!')
  else
    begin
      DM1.tProcesso.Post;
      Habilita;
      BitBtn2.Tag := 0;
      BitBtn1.SetFocus;
    end;
end;

procedure TfProcesso.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tProcesso.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfProcesso.FormShow(Sender: TObject);
begin
  DM1.tProcesso.Open;
end;

procedure TfProcesso.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProcesso.IndexFieldNames := 'Nome';
end;

end.
