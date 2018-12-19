unit uRelResumoAnual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelResumoAnual = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand3: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel2: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelResumoAnual: TfRelResumoAnual;

implementation

uses UDM1;

{$R *.dfm}

end.
