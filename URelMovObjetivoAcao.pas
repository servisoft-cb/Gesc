unit URelMovObjetivoAcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelMovObjetivoAcao = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDraw7: TRLDraw;
    RLDBText4: TRLDBText;
    RLDraw6: TRLDraw;
    RLDraw5: TRLDraw;
    RLDBText3: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText5: TRLDBText;
    RLDraw8: TRLDraw;
    RLDBText15: TRLDBText;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw9: TRLDraw;
    RLDBText6: TRLDBText;
    RLDraw10: TRLDraw;
    RLDBText7: TRLDBText;
    RLDraw11: TRLDraw;
    RLDBText8: TRLDBText;
    RLDraw12: TRLDraw;
    RLDBText9: TRLDBText;
    RLDraw13: TRLDraw;
    RLDBText10: TRLDBText;
    RLDraw14: TRLDraw;
    RLDBText11: TRLDBText;
    RLDraw15: TRLDraw;
    RLDBText12: TRLDBText;
    RLDraw16: TRLDraw;
    RLDBText13: TRLDBText;
    RLDraw17: TRLDraw;
    RLDBText14: TRLDBText;
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
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw76: TRLDraw;
    RLDraw77: TRLDraw;
    RLDBText16: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText18: TRLDBText;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    FGrupoObjetivo: String;
    FGrupoPagina: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelMovObjetivoAcao: TfRelMovObjetivoAcao;

implementation

uses UConsMovObjetivo, DB;

{$R *.dfm}

procedure TfRelMovObjetivoAcao.RLBand3BeforePrint(Sender: TObject;
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
  DefineCor(RLDBText9);
  DefineCor(RLDBText10);
  DefineCor(RLDBText11);
  DefineCor(RLDBText12);
  DefineCor(RLDBText13);
  DefineCor(RLDBText14);
end;

procedure TfRelMovObjetivoAcao.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if FGrupoObjetivo <> RLDBText2.Field.AsString then
  begin
    FGrupoObjetivo := RLDBText2.Field.AsString;
    RLLabel2.Visible  := True;
    RLDBText2.Visible := True;
  end
  else
  begin
    RLLabel2.Visible  := False;
    RLDBText2.Visible := False;
  end;

  if FGrupoPagina <> RLReport1.PageNumber then
  begin
    FGrupoPagina := RLReport1.PageNumber;
    RLLabel3.Visible := True;
    RLDraw1.Visible := True;
    RLLabel4.Visible := True;
    RLDraw2.Visible := True;
    RLLabel5.Visible := True;
    RLDraw3.Visible := True;
    RLLabel6.Visible := True;
    RLDraw4.Visible := True;
  end
  else
  begin
    RLLabel3.Visible := False;
    RLDraw1.Visible := False;
    RLLabel4.Visible := False;
    RLDraw2.Visible := False;
    RLLabel5.Visible := False;
    RLDraw3.Visible := False;
    RLLabel6.Visible := False;
    RLDraw4.Visible := False;
  end;

end;

end.
