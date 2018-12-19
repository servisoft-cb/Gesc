unit UConsMovObjetivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, DBTables, CurrEdit, DBClient, ExtCtrls;

type
  TfConsMovObjetivo = class(TForm)
    SMDBGrid1: TSMDBGrid;
    qConsulta: TQuery;
    dsqConsulta: TDataSource;
    qConsultaano: TIntegerField;
    qConsultacodobjetivo: TIntegerField;
    qConsultanomeobjetivo: TStringField;
    qConsultacodacao: TIntegerField;
    qConsultanomeacao: TStringField;
    qConsultames: TIntegerField;
    qConsultadiavecto: TIntegerField;
    qConsultadtconclusao: TDateField;
    qConsultaNomeMes: TStringField;
    mCronograma: TClientDataSet;
    dsCronograma: TDataSource;
    mObjetivoAcao: TClientDataSet;
    dsObjetivoAcao: TDataSource;
    mObjetivoAcaoAno: TIntegerField;
    mObjetivoAcaoObjetivo: TStringField;
    mObjetivoAcaoAcao: TStringField;
    mObjetivoAcaoTitularAuxiliar: TStringField;
    mCronogramaMes: TStringField;
    mObjetivoAcaoID: TIntegerField;
    mCronogramaID: TIntegerField;
    qConsultacodfuncionario1: TIntegerField;
    qConsultacodfuncionario2: TIntegerField;
    mCronogramaDia1: TStringField;
    mCronogramaDia2: TStringField;
    mCronogramaDia3: TStringField;
    mCronogramaDia4: TStringField;
    mCronogramaDia5: TStringField;
    mCronogramaDia6: TStringField;
    mCronogramaDia7: TStringField;
    mCronogramaDia8: TStringField;
    mCronogramaDia9: TStringField;
    mCronogramaDia10: TStringField;
    mObjetivoAcaoAuxiliar: TStringField;
    Bevel2: TBevel;
    qConsultaNumMov: TIntegerField;
    qConsultaCodPerspectiva: TIntegerField;
    qConsultaEstrategia: TStringField;
    qConsultaNomePerspectiva: TStringField;
    mObjetivoAcaoPerspectiva: TStringField;
    mObjetivoAcaoEstrategia: TStringField;
    qConsultaValor: TFloatField;
    qConsultaVlrRealizado: TFloatField;
    mObjetivoAcaoValor: TFloatField;
    mObjetivoAcaoVlrRealizado: TFloatField;
    mObjetivoAcaoComo: TStringField;
    mObjetivoAcaoCorrelacao: TStringField;
    qConsultaCorrelacao: TStringField;
    qConsultaComo: TStringField;
    qRealizado: TQuery;
    qRealizadocodacao: TIntegerField;
    qRealizadoNumMov: TIntegerField;
    qRealizadoVlrRealizado: TFloatField;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    Shape1: TShape;
    Label9: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    CurrencyEdit2: TCurrencyEdit;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure mObjetivoAcaoNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FSql: String;
    procedure Monta_SQL;
    procedure Monta_Cronograma;
  public
    { Public declarations }
  end;

var
  fConsMovObjetivo: TfConsMovObjetivo;

implementation

uses UDM1, URelMovObjetivoAcao, DateUtils, URelMovObjetivoAcao2;

{$R *.dfm}

procedure TfConsMovObjetivo.Monta_SQL;
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add(FSql);

  if CurrencyEdit2.AsInteger > 0 then
    qConsulta.SQL.Add(' and i.ano = ' + CurrencyEdit2.Text )
  else
    Raise Exception.Create('É obrigatório informar o campo ano.');

  if ComboBox1.ItemIndex = 0 then  //Pendente
    qConsulta.SQL.Add(' AND i.DtConclusao is null ')
  else
  if ComboBox1.ItemIndex = 1 then  //Concluido
    qConsulta.SQL.Add(' AND i.DtConclusao is not null ');

  if RxDBLookupCombo3.KeyValue > 0 then
    qConsulta.SQL.Add(' and i.mes = ' + RxDBLookupCombo3.KeyValue );

  if DateEdit5.Date > 0 then
    begin
      qConsulta.SQL.Add(' AND (i.DtConclusao >= :Data5)');
      qConsulta.ParamByName('Data5').AsDate := DateEdit5.Date;
    end;

  if DateEdit6.Date > 0 then
    begin
      qConsulta.SQL.Add(' AND (i.DtConclusao <= :Data6)');
      qConsulta.ParamByName('Data6').AsDate := DateEdit6.Date;
    end;

  qConsulta.SQL.Add('order by i.ano, dbPerspectiva.Nome, dbMovObjetivo.Estrategia, o.nome, a.nome, i.Mes, i.diavecto');
  qConsulta.Open;
