unit UMovObjetivoDiasAcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, Buttons, DB, DBTables, Mask, ToolEdit,
  ExtCtrls, Grids, DBGrids, SMDBGrid, CurrEdit, RxDBComb, DBCtrls,
  JvDBLookupTreeView, ComCtrls, JvDBTreeView, RXCtrls;

type
  TfMovObjetivoDiasAcao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label3: TLabel;
    DBText1: TDBText;
    RxCheckListBox1: TRxCheckListBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMovObjetivoDiasAcao: TfMovObjetivoDiasAcao;

implementation

uses UDM1, UDM2;

{$R *.dfm}

procedure TfMovObjetivoDiasAcao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMovObjetivoDiasAcao.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfMovObjetivoDiasAcao.BitBtn6Click(Sender: TObject);
var
  iCodItem: Integer;
  i: Byte;
begin
{
  if RxDBLookupCombo2.Text = '' then
    Raise Exception.Create('Falta informar o mês!');
}
  if CurrencyEdit1.AsInteger <= 0 then
    Raise Exception.Create('Falta informar o dia de vencimento!');

  for i := 0 to RxCheckListBox1.Items.Count - 1 do
  begin
    if not RxCheckListBox1.Checked[i] then
      Continue;
    if DM1.tMovObjetivoAcaoItens.Locate('Mes;DiaVecto', VarArrayOf([i + 1, CurrencyEdit1.asInteger] ),[loCaseInsensitive]) then
    begin
      ShowMessage('Item já informado!');
      Continue;
    end
    else
    begin
      DM1.tMovObjetivoAcaoItens.Refresh;
      DM1.tMovObjetivoAcaoItens.Last;
      iCodItem := DM1.tMovObjetivoAcaoItensItem.AsInteger + 1;

      DM1.tMovObjetivoAcaoItens.Insert;
      DM1.tMovObjetivoAcaoItensCodObjetivo.AsInteger := DM1.tMovObjetivoCodObjetivo.AsInteger;
      DM1.tMovObjetivoAcaoItensAno.AsInteger         := DM1.tMovObjetivoAno.AsInteger;
      DM1.tMovObjetivoAcaoItensItem.AsInteger        := iCodItem;
      DM1.tMovObjetivoAcaoItensMes.AsInteger         := i + 1;
      DM1.tMovObjetivoAcaoItensDiaVecto.AsInteger    := CurrencyEdit1.AsInteger;
      DM1.tMovObjetivoAcaoItens.Post;
      DM1.tMovObjetivoAcaoItens.Refresh;
    end;
  end;

{  if DM1.tMovObjetivoAcaoItens.Locate('Mes;DiaVecto', VarArrayOf( [RxDBLookupCombo2.KeyValue, CurrencyEdit1.asInteger] ),[loCaseInsensitive]) then
    ShowMessage('Item já informado!')
  else
  begin
    DM1.tMovObjetivoAcaoItens.Refresh;
    DM1.tMovObjetivoAcaoItens.Last;
    iCodItem := DM1.tMovObjetivoAcaoItensItem.AsInteger + 1;

    if dm1.mMesCodMes.AsInteger = 0 then
    begin

    end
    else
    begin
      DM1.tMovObjetivoAcaoItens.Insert;
      DM1.tMovObjetivoAcaoItensCodObjetivo.AsInteger := DM1.tMovObjetivoCodObjetivo.AsInteger;
      DM1.tMovObjetivoAcaoItensAno.AsInteger         := DM1.tMovObjetivoAno.AsInteger;
      DM1.tMovObjetivoAcaoItensItem.AsInteger        := iCodItem;
      DM1.tMovObjetivoAcaoItensMes.AsInteger         := RxDBLookupCombo2.KeyValue;
      DM1.tMovObjetivoAcaoItensDiaVecto.AsInteger    := CurrencyEdit1.AsInteger;
      DM1.tMovObjetivoAcaoItens.Post;
      DM1.tMovObjetivoAcaoItens.Refresh;
    end;
    RxDBLookupCombo2.ClearValue;
    CurrencyEdit1.AsInteger := 0;
    RxDBLookupCombo2.SetFocus;
  end;}
end;

procedure TfMovObjetivoDiasAcao.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Excluir o Item selecionado?',mtconfirmation,[mbok,mbno],0)=mrok then
  begin
    if DM1.tMovObjetivoAcaoItensDtConclusao.AsDateTime > 0 then
      Raise Exception.Create('Este registro não pode ser excluído porque possui data de conclusão.');
    DM1.tMovObjetivoAcaoItens.Delete;
  end;
end;

end.
