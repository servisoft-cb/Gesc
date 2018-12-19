unit URelGrafico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeeProcs, TeEngine, Chart, DbChart, QRTEE, QuickRpt, ExtCtrls,
  Series, QRCtrls, RLReport;

type
  TfRelGrafico = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRChart1: TQRChart;
    QRDBChart1: TQRDBChart;
    BarSeries4: TBarSeries;
    BarSeries5: TBarSeries;
    BarSeries6: TBarSeries;
    QRLabel1: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelGrafico: TfRelGrafico;

implementation

uses UGraficoIndicadores, RxLookup;

{$R *.dfm}

procedure TfRelGrafico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfRelGrafico.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRLabel1.Caption := fGraficoIndicadores.RxDBLookupCombo3.Text;
end;

end.
