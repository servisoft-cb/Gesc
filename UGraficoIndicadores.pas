unit UGraficoIndicadores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, Buttons,
  ExtCtrls, DB, DBTables, Grids, DBGrids, SMDBGrid, TeEngine, Series,
  TeeProcs, Chart, DbChart;

type
  TfGraficoIndicadores = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label7: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label10: TLabel;
    Label11: TLabel;
    qIndicadores: TQuery;
    dsqIndicadores: TDataSource;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    qIndicadoresAno: TStringField;
    qIndicadoresResumoAnualId: TIntegerField;
    qIndicadoresIndicadorId: TIntegerField;
    qIndicadoresCodigo: TIntegerField;
    qIndicadoresNome: TStringField;
    qIndicadoresResultado: TFloatField;
    qIndicadoresMeta: TFloatField;
    qIndicadoresReferencia: TFloatField;
    Panel2: TPanel;
    DBChart1: TDBChart;
    Series4: TBarSeries;
    Series5: TBarSeries;
    Series6: TBarSeries;
    procedure BitBtn2Click(Sender: TObject);
    procedure CurrencyEdit5Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
      procedure Monta_SQL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGraficoIndicadores: TfGraficoIndicadores;

implementation

uses UDM1, URelGrafico;

{$R *.dfm}

procedure TfGraficoIndicadores.Monta_SQL;
begin
  qIndicadores.Close;
  qIndicadores.SQL.Clear;
  qIndicadores.SQL.Add('SELECT Dbresumoanual.Id, Dbresumoanual.Ano, Dbresumoanualindic.ResumoAnualId, Dbresumoanualindic.IndicadorId, ');
  qIndicadores.SQL.Add(' Dbindicadores.Codigo, Dbindicadores.Nome, Dbresumoanualindic.Resultado, Dbresumoanualindic.Meta, ');
  qIndicadores.SQL.Add(' Dbresumoanualindic.Referencia');
  qIndicadores.SQL.Add('FROM "dbResumoAnual.db" Dbresumoanual');
  qIndicadores.SQL.Add('   INNER JOIN "dbResumoAnualIndic.DB" Dbresumoanualindic');
  qIndicadores.SQL.Add('   ON  (Dbresumoanualindic.ResumoAnualId = Dbresumoanual.Id)');
  qIndicadores.SQL.Add('   INNER JOIN "dbIndicadores.DB" Dbindicadores');
  qIndicadores.SQL.Add('   ON  (Dbresumoanualindic.IndicadorId = Dbindicadores.Codigo)');
  qIndicadores.SQL.Add('WHERE (0=0)');
  if CurrencyEdit4.Text <> '' then
    begin
     qIndicadores.SQL.Add(' AND (dbResumoAnual.Ano >= :Ano1)');
     qIndicadores.ParamByName('Ano1').AsString := CurrencyEdit4.Text ;
    end;
  if CurrencyEdit5.Text <> '' then
    begin
     qIndicadores.SQL.Add(' AND (dbResumoAnual.Ano <= :Ano2)');
     qIndicadores.ParamByName('Ano2').AsString := CurrencyEdit5.Text;
    end;
  if RxDBLookupCombo3.KeyValue > 0 then
     qIndicadores.SQL.Add(' and dbindicadores.Codigo = ' + RxDBLookupCombo3.KeyValue );
  qIndicadores.Open;
end;


procedure TfGraficoIndicadores.BitBtn2Click(Sender: TObject);
begin
  Monta_SQL;
end;

procedure TfGraficoIndicadores.CurrencyEdit5Exit(Sender: TObject);
begin
  Label1.Caption := CurrencyEdit5.Text;
  Label2.Caption := CurrencyEdit5.Text;
end;

procedure TfGraficoIndicadores.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfGraficoIndicadores.BitBtn3Click(Sender: TObject);
begin
  fRelGrafico := TfRelGrafico.Create(Self);
  fRelGrafico.QuickRep1.Preview;
  fRelGrafico.QuickRep1.Free;
end;

procedure TfGraficoIndicadores.FormShow(Sender: TObject);
begin
  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;
end;

end.
