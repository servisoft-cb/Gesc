unit UConsMovProcessoVisita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, DBTables, CurrEdit, DBClient, ExtCtrls, DBFilter, DBCtrls;

type
  TfConsMovProcessoVisitas = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CurrencyEdit2: TCurrencyEdit;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label5: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    qConsulta: TQuery;
    dsqConsulta: TDataSource;
    qConsultaNumMov: TIntegerField;
    qConsultaCodCliente: TIntegerField;
    qConsultaMesRef: TIntegerField;
    qConsultaAnoRef: TIntegerField;
    qConsultaCodigo: TIntegerField;
    qConsultaNome: TStringField;
    SMDBGrid2: TSMDBGrid;
    DBMemo1: TDBMemo;
    BitBtn3: TBitBtn;
    tMovProcessoVisita: TTable;
    tMovProcessoVisitaNumMov: TIntegerField;
    tMovProcessoVisitaItem: TIntegerField;
    tMovProcessoVisitaDtVisita: TDateField;
    tMovProcessoVisitaCodFuncionario: TIntegerField;
    tMovProcessoVisitaObs: TMemoField;
    dsMovProcessoVisita: TDataSource;
    tMovProcessoVisitalkNomeFuncionario: TStringField;
    Panel7: TPanel;
    Panel2: TPanel;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    FSql: String;
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fConsMovProcessoVisitas: TfConsMovProcessoVisitas;

implementation

uses UDM1, URelMovObjetivoAcao, UDM2, URelMovProcesso2,
  DateUtils, UMovProcessoConclusao, UVisitas, UrelVisitas;

{$R *.dfm}

procedure TfConsMovProcessoVisitas.Monta_SQL;
begin

  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add(FSql);

  if CurrencyEdit2.AsInteger > 0 then
    qConsulta.SQL.Add(' and dbmovprocesso_1.AnoRef = ' + CurrencyEdit2.Text )
  else
    Raise Exception.Create('É obrigatório informar o campo ano.');
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbmovprocesso_1.MesRef >= :Mes1)');
      qConsulta.ParamByName('Mes1').AsInteger := CurrencyEdit1.AsInteger ;
    end;
  if CurrencyEdit3.AsInteger > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbmovprocesso_1.MesRef <= :Mes2)');
      qConsulta.ParamByName('Mes2').AsInteger := CurrencyEdit3.AsInteger;
    end;
  qConsulta.SQL.Add('order by dbmovprocesso_1.NumMov, dbmovprocesso_1.AnoRef, dbmovprocesso_1.MesRef ');
  qConsulta.Open;
end;

procedure TfConsMovProcessoVisitas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    DM1.tPessoa.Close;
  qConsulta.Close;
  Dm1.tMovProcessoVisita.Close;
  tMovProcessoVisita.Close;
  Action := caFree;
end;

procedure TfConsMovProcessoVisitas.BitBtn1Click(Sender: TObject);
begin
  DM2.tPessoa2.Close;
  DM1.tMovProcessoVisita.Close;
  tMovProcessoVisita.Close;
  Close;
end;

procedure TfConsMovProcessoVisitas.BitBtn2Click(Sender: TObject);
begin
  Monta_SQL;
  tMovProcessoVisita.Open;
  DM1.tMovProcessoVisita.Open;
  DM2.tPessoa2.Open;
  Panel2.Enabled := True;
end;

procedure TfConsMovProcessoVisitas.FormCreate(Sender: TObject);
begin
  CurrencyEdit2.AsInteger := YearOf(Date);
  if not DM1.tPessoa.Active then
      DM1.tPessoa.Open;
      FSql := qConsulta.SQL.Text;
end;

procedure TfConsMovProcessoVisitas.CurrencyEdit3Exit(Sender: TObject);
begin
  if (CurrencyEdit3.AsInteger > 0) and (CurrencyEdit1.AsInteger > CurrencyEdit3.AsInteger) then
    begin
      ShowMessage('Mês Final não pode ser maior que o Inicial!');
      CurrencyEdit1.SetFocus;
    end;
end;
procedure TfConsMovProcessoVisitas.BitBtn3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  SMDBGrid1.DisableScroll;
  SMDBGrid2.DisableScroll;
  fRelVisitas := TfRelVisitas.Create(Self);
  fRelVisitas.RLReport1.Preview;
  Screen.Cursor   := crDefault;
  fRelVisitas.RLReport1.Free;
  FreeAndNil(fRelVisitas);
  SMDBGrid1.EnableScroll;
  SMDBGrid2.EnableScroll;
end;

procedure TfConsMovProcessoVisitas.BitBtn7Click(Sender: TObject);
begin
  fVisitas := TfVisitas.Create(Self);
  BitBtn7.Tag := 0;
  fVisitas.ShowModal;
end;

procedure TfConsMovProcessoVisitas.BitBtn9Click(Sender: TObject);
begin
  if tMovProcessoVisita.IsEmpty then
    ShowMessage('Não há registro para ser alterado!')
  else
    begin
      BitBtn7.Tag := 1;
      fVisitas                                           := TfVisitas.Create(Self);
      fVisitas.vItem                                     := tMovProcessoVisitaItem.AsInteger;
      fVisitas.DateEdit1.Date                            := tMovProcessoVisitaDtVisita.AsDateTime;
      fVisitas.RxDBLookupCombo1.KeyValue                 := tMovProcessoVisitaCodFuncionario.AsInteger;
      fVisitas.Memo1.Text                                := tMovProcessoVisitaObs.AsString;
      fVisitas.ShowModal;
    end;
end;

procedure TfConsMovProcessoVisitas.SpeedButton3Click(Sender: TObject);
begin
  if not tMovProcessoVisita.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este Item?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
        tMovProcessoVisita.Delete;
    end
  else
    ShowMessage('Não há Itens para Apagar na Ficha!');
end;
end.
