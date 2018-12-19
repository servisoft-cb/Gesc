unit URelIdeias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelIdeias = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLBand2: TRLBand;
    RLLabel6: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    RLLabel7: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDraw3: TRLDraw;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLDraw4: TRLDraw;
    RLBand5: TRLBand;
    RLLabel9: TRLLabel;
    RLDBMemo3: TRLDBMemo;
    RLDraw5: TRLDraw;
    RLBand6: TRLBand;
    RLLabel10: TRLLabel;
    RLDBMemo4: TRLDBMemo;
    RLDraw6: TRLDraw;
    RLLabel11: TRLLabel;
    RLDBText4: TRLDBText;
    RLBand8: TRLBand;
    RLLabel4: TRLLabel;
    RLDBMemo5: TRLDBMemo;
    RLDraw1: TRLDraw;
    RLLabel5: TRLLabel;
    RLDBMemo6: TRLDBMemo;
    RLBand9: TRLBand;
    RLLabel24: TRLLabel;
    RLDBMemo7: TRLDBMemo;
    RLDraw7: TRLDraw;
    RLLabel26: TRLLabel;
    RLDBMemo9: TRLDBMemo;
    RLDraw8: TRLDraw;
    RLLabel25: TRLLabel;
    RLLabel27: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLBand7: TRLBand;
    RLLabel12: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelIdeias: TfRelIdeias;

implementation

uses UDM1, UFato, UIdeias;

{$R *.dfm}

procedure TfRelIdeias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelIdeias.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel25.Visible := (fIdeias.qConsultaAprovada.AsString = 'S');
  RLLabel28.Visible := (fIdeias.qConsultaAprovada.AsString = 'N');
end;

end.
