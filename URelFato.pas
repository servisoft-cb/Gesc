unit URelFato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelFato = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw1: TRLDraw;
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
    RLBand7: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLD1: TRLDraw;
    RLLabel14: TRLLabel;
    RLD2: TRLDraw;
    RLLabel15: TRLLabel;
    RLD3: TRLDraw;
    RLLabel16: TRLLabel;
    RLD4: TRLDraw;
    RLLabel17: TRLLabel;
    RLD5: TRLDraw;
    RLLabel18: TRLLabel;
    RLD6: TRLDraw;
    RLLabel19: TRLLabel;
    RLD7: TRLDraw;
    RLLabel20: TRLLabel;
    RLD8: TRLDraw;
    RLLabel21: TRLLabel;
    RLD9: TRLDraw;
    RLLabel22: TRLLabel;
    RLD10: TRLDraw;
    RLLabel23: TRLLabel;
    RLBand8: TRLBand;
    RLLabel24: TRLLabel;
    RLDBMemo5: TRLDBMemo;
    RLDraw7: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelFato: TfRelFato;

implementation

uses UDM1, UFato;

{$R *.dfm}

procedure TfRelFato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFato.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  TRLDraw(FindComponent('RLD' + fFato.qConsultaTipoSatisfacao.AsString)).Brush.Color := clGray;
end;

end.
