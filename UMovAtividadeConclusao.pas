unit UMovAtividadeConclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, ExtCtrls, StdCtrls, DBCtrls, Mask, ToolEdit, Buttons,
  RXDBCtrl;

type
  TfMovAtividadeConclusao = class(TForm)
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    Label12: TLabel;
    DBDateEdit1: TDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMovAtividadeConclusao: TfMovAtividadeConclusao;

implementation

uses UDM1, DB;

{$R *.dfm}

procedure TfMovAtividadeConclusao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMovAtividadeConclusao.BitBtn1Click(Sender: TObject);
var
  iQtdDiasAtraso: Integer;
begin

  if (DM1.tMovAtividadeDtConclusao.AsDateTime > 0) and (DM1.tMovAtividadeDtConclusao.AsDateTime < Date) then
    Raise Exception.Create('A data de conclusão não pode ser menor que a data atual do sistema.'); 

  if DM1.tMovAtividadeDtConclusao.AsDateTime > 0 then
  begin
    DM1.tMovAtividadeHrConclusao.AsDateTime := Now;
    iQtdDiasAtraso := Round(DM1.tMovAtividadeDtConclusao.AsDateTime - DM1.tMovAtividadeDtPrazo.AsDateTime);
    if iQtdDiasAtraso > 0 then
      DM1.tMovAtividadeQtdDiasAtraso.AsInteger := iQtdDiasAtraso
    else
      DM1.tMovAtividadeQtdDiasAtraso.AsInteger := 0;
  end
  else
  begin
    DM1.tMovAtividadeDtConclusao.Clear;
    DM1.tMovAtividadeObs.Clear;
    DM1.tMovAtividadeHrConclusao.Clear;
    DM1.tMovAtividadeQtdDiasAtraso.Clear;
  end;

  if DM1.tMovAtividade.State in [dsInsert, dsEdit] then
    DM1.tMovAtividade.Post;

  Close;
end;

procedure TfMovAtividadeConclusao.FormShow(Sender: TObject);
begin
  DM1.tMovAtividade.Edit;
end;

end.
