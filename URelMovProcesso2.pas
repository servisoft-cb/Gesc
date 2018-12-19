unit URelMovProcesso2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelMovProcesso2 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText4: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel12: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel13: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel14: TRLLabel;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDBText5: TRLDBText;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDBText6: TRLDBText;
    RLDraw20: TRLDraw;
    RLDBText7: TRLDBText;
    RLDraw21: TRLDraw;
    RLDBText8: TRLDBText;
    RLDraw22: TRLDraw;
    RLDBText9: TRLDBText;
    RLDraw23: TRLDraw;
    RLDBText10: TRLDBText;
    RLDraw24: TRLDraw;
    RLDBText11: TRLDBText;
    RLDraw25: TRLDraw;
    RLDBText12: TRLDBText;
    RLDraw26: TRLDraw;
    RLDBText13: TRLDBText;
    RLDraw27: TRLDraw;
    RLDBText14: TRLDBText;
    RLDraw28: TRLDraw;
    RLDBText15: TRLDBText;
    RLDraw29: TRLDraw;
    RLDBText16: TRLDBText;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLBand5: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw48: TRLDraw;
    RLDraw49: TRLDraw;
    RLDraw50: TRLDraw;
    RLDraw51: TRLDraw;
    RLDraw52: TRLDraw;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLDraw57: TRLDraw;
    RLDraw58: TRLDraw;
    RLDraw59: TRLDraw;
    RLDraw60: TRLDraw;
    RLDraw61: TRLDraw;
    RLLabel18: TRLLabel;
    RLDBText17: TRLDBText;
    RLBand6: TRLBand;
    RLDraw62: TRLDraw;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLDraw65: TRLDraw;
    RLDraw66: TRLDraw;
    RLDraw69: TRLDraw;
    RLDraw70: TRLDraw;
    RLDraw73: TRLDraw;
    RLDraw74: TRLDraw;
    RLDraw76: TRLDraw;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBText18: TRLDBText;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelMovProcesso2: TfRelMovProcesso2;

implementation

uses UConsMovProcesso, UDM1;

{$R *.dfm}

procedure TfRelMovProcesso2.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);

  procedure DefineCor(Comp: TRLDBText);
  begin

    if VarIsNull(Comp.Field.Value) then
      Comp.Color := clWhite
    else
      if Comp.Field.AsFloat = 100 then
        Comp.Color := clGreen
      else
        if (Comp.Field.AsFloat >= 95) and (Comp.Field.AsFloat < 100) then
          Comp.Color := clYellow
        else
          if Comp.Field.AsFloat < 95 then
            Comp.Color := clRed;

  end;

begin
  DefineCor(RLDBText4);
  DefineCor(RLDBText6);
  DefineCor(RLDBText7);
  DefineCor(RLDBText8);
  DefineCor(RLDBText9);
  DefineCor(RLDBText10);
  DefineCor(RLDBText11);
  DefineCor(RLDBText12);
  DefineCor(RLDBText13);
  DefineCor(RLDBText14);
  DefineCor(RLDBText15);
  DefineCor(RLDBText16);
end;

end.
