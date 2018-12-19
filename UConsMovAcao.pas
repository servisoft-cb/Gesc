unit UConsMovAcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, DBTables;

type
  TfConsMovAcao = class(TForm)
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    qConsulta: TQuery;
    dsqConsulta: TDataSource;
    qConsultaCodAcao: TIntegerField;
    qConsultaNumMov: TIntegerField;
    qConsultaData: TDateField;
    qConsultaNome: TStringField;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fConsMovAcao: TfConsMovAcao;

implementation

uses UDM1;

{$R *.dfm}

procedure TfConsMovAcao.Monta_SQL;
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add('SELECT Dbmovacao.CodAcao, Dbmovacao.NumMov, Dbmovacao.Data, Dbacao.Nome');
  qConsulta.SQL.Add('FROM "dbMovAcao.db" Dbmovacao');
  qConsulta.SQL.Add(' INNER JOIN "dbAcao.db" Dbacao');
  qConsulta.SQL.Add(' ON  (Dbmovacao.CodAcao = Dbacao.Codigo)');
  qConsulta.SQL.Add('WHERE (0=0)');
  if DateEdit1.Date > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbMovAcao.Data >= :Data1)');
      qConsulta.ParamByName('Data1').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbMovAcao.Data <= :Data2)');
      qConsulta.ParamByName('Data2').AsDate := DateEdit2.Date;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qConsulta.SQL.Add(' AND (dbMovAcao.CodAcao = :CodAcao)');
      qConsulta.ParamByName('CodAcao').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  qConsulta.SQL.Add('ORDER BY dbAcao.Nome, dbMovAcao.Data');
  qConsulta.Open;
end;

procedure TfConsMovAcao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (qConsulta.Active) and (qConsultaNumMov.AsInteger > 0) then
    DM1.tMovAcao.Locate('NumMov',qConsultaNumMov.AsInteger,[loCaseInsensitive]);
  qConsulta.Close;
  Action := Cafree;
end;

procedure TfConsMovAcao.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsMovAcao.BitBtn2Click(Sender: TObject);
begin
  Monta_SQL;
end;

procedure TfConsMovAcao.SMDBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TfConsMovAcao.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tAcao.IndexFieldNames := 'Nome';
end;

end.
