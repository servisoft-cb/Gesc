unit UMovAcao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid;

type
  TfMovAcao = class(TForm)
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
    Label5: TLabel;
    RxDBComboBox1: TRxDBComboBox;
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
  private
    { Private declarations }
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fMovAcao: TfMovAcao;

implementation

uses UDM1, UDM2, UConsMovAcao;
                      
{$R *.DFM}

procedure TfMovAcao.Habilita;
begin
  Panel3.Enabled            := not(Panel3.Enabled);
  Bitbtn1.Enabled           := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled           := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled           := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled           := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled           := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled           := not(Bitbtn6.Enabled);
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
end;

procedure TfMovAcao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DM1.tAcao.Close;
      DM1.tMovAcao.Close;
    end;
  Action := Cafree;
end;

procedure TfMovAcao.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsMovAcao.AsBoolean then
    begin
      DM1.tMovAcao.Refresh;
      DM1.tMovAcao.IndexFieldNames  := 'NumMov';
      DM2.tMovAcao2.Refresh;
      DM2.tMovAcao2.IndexFieldNames := 'NumMov';
      DM2.tMovAcao2.Last;
      DM1.tMovAcao.Insert;
      DM1.tMovAcaoNumMov.AsInteger := DM2.tMovAcao2NumMov.AsInteger + 1;
      DM1.tMovAcao.Post;
      DM1.tMovAcao.Edit;
      Habilita;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfMovAcao.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltMovAcao.AsBoolean then
    begin
      DM1.tMovAcao.IndexFieldNames := 'NumMov';
      DM1.tMovAcao.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfMovAcao.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcMovAcao.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tMovAcao.Delete;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfMovAcao.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tMovAcao.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tMovAcao.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfMovAcao.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfMovAcao.BitBtn6Click(Sender: TObject);
begin
  if DM1.tMovAcaoCodAcao.AsInteger <= 0 then
    ShowMessage('Falta informar a ação!')
  else
  if DM1.tMovAcaoData.AsDateTime <= 0 then
    ShowMessage('Falta informar a data!')
  else
    begin
      DM1.tMovAcao.Post;
      Habilita;
      BitBtn2.Tag := 0;
      BitBtn1.SetFocus;
    end;
end;

procedure TfMovAcao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tMovAcao.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfMovAcao.FormShow(Sender: TObject);
begin
  DM1.tAcao.Open;
  DM1.tMovAcao.Open;
end;

procedure TfMovAcao.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tAcao.IndexFieldNames := 'Nome';
end;

procedure TfMovAcao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tMovAcao.State in [dsBrowse]) then
    begin
      fConsMovAcao := TfConsMovAcao.Create(Self);
      fConsMovAcao.ShowModal;
    end;
end;

end.
