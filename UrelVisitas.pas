unit UrelVisitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, StdCtrls;

type
  TfRelVisitas = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel7: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw4: TRLDraw;
    RLDBText7: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLMemo1: TRLMemo;
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelVisitas: TfRelVisitas;

implementation

uses UConsMovProcessoVisita, UDM1, DB;

{$R *.dfm}

procedure TfRelVisitas.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  {if fConsMovProcessoVisitas.tMovProcessoVisitaItem.AsInteger = 0 then
    begin
      RLBand3.Visible      := False;
      RLSubDetail2.Visible := False;
    end;}
end;

procedure TfRelVisitas.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 RLLabel6.Caption := fConsMovProcessoVisitas.CurrencyEdit1.Text;
 RLLabel10.Caption := fConsMovProcessoVisitas.CurrencyEdit3.Text;
 if (fConsMovProcessoVisitas.CurrencyEdit1.Text = '') and (fConsMovProcessoVisitas.CurrencyEdit3.Text = '') then
   begin
     RLLabel6.Caption  := '1';
     RLLabel10.Caption := '12';
   end;
end;
procedure TfRelVisitas.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Text := fConsMovProcessoVisitas.tMovProcessoVisitaObs.AsString;
end;

end.
