unit UAgendaDig;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  DBFilter, SMCVersInfo, EditType, SMBox, Calendar, SMCalendar, Planner,
  DBPlanner, PlannerMonthView, DBPlannerMonthView, PlanDraw, RzTabs,
  SMDBAcc, RzEdit, RzDBEdit;

type
  TfAgendaDig = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
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
    Label32: TLabel;
    DBDateEdit2: TDBDateEdit;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn8: TBitBtn;
    Label3: TLabel;
    DBText3: TDBText;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    DBMemo1: TDBMemo;
    TabSheet2: TRzTabSheet;
    DBMemo2: TDBMemo;
    TabSheet3: TRzTabSheet;
    DBMemo3: TDBMemo;
    TabSheet4: TRzTabSheet;
    DBMemo4: TDBMemo;
    TabSheet5: TRzTabSheet;
    Label1: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    StaticText1: TStaticText;
    Label6: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Habilita;
    procedure Exclui_Agenda;
  public
    { Public declarations }
    vDataSel : TDate;
  end;

var
  fAgendaDig: TfAgendaDig;

implementation

uses UDM1, UDM2, UReagendamento, UConsAgenda;

{$R *.DFM}

procedure TfAgendaDig.Exclui_Agenda;
begin
  DM1.tAgendaHist.First;
  while not DM1.tAgendaHist.Eof do
    DM1.tAgendaHist.Delete;
  DM1.tAgenda.Delete;
end;

procedure TfAgendaDig.Habilita;
begin
  Panel3.Enabled            := not(Panel3.Enabled);
  Bitbtn1.Enabled           := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled           := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled           := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled           := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled           := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled           := not(Bitbtn6.Enabled);
  Bitbtn7.Enabled           := not(Bitbtn7.Enabled);
  Bitbtn8.Enabled           := not(Bitbtn8.Enabled);
  DBMemo1.ReadOnly          := not(DBMemo1.ReadOnly);
  DBMemo2.ReadOnly          := not(DBMemo2.ReadOnly);
  DBMemo3.ReadOnly          := not(DBMemo3.ReadOnly);
  DBMemo4.ReadOnly          := not(DBMemo4.ReadOnly);
end;

procedure TfAgendaDig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfAgendaDig.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsAgenda.AsBoolean then
    begin
      DBDateEdit2.ReadOnly := False;
      DM1.tAgenda.Refresh;
      DM1.tAgenda.IndexFieldNames := 'Codigo';
      DM2.tAgenda2.Refresh;
      DM2.tAgenda2.IndexFieldNames := 'Codigo';
      DM2.tAgenda2.Last;
      DM1.tAgenda.Insert;
      DM1.tAgendaCodigo.AsInteger    := DM2.tAgenda2Codigo.AsInteger + 1;
      DM1.tAgendaDtAgenda.AsDateTime := vDataSel;
      DM1.tAgenda.Post;
      DM1.tAgenda.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfAgendaDig.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltAgenda.AsBoolean then
    begin
      DM1.tAgenda.IndexFieldNames := 'Codigo';
      DM1.tAgenda.Edit;
      DBDateEdit2.ReadOnly := not(DM1.tUsuarioAdministrador.AsBoolean);
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfAgendaDig.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcAgenda.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        Exclui_Agenda;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfAgendaDig.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    Exclui_Agenda
  else
  if BitBtn2.Tag = 1 then
    DM1.tAgenda.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfAgendaDig.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfAgendaDig.BitBtn6Click(Sender: TObject);
begin
  if (DM1.tAgendaDtAgenda.AsDateTime < 1) or (DM1.tAgendaHrAgenda.IsNull) then
    begin
      ShowMessage('Falta informar a data ou a hora!');
      exit;
    end;

  DM1.tAgenda.Post;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfAgendaDig.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tAgenda.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfAgendaDig.BitBtn7Click(Sender: TObject);
var
  vCodigo : Integer;
begin
  if DM1.tAgendaCodigo.AsInteger > 0 then
    begin
      vCodigo := DM1.tAgendaCodigo.AsInteger;
      fReagendamento := TfReagendamento.Create(Self);
      fReagendamento.ShowModal;
      DM1.tAgenda.Locate('Codigo',vCodigo,[loCaseInsensitive]);
    end;
end;

procedure TfAgendaDig.BitBtn8Click(Sender: TObject);
var
  vTexto : String;
begin
  if DM1.tAgendaConcluido.AsBoolean then
    vTexto := 'Marcar pendente'
  else
    vTexto := 'Marcar concluido';
  if MessageDlg(vTexto+'?',mtconfirmation,[mbok,mbno],0)=mrok then
    begin
      DM1.tAgenda.Edit;
      DM1.tAgendaConcluido.AsBoolean := not(DM1.tAgendaConcluido.AsBoolean);
      DM1.tAgenda.Post;
    end;
end;

procedure TfAgendaDig.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tAgenda.State in [dsBrowse]) then
    begin
      fConsAgenda := TfConsAgenda.Create(Self);
      fConsAgenda.ShowModal;
    end;
end;

end.
