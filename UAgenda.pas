unit UAgenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  DBFilter, SMCVersInfo, EditType, SMBox, Calendar, SMCalendar, Planner,
  DBPlanner, PlannerMonthView, DBPlannerMonthView, PlanDraw, RzTabs,
  SMDBGrid, RzDBGrid;

type
  TfAgenda = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    DBPlannerMonthView1: TDBPlannerMonthView;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    qConsulta: TQuery;
    qConsultaCodigo: TIntegerField;
    qConsultaDtAgenda: TDateField;
    qConsultaObs: TMemoField;
    qConsultaPauta: TMemoField;
    qConsultaDecises: TMemoField;
    qConsultaPendncias: TMemoField;
    qConsultaNomePessoa: TStringField;
    qConsultaUsuario: TStringField;
    qConsultaDtCadastro: TDateField;
    qConsultaHrCadastro: TTimeField;
    dsConsulta: TDataSource;
    Shape1: TShape;
    Label5: TLabel;
    RxDBFilter1: TRxDBFilter;
    tAgenda: TTable;
    tAgendaCodigo: TIntegerField;
    tAgendaDtAgenda: TDateField;
    tAgendaObs: TMemoField;
    tAgendaPauta: TMemoField;
    tAgendaDecises: TMemoField;
    tAgendaPendncias: TMemoField;
    tAgendaNomePessoa: TStringField;
    tAgendaUsuario: TStringField;
    tAgendaDtCadastro: TDateField;
    tAgendaHrCadastro: TTimeField;
    tAgendaConcluido: TBooleanField;
    dsAgenda: TDataSource;
    Label1: TLabel;
    qConsultaHrAgenda: TTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure DBPlannerMonthView1DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure DBPlannerMonthView1GetDayProp(Sender: TObject;
      Date: TDateTime; var Caption: String; CaptionBrush: TBrush;
      AFont: TFont; var BKColor, BKColorTo: TColor);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAgenda: TfAgenda;

implementation

uses UDM1, UDM2, UAgendaDig, DateUtils, Math;

{$R *.DFM}

procedure TfAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DM1.tAgenda.Close;
      DM1.tAgendaHist.Close;
    end;
  Action := Cafree;
end;

procedure TfAgenda.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tPessoa.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfAgenda.FormShow(Sender: TObject);
begin
  DM1.tAgenda.Open;
  DM1.tAgendaHist.Open;
  DBPlannerMonthView1.Day   := DayOf(Date);
  DBPlannerMonthView1.Month := MonthOf(Date);
  DBPlannerMonthView1.Year  := YearOf(Date);
end;

procedure TfAgenda.DBPlannerMonthView1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  qConsulta.Close;
  DateEdit2.Date := SelDate;
  DateEdit3.Date := SelDate;
  if tAgenda.Locate('DtAgenda',SelDate,[loCaseInsensitive]) then
    BitBtn1Click(Sender);
end;

procedure TfAgenda.DBPlannerMonthView1GetDayProp(Sender: TObject;
  Date: TDateTime; var Caption: String; CaptionBrush: TBrush; AFont: TFont;
  var BKColor, BKColorTo: TColor);
begin
  if (tAgenda.Locate('DtAgenda',Date,[loCaseInsensitive])) then
    BKColor := clAqua;
end;

procedure TfAgenda.BitBtn1Click(Sender: TObject);
begin
  qConsulta.Close;
  if (DateEdit2.Date > 1) and (DateEdit3.Date > 1) then
    begin
      qConsulta.Params[0].AsDate := DateEdit2.Date;
      qConsulta.Params[1].AsDate := DateEdit3.Date;
      qConsulta.Open;
    end;
end;

procedure TfAgenda.SMDBGrid1DblClick(Sender: TObject);
begin
  if DM1.tUsuarioAgenda.AsBoolean then
    begin
      fAgendaDig          := TfAgendaDig.Create(Self);
      if qConsulta.Active then
        fAgendaDig.vDataSel := qConsultaDtAgenda.AsDateTime
      else
        fAgendaDig.vDataSel := Date;
      DM1.tAgenda.Locate('Codigo',qConsultaCodigo.AsInteger,[loCaseInsensitive]);
      fAgendaDig.ShowModal;
      tAgenda.Refresh;
    end;
end;

procedure TfAgenda.SMDBGrid1Enter(Sender: TObject);
begin
  qConsulta.Tag := 0;
  if qConsulta.Active then
    qConsulta.Last;
end;

end.
