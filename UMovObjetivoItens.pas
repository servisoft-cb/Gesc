unit UMovObjetivoItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, Buttons, DB, DBTables, Mask, ToolEdit,
  ExtCtrls, Grids, DBGrids, SMDBGrid, CurrEdit, RxDBComb;

type
  TfMovObjetivoItens = class(TForm)
    Panel1: TPanel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    Label4: TLabel;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMovObjetivoItens: TfMovObjetivoItens;

implementation

uses UDM1, UDM2, UMovObjetivoDiasAcao, UAcao;

{$R *.dfm}

procedure TfMovObjetivoItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMovObjetivoItens.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfMovObjetivoItens.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
    Raise Exception.Create('Falta informar a ação!');

  if ComboBox1.ItemIndex < 0 then
    Raise Exception.Create('Falta informar a correlação!');

  if DM1.tMovObjetivoAcao.Locate('CodAcao',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]) then
    Raise Exception.Create('Ação já informada!');

  DM1.tMovObjetivoAcao.Insert;
  DM1.tMovObjetivoAcaoAno.AsInteger         := DM1.tMovObjetivoAno.AsInteger;
  DM1.tMovObjetivoAcaoCodObjetivo.AsInteger := DM1.tMovObjetivoCodObjetivo.AsInteger;
  DM1.tMovObjetivoAcaoCodAcao.AsInteger     := RxDBLookupCombo1.KeyValue;
  DM1.tMovObjetivoAcaoValor.AsFloat         := CurrencyEdit1.Value;
  DM1.tMovObjetivoAcaoComo.AsString         := Edit1.Text;
  case ComboBox1.ItemIndex of
    0 : DM1.tMovObjetivoAcaoCorrelacao.AsString := 'FOR';
    1 : DM1.tMovObjetivoAcaoCorrelacao.AsString := 'MED';
    2 : DM1.tMovObjetivoAcaoCorrelacao.AsString := 'FRA';
    3 : DM1.tMovObjetivoAcaoCorrelacao.AsString := 'NUL';
  end;
  DM1.tMovObjetivoAcao.Post;

  RxDBLookupCombo1.ClearValue;
  CurrencyEdit1.Clear;
  Edit1.Clear;
  
  fMovObjetivoDiasAcao := TfMovObjetivoDiasAcao.Create(Self);
  fMovObjetivoDiasAcao.ShowModal;

end;

procedure TfMovObjetivoItens.FormShow(Sender: TObject);
begin
  if not Panel1.Enabled then
    RxDBLookupCombo1.KeyValue := DM1.tMovObjetivoAcaoCodAcao.AsInteger;
end;

procedure TfMovObjetivoItens.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tAcao.IndexFieldNames := 'Nome';
end;

procedure TfMovObjetivoItens.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioAcao.AsBoolean then
    begin
      fAcao := TfAcao.Create(Self);
      fAcao.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

end.