end;

procedure TfConsMovObjetivo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (qConsulta.Active) and (qConsultaano.AsInteger > 0) then
  begin
    DM1.tMovObjetivo.Locate('CodObjetivo', qConsultacodobjetivo.AsInteger, [loCaseInsensitive]);
    DM1.tMovObjetivoAcao.Locate('CodAcao', qConsultacodacao.AsInteger, [loCaseInsensitive]);
    if qConsultaDtConclusao.AsDateTime > 0 then
      DM1.tMovObjetivoAcaoItens.Locate('Mes; DiaVecto; DtConclusao', VarArrayOf([qConsultames.AsInteger, qConsultadiavecto.AsInteger, qConsultadtconclusao.AsDateTime]), [loCaseInsensitive])
    else
      DM1.tMovObjetivoAcaoItens.Locate('Mes; DiaVecto', VarArrayOf([qConsultames.AsInteger, qConsultadiavecto.AsInteger]), [loCaseInsensitive]);
  end;
  qConsulta.Close;
  qRealizado.Close;
  DM1.tPessoa.Close;
  Action := Cafree;
end;

procedure TfConsMovObjetivo.BitBtn1Click(Sender: TObject);
begin
  qConsulta.Close;
  Close;
end;

procedure TfConsMovObjetivo.BitBtn2Click(Sender: TObject);
begin
  qRealizado.Close;
  qRealizado.Open;
  Monta_SQL;
end;

procedure TfConsMovObjetivo.SMDBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TfConsMovObjetivo.FormCreate(Sender: TObject);
begin
  CurrencyEdit2.AsInteger := YearOf(Date);
  DM1.tPessoa.Open;
  FSql := qConsulta.SQL.Text;
end;

procedure TfConsMovObjetivo.BitBtn3Click(Sender: TObject);
begin
  if qConsulta.Active then
    begin
      SMDBGrid1.DisableScroll;
      Monta_Cronograma;
      if mObjetivoAcao.RecordCount > 0 then
        begin
          mObjetivoAcao.First;
          {fRelMovObjetivoAcao := TfRelMovObjetivoAcao.Create(Self);
          fRelMovObjetivoAcao.RLReport1.Preview;
          fRelMovObjetivoAcao.RLReport1.Free;}
          fRelMovObjetivoAcao2 := TfRelMovObjetivoAcao2.Create(Self);
          fRelMovObjetivoAcao2.RLReport1.Preview;
          fRelMovObjetivoAcao2.RLReport1.Free;
          SMDBGrid1.EnableScroll;
        end;
    end;
end;

procedure TfConsMovObjetivo.Monta_Cronograma;
var
  iID: Integer;
  i: Integer;
