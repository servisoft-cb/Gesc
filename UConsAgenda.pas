unit UConsAgenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  DBFilter, SMCVersInfo, EditType, SMBox, Calendar, SMCalendar, Planner,
  DBPlanner, PlannerMonthView, DBPlannerMonthView, PlanDraw, RzTabs,
  SMDBGrid;

type
  TfConsAgenda = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    TabSheet5: TRzTabSheet;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
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
    qConsultaConcluido: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsAgenda: TfConsAgenda;

implementation

uses UDM1, UDM2, UAgendaDig, DateUtils, Math;

{$R *.DFM}

procedure TfConsAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DM1.tAgenda.Close;
      DM1.tAgendaHist.Close;
    end;
  Action := Cafree;
end;

procedure TfConsAgenda.FormShow(Sender: TObject);
begin
  DM1.tAgenda.Open;
  DM1.tAgendaHist.Open;
end;

procedure TfConsAgenda.BitBtn1Click(Sender: TObject);
begin
  qConsulta.Close;
  if (DateEdit2.Date > 1) and (DateEdit3.Date > 1) then
    begin
      qConsulta.Params[0].AsDate := DateEdit2.Date;
      qConsulta.Params[1].AsDate := DateEdit3.Date;
      qConsulta.Open;
    end;
end;

procedure TfConsAgenda.SMDBGrid1DblClick(Sender: TObject);
begin
  if qConsultaDtAgenda.AsDateTime > 0 then
    DM1.tAgenda.Locate('Codigo',qConsultaCodigo.AsInteger,[loCaseInsensitive]);
  Close;
end;

procedure TfConsAgenda.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (qConsulta.Active) and (qConsultaConcluido.AsBoolean) then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end;
end;

end.
