unit UMovObjetivoConclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, ExtCtrls, StdCtrls, DBCtrls, Mask, ToolEdit, Buttons,
  RXDBCtrl;

type
  TfMovObjetivoConclusao = class(TForm)
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    DBDateEdit1: TDBDateEdit;
    RxLabel3: TRxLabel;
    DBText3: TDBText;
    RxLabel4: TRxLabel;
    DBText4: TDBText;
    RxLabel5: TRxLabel;
    DBText5: TDBText;
    RxLabel6: TRxLabel;
    DBText6: TDBText;
    RxLabel7: TRxLabel;
    DBText7: TDBText;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    vDataAnt : TDate;
  public
    { Public declarations }
  end;

var
  fMovObjetivoConclusao: TfMovObjetivoConclusao;

implementation

uses UDM1, DB;

{$R *.dfm}

procedure TfMovObjetivoConclusao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tMovObjetivoAcaoItens.Cancel;
  Action := Cafree;
end;

procedure TfMovObjetivoConclusao.BitBtn1Click(Sender: TObject);
var
  iQtdDiasAtraso: Integer;
  dDataPrazo: TDateTime;
begin
  if (DM1.tMovObjetivoAcaoItensDtConclusao.AsDateTime > 0) and
     (vDataAnt <> DM1.tMovObjetivoAcaoItensDtConclusao.AsDateTime) then
    begin
      if (DM1.tMovObjetivoAcaoItensDtConclusao.AsDateTime > 0) and (DM1.tMovObjetivoAcaoItensDtConclusao.AsDateTime < Date) then
        Raise Exception.Create('A data de conclusão não pode ser menor que a data atual do sistema.');

      DM1.tMovObjetivoAcaoItensHrConclusao.AsDateTime := Now;
      dDataPrazo := StrToDateTime(DM1.tMovObjetivoAcaoItensDiaVecto.AsString + '/' + DM1.tMovObjetivoAcaoItensMes.AsString + '/' + DM1.tMovObjetivoAcaoItensAno.AsString);
      iQtdDiasAtraso := Round(DM1.tMovObjetivoAcaoItensDtConclusao.AsDateTime - dDataPrazo);
      if iQtdDiasAtraso > 0 then
        DM1.tMovObjetivoAcaoItensQtdDiasAtraso.AsInteger := iQtdDiasAtraso
      else
        DM1.tMovObjetivoAcaoItensQtdDiasAtraso.AsInteger := 0;
    end
  else
  if (DM1.tMovObjetivoAcaoItensDtConclusao.AsDateTime < 1) then
    begin
      DM1.tMovObjetivoAcaoItensDtConclusao.Clear;
      DM1.tMovObjetivoAcaoItensHrConclusao.Clear;
      DM1.tMovObjetivoAcaoItensQtdDiasAtraso.Clear;
    end;

  if DM1.tMovObjetivoAcaoItens.State in [dsInsert, dsEdit] then
    DM1.tMovObjetivoAcaoItens.Post;

  Close;
end;

procedure TfMovObjetivoConclusao.FormShow(Sender: TObject);
begin
  vDataAnt := DM1.tMovObjetivoAcaoItensDtConclusao.AsDateTime;
  DM1.tMovObjetivoAcaoItens.Edit;
end;

procedure TfMovObjetivoConclusao.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