begin
  mObjetivoAcao.EmptyDataSet;
  mCronograma.EmptyDataSet;
  qConsulta.First;
  while not qConsulta.Eof do
  begin

    if not mObjetivoAcao.Locate('Ano;Perspectiva;Objetivo;Estrategia;Acao',
       VarArrayOf([qConsultaano.AsInteger,qConsultaNomePerspectiva.AsString, qConsultanomeobjetivo.AsString, qConsultaEstrategia.AsString, qConsultanomeacao.AsString]),[loCaseInsensitive]) then
    begin
      Inc(iID);
      mObjetivoAcao.Insert;
      mObjetivoAcaoID.AsInteger         := iID;
      mObjetivoAcaoAno.AsInteger        := qConsultaano.AsInteger;
      mObjetivoAcaoPerspectiva.AsString := qConsultaNomePerspectiva.AsString;
      mObjetivoAcaoObjetivo.AsString    := qConsultanomeobjetivo.AsString;
      mObjetivoAcaoAcao.AsString        := qConsultanomeacao.AsString;
      mObjetivoAcaoEstrategia.AsString  := qConsultaEstrategia.AsString;
      mObjetivoAcaoValor.AsFloat        := qConsultaValor.AsFloat;
      mObjetivoAcaoComo.AsString        := qConsultaComo.AsString;
      mObjetivoAcaoCorrelacao.AsString  := qConsultaCorrelacao.AsString;
      if qConsultacodfuncionario1.AsInteger > 0 then
      begin
        DM1.tPessoa.Locate('Codigo', qConsultacodfuncionario1.AsInteger, [loCaseInsensitive]);
        mObjetivoAcaoTitularAuxiliar.AsString := DM1.tPessoaNome.AsString;
      end;
      if qConsultacodfuncionario2.AsInteger > 0 then
      begin
        DM1.tPessoa.Locate('Codigo', qConsultacodfuncionario2.AsInteger, [loCaseInsensitive]);
        mObjetivoAcaoAuxiliar.AsString := DM1.tPessoaNome.AsString;
      end;
    end
    else
      mObjetivoAcao.Edit;
    mObjetivoAcaoVlrRealizado.AsFloat := mObjetivoAcaoVlrRealizado.AsFloat + qConsultaVlrRealizado.AsFloat;
    mObjetivoAcao.Post;
    if not mCronograma.Locate('ID; Mes', VarArrayOf([mObjetivoAcaoID.AsInteger, qConsultaNomeMes.AsString]), [loCaseInsensitive]) then
    begin
      mCronograma.Insert;
      mCronogramaID.AsInteger := mObjetivoAcaoID.AsInteger;
      mCronogramaMes.AsString := qConsultaNomeMes.AsString;
    end
    else
      mCronograma.Edit;

    for i := 1 to 10 do
    begin
      if mCronograma.FieldByName('Dia'+IntToStr(i)).AsString = '' then
      begin
        mCronograma.FieldByName('Dia'+IntToStr(i)).AsString := FormatFloat('00',qConsultadiavecto.AsInteger);
        if qConsultadtconclusao.AsDateTime > 0 then
        begin
          if qConsultadtconclusao.AsDateTime > StrToDateTime(qConsultadiavecto.AsString + '/' + qConsultames.AsString + '/' + qConsultaano.AsString) then
            mCronograma.FieldByName('Dia'+IntToStr(i)).AsString := mCronograma.FieldByName('Dia'+IntToStr(i)).AsString + ' A'
          else
            mCronograma.FieldByName('Dia'+IntToStr(i)).AsString := mCronograma.FieldByName('Dia'+IntToStr(i)).AsString + ' D';
        end;
        //else
        //if Date > StrToDateTime(qConsultadiavecto.AsString + '/' + qConsultames.AsString + '/' + qConsultaano.AsString) then
        //  mCronograma.FieldByName('Dia'+IntToStr(i)).AsString := mCronograma.FieldByName('Dia'+IntToStr(i)).AsString + ' A';
        Break;
      end;
    end;

    mCronograma.Post;
    qConsulta.Next;
  end;

end;

procedure TfConsMovObjetivo.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
var
  vData : TDate;
begin
  if (qConsultaano.AsInteger > 0) and (qConsultames.AsInteger > 0) and (qConsultadiavecto.AsInteger > 0) then
    vData := EncodeDate(qConsultaano.AsInteger,qConsultames.AsInteger,qConsultadiavecto.AsInteger)
  else
    vData := Date;
  if qConsultadtconclusao.AsDateTime > 1 then
    begin
//      Background  := clTeal;
      AFont.Color := clTeal;
    end
  else
  if vData < Date then
    begin
//      Background  := clRed;
      AFont.Color := clRed;
    end;
end;

procedure TfConsMovObjetivo.mObjetivoAcaoNewRecord(DataSet: TDataSet);
begin
  mObjetivoAcaoValor.AsFloat        := 0;
  mObjetivoAcaoVlrRealizado.AsFloat := 0;
end;

procedure TfConsMovObjetivo.FormShow(Sender: TObject);
begin
 Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;
end;

end.
