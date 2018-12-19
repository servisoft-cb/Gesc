unit URelMovObjetivoAcao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelMovObjetivoAcao2 = class(TForm)
    RLReport1: TRLReport;
    RLBand5: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
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
    RLDraw62: TRLDraw;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLDraw65: TRLDraw;
    RLDraw66: TRLDraw;
    RLDraw67: TRLDraw;
    RLDraw68: TRLDraw;
    RLDraw69: TRLDraw;
    RLDraw70: TRLDraw;
    RLDraw71: TRLDraw;
    RLDraw72: TRLDraw;
    RLDraw73: TRLDraw;
    RLDraw74: TRLDraw;
    RLDraw75: TRLDraw;
    RLSubDetail3: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText18: TRLDBText;
    RLGroup1: TRLGroup;
    RLBand6: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText17: TRLDBText;
    RLGroup2: TRLGroup;
    RLBand1: TRLBand;
    RLLabel19: TRLLabel;
    RLDBText11: TRLDBText;
    RLGroup3: TRLGroup;
    RLBand7: TRLBand;
    RLLabel20: TRLLabel;
    RLDBText12: TRLDBText;
    RLBand2: TRLBand;
    RLDraw78: TRLDraw;
    RLDraw77: TRLDraw;
    RLDraw76: TRLDraw;
    RLDraw7: TRLDraw;
    RLDBText4: TRLDBText;
    RLDraw6: TRLDraw;
    RLDraw5: TRLDraw;
    RLDBText3: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel16: TRLLabel;
    RLMes: TRLLabel;
    RLDia1: TRLLabel;
    RLDia2: TRLLabel;
    RLDraw79: TRLDraw;
    RLDia3: TRLLabel;
    RLDraw19: TRLDraw;
    RLDia4: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw13: TRLDraw;
    RLDBText2: TRLDBText;
    RLDraw14: TRLDraw;
    RLLabel14: TRLLabel;
    RLDraw15: TRLDraw;
    RLDBText9: TRLDBText;
    RLDraw16: TRLDraw;
    RLLabel15: TRLLabel;
    RLDraw17: TRLDraw;
    RLDBText10: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand3: TRLBand;
    RLDraw18: TRLDraw;
    RLDraw8: TRLDraw;
    RLDBText5: TRLDBText;
    RLDBText15: TRLDBText;
    RLDraw9: TRLDraw;
    RLDBText6: TRLDBText;
    RLDraw10: TRLDraw;
    RLDBText7: TRLDBText;
    RLDraw11: TRLDraw;
    RLDBText8: TRLDBText;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    FGrupoObjetivo: String;
    FGrupoPagina: Integer;
    vCor : TColor;
    procedure DefineCor2(Campo : String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelMovObjetivoAcao2: TfRelMovObjetivoAcao2;

implementation

uses UConsMovObjetivo, DB;

{$R *.dfm}

procedure TfRelMovObjetivoAcao2.DefineCor2(Campo : String);
begin
  if Copy(Campo,4,1) = 'A' then
    vCor := clRed
  else
  if Copy(Campo,4,1) = 'D' then
    vCor := clGreen
  else
    vCor := clWhite;
end;

procedure TfRelMovObjetivoAcao2.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  procedure DefineCor(Comp: TRLDBText);
  begin
    if Copy(Comp.Field.AsString,4,1) = 'A' then
      Comp.Color := clRed
    else
      if Copy(Comp.Field.AsString,4,1) = 'D' then
        Comp.Color := clGreen
      else
        Comp.Color := clWhite;
  end;
begin
  DefineCor(RLDBText5);
  DefineCor(RLDBText6);
  DefineCor(RLDBText7);
  DefineCor(RLDBText8);
end;

procedure TfRelMovObjetivoAcao2.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
begin
  RLMes.Caption := '';
  for i := 1 to 4 do
    TRLLabel(FindComponent('RLDia' + IntToStr(i))).Caption := '';
  fConsMovObjetivo.mCronograma.First;
  if fConsMovObjetivo.mCronograma.RecordCount > 0 then
    begin
      RLMes.Caption  := fConsMovObjetivo.mCronogramaMes.AsString;
      RLDia1.Caption := fConsMovObjetivo.mCronogramaDia1.AsString;
      DefineCor2(RLDia1.Caption);
      RLDia1.Color := vCor;
      RLDia2.Caption := fConsMovObjetivo.mCronogramaDia2.AsString;
      DefineCor2(RLDia2.Caption);
      RLDia2.Color := vCor;
      RLDia3.Caption := fConsMovObjetivo.mCronogramaDia3.AsString;
      DefineCor2(RLDia3.Caption);
      RLDia3.Color := vCor;
      RLDia4.Caption := fConsMovObjetivo.mCronogramaDia4.AsString;
      DefineCor2(RLDia4.Caption);
      RLDia4.Color := vCor;
      fConsMovObjetivo.mCronograma.Delete;
    end;
  if fConsMovObjetivo.mObjetivoAcaoCorrelacao.AsString = 'FOR' then
    RLDraw6.Brush.Color := clGreen
  else
  if fConsMovObjetivo.mObjetivoAcaoCorrelacao.AsString = 'MED' then
    RLDraw6.Brush.Color := clBlue
  else
  if fConsMovObjetivo.mObjetivoAcaoCorrelacao.AsString = 'FRA' then
    RLDraw6.Brush.Color := clYellow;
end;

end.
