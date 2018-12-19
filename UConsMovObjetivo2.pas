unit UConsMovObjetivo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, Buttons, Grids,
  DBGrids, SMDBGrid, DB, DBTables, DBCtrls;

type
  TfConsMovObjetivo2 = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    qPerspectiva: TQuery;
    qPerspectivaCodPerspectiva: TIntegerField;
    qPerspectivaAno: TIntegerField;
    qPerspectivaNumMov: TIntegerField;
    qPerspectivaCodObjetivo: TIntegerField;
    qPerspectivaNomePerspectiva: TStringField;
    qPerspectivaEstrategia: TStringField;
    qPerspectivaNomeObjetivo: TStringField;
    dsqPerspectiva: TDataSource;
    SMDBGrid3: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    DBMemo1: TDBMemo;
    tMovObjetivoAcao: TTable;
    dsMovObjetivoAcao: TDataSource;
    tMovObjetivoAcaoNumMov: TIntegerField;
    tMovObjetivoAcaoCodAcao: TIntegerField;
    tMovObjetivoAcaoAno: TIntegerField;
    tMovObjetivoAcaoCodObjetivo: TIntegerField;
    tMovObjetivoAcaoObs: TMemoField;
    tMovObjetivoAcaolkAcao: TStringField;
    tMovObjetivoAcaoItens: TTable;
    tMovObjetivoAcaoItensNumMov: TIntegerField;
    tMovObjetivoAcaoItensCodAcao: TIntegerField;
    tMovObjetivoAcaoItensItem: TIntegerField;
    tMovObjetivoAcaoItensAno: TIntegerField;
    tMovObjetivoAcaoItensCodObjetivo: TIntegerField;
    tMovObjetivoAcaoItensMes: TIntegerField;
    tMovObjetivoAcaoItensDiaVecto: TIntegerField;
    tMovObjetivoAcaoItensDtConclusao: TDateField;
    tMovObjetivoAcaoItensHrConclusao: TTimeField;
    tMovObjetivoAcaoItensQtdDiasAtraso: TIntegerField;
    tMovObjetivoAcaoItensVlrRealizado: TFloatField;
    dsMovObjetivoAcaoItens: TDataSource;
    tMovObjetivoAcaoItensclMes: TStringField;
    BitBtn2: TBitBtn;
    tMovObjetivoAcaoComo: TStringField;
    tMovObjetivoAcaoValor: TFloatField;
    tMovObjetivoAcaoCorrelacao: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tMovObjetivoAcaoItensCalcFields(DataSet: TDataSet);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_qPerspectiva;
  public
    { Public declarations }
  end;

var
  fConsMovObjetivo2: TfConsMovObjetivo2;

implementation

uses UDM1, UDM2;

{$R *.dfm}

procedure TfConsMovObjetivo2.Monta_qPerspectiva;
begin
  qPerspectiva.Close;
  qPerspectiva.SQL.Clear;
  qPerspectiva.SQL.Add('SELECT Dbmovobjetivo.CodPerspectiva, Dbmovobjetivo.Ano, Dbmovobjetivo.NumMov, Dbmovobjetivo.CodObjetivo, Dbperspectiva.Nome NomePerspectiva, Dbmovobjetivo.Estrategia, Dbobjetivo.Nome NomeObjetivo');
  qPerspectiva.SQL.Add('FROM "dbMovObjetivo.DB" Dbmovobjetivo');
  qPerspectiva.SQL.Add('   INNER JOIN "dbPerspectiva.db" Dbperspectiva');
  qPerspectiva.SQL.Add('   ON  (Dbmovobjetivo.CodPerspectiva = Dbperspectiva.Codigo)');
  qPerspectiva.SQL.Add('   INNER JOIN "dbObjetivo.db" Dbobjetivo');
  qPerspectiva.SQL.Add('   ON  (Dbmovobjetivo.CodObjetivo = Dbobjetivo.Codigo)');
  qPerspectiva.SQL.Add('WHERE (dbMovObjetivo.CodPerspectiva = :CodPerspectiva) ');
  qPerspectiva.ParamByName('CodPerspectiva').AsInteger := RxDBLookupCombo1.KeyValue;
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qPerspectiva.SQL.Add('  AND (dbMovObjetivo.Ano = :Ano) ');
      qPerspectiva.ParamByName('Ano').AsInteger := CurrencyEdit1.AsInteger;
    end;
  qPerspectiva.SQL.Add('ORDER BY dbPerspectiva.Nome, dbMovObjetivo.Ano, dbObjetivo.Nome');
  qPerspectiva.Open;
end;

procedure TfConsMovObjetivo2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qPerspectiva.Close;
  Action := Cafree;
end;

procedure TfConsMovObjetivo2.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tPerspectiva.IndexFieldNames := 'Nome';
end;

procedure TfConsMovObjetivo2.FormShow(Sender: TObject);
begin
  DM1.tPerspectiva.Open;
end;

procedure TfConsMovObjetivo2.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
    begin
      ShowMessage('É obrigatório informar a perspectiva!');
      exit;
    end;
  Monta_qPerspectiva;
  SMDBGrid2.DataSource := dsMovObjetivoAcaoItens;
  SMDBGrid3.DataSource := dsMovObjetivoAcao;
  DBMemo1.DataSource   := dsMovObjetivoAcao;
end;

procedure TfConsMovObjetivo2.tMovObjetivoAcaoItensCalcFields(
  DataSet: TDataSet);
begin
  case tMovObjetivoAcaoItensMes.AsInteger of
    1 : tMovObjetivoAcaoItensclMes.AsString := 'Jan';
    2 : tMovObjetivoAcaoItensclMes.AsString := 'Fev';
    3 : tMovObjetivoAcaoItensclMes.AsString := 'Mar';
    4 : tMovObjetivoAcaoItensclMes.AsString := 'Abr';
    5 : tMovObjetivoAcaoItensclMes.AsString := 'Mai';
    6 : tMovObjetivoAcaoItensclMes.AsString := 'Jun';
    7 : tMovObjetivoAcaoItensclMes.AsString := 'Jul';
    8 : tMovObjetivoAcaoItensclMes.AsString := 'Ago';
    9 : tMovObjetivoAcaoItensclMes.AsString := 'Set';
   10 : tMovObjetivoAcaoItensclMes.AsString := 'Out';
   11 : tMovObjetivoAcaoItensclMes.AsString := 'Nov';
   12 : tMovObjetivoAcaoItensclMes.AsString := 'Dez';
  end;
end;

procedure TfConsMovObjetivo2.SMDBGrid1DblClick(Sender: TObject);
begin
  if (qPerspectiva.Active) and (qPerspectivaNumMov.AsInteger > 0) then
    begin
      DM1.tMovObjetivo.Locate('NumMov',qPerspectivaNumMov.AsInteger,[loCaseInsensitive]);
      Close;
    end;
end;

procedure TfConsMovObjetivo2.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
