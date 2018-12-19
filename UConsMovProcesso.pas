unit UConsMovProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, DBTables, CurrEdit, DBClient, ExtCtrls, DBFilter;

type
  TfConsMovProcesso = class(TForm)
    SMDBGrid1: TSMDBGrid;
    qConsulta: TQuery;
    dsqConsulta: TDataSource;
    mSetorProcesso: TClientDataSet;
    dsSetorProcesso: TDataSource;
    mSetor: TClientDataSet;
    dsSetor: TDataSource;
    qConsultanummov: TIntegerField;
    qConsultacodcliente: TIntegerField;
    qConsultanomecliente: TStringField;
    qConsultamesref: TIntegerField;
    qConsultaanoref: TIntegerField;
    qConsultacodsetor: TIntegerField;
    qConsultanomesetor: TStringField;
    qConsultacodprocesso: TIntegerField;
    qConsultanomeprocesso: TStringField;
    qConsultadtconclusao: TDateField;
    qConsultadtvencimento: TDateField;
    qConsultaqtddiasatrazo: TIntegerField;
    qConsultadiavecto: TIntegerField;
    dsSetorResponsavel: TDataSource;
    mSetorResponsavel: TClientDataSet;
    mSetorID: TIntegerField;
    mSetorAno: TIntegerField;
    mSetorSetor: TStringField;
    mSetorProcessoID: TIntegerField;
    mSetorProcessoProcesso: TStringField;
    mSetorProcessoMes1: TFloatField;
    mSetorProcessoMes2: TFloatField;
    mSetorProcessoMes3: TFloatField;
    mSetorProcessoMes4: TFloatField;
    mSetorProcessomes5: TFloatField;
    mSetorProcessoMes6: TFloatField;
    mSetorProcessoMes7: TFloatField;
    mSetorProcessoMes8: TFloatField;
    mSetorProcessoMes9: TFloatField;
    mSetorProcessoMes10: TFloatField;
    mSetorProcessoMes11: TFloatField;
    mSetorProcessoMes12: TFloatField;
    mSetorResponsavelID: TIntegerField;
    mSetorResponsavelResponsavel: TStringField;
    qPrazo: TQuery;
    mSetorProcessoDiaVecto: TIntegerField;
    Bevel2: TBevel;
    qConsultaclDiasAtraso: TIntegerField;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CurrencyEdit2: TCurrencyEdit;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    Shape1: TShape;
    Label9: TLabel;
    Label10: TLabel;
    Shape2: TShape;
    StaticText1: TStaticText;
    RxDBFilter1: TRxDBFilter;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label5: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure qConsultaCalcFields(DataSet: TDataSet);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure CurrencyEdit3Exit(Sender: TObject);
  private
    { Private declarations }
    FSql: String;
    procedure Monta_SQL;
    procedure Monta_Matriz;
    procedure Monta_SQL_Prazo;
  public
    { Public declarations }
  end;

var
  fConsMovProcesso: TfConsMovProcesso;

implementation

uses UDM1, URelMovObjetivoAcao, UDM2, URelMovProcesso2,
  DateUtils, UMovProcessoConclusao, UrelVisitas;

{$R *.dfm}

procedure TfConsMovProcesso.Monta_SQL;
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add(FSql);

  if CurrencyEdit2.AsInteger > 0 then
    qConsulta.SQL.Add(' and p.anoref = ' + CurrencyEdit2.Text )
  else
    Raise Exception.Create('É obrigatório informar o campo ano.');


  if CurrencyEdit1.AsInteger > 0 then
    begin
      qConsulta.SQL.Add(' AND (p.mesref >= :Mes1)');
      qConsulta.ParamByName('Mes1').AsInteger := CurrencyEdit1.AsInteger ;
    end;
  if CurrencyEdit3.AsInteger > 0 then
    begin
      qConsulta.SQL.Add(' AND (p.mesref <= :Mes2)');
      qConsulta.ParamByName('Mes2').AsInteger := CurrencyEdit3.AsInteger;
    end;


  if ComboBox1.ItemIndex = 0 then  //Pendente
    qConsulta.SQL.Add(' AND i.DtConclusao is null ')
  else
  if ComboBox1.ItemIndex = 1 then  //Concluido
    qConsulta.SQL.Add(' AND i.DtConclusao is not null ');

  if RxDBLookupCombo2.KeyValue > 0 then
    qConsulta.SQL.Add(' and p.codcliente = ' + RxDBLookupCombo2.KeyValue );

  if RxDBLookupCombo1.KeyValue > 0 then
    qConsulta.SQL.Add(' and s.codsetor = ' + RxDBLookupCombo1.KeyValue );

  qConsulta.SQL.Add('order by p.anoref, r.nome, c.nome , p.mesref, c.diavecto');

  qConsulta.Open;
end;

procedure TfConsMovProcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    DM1.tPessoa.Close;

  qConsulta.Close;
  RxDBFilter1.Active := False;
  Action := Cafree;
end;

procedure TfConsMovProcesso.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsMovProcesso.BitBtn2Click(Sender: TObject);
begin
  Monta_SQL;
end;

procedure TfConsMovProcesso.SMDBGrid1DblClick(Sender: TObject);
begin
  DM1.tMovProcesso.Locate('NumMov',qConsultanummov.AsInteger, [loCaseInsensitive]);
  DM1.tMovProcessoSetor.Locate('CodSetor',qConsultacodsetor.AsInteger, [loCaseInsensitive]);
  Close;
end;

procedure TfConsMovProcesso.FormCreate(Sender: TObject);
begin
  CurrencyEdit2.AsInteger := YearOf(Date);
  if not DM1.tPessoa.Active then
      DM1.tPessoa.Open;
      FSql := qConsulta.SQL.Text;
end;

procedure TfConsMovProcesso.BitBtn3Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  Monta_Matriz;

  if mSetor.RecordCount > 0 then
    begin
      mSetor.First;
      fRelMovProcesso2 := TfRelMovProcesso2.Create(Self);
      fRelMovProcesso2.RLReport1.Preview;
      fRelMovProcesso2.RLReport1.Free;
      SMDBGrid1.EnableScroll;
    end;
end;

procedure TfConsMovProcesso.Monta_Matriz;
var
  iID: Integer;
  TotalAtrazo: Integer;
  TotalEmDia: Integer;
  TotalGeral: Integer;
begin

  Monta_SQL_Prazo;

  mSetor.EmptyDataSet;
  mSetorProcesso.EmptyDataSet;
  mSetorResponsavel.EmptyDataSet;

  qConsulta.First;
  while not qConsulta.Eof do
  begin

    // Setor
    if not mSetor.Locate('Ano;Setor', VarArrayOf([qConsultaanoref.AsInteger, qConsultanomesetor.AsString]),[loCaseInsensitive]) then
    begin
      Inc(iID);
      mSetor.Insert;
      mSetorID.AsInteger    := iID;
      mSetorAno.AsInteger   := qConsultaanoref.AsInteger;
      mSetorSetor.AsString  := qConsultanomesetor.AsString;
      mSetor.Post;
    end;
    // Processos p/ Setor

    if not mSetorProcesso.Locate('ID; Processo', VarArrayOf([mSetorID.AsInteger, qConsultanomeprocesso.AsString]), [loCaseInsensitive]) then
    begin
      mSetorProcesso.Insert;
      mSetorProcessoID.AsInteger       := mSetorID.AsInteger;
      mSetorProcessoProcesso.AsString  := qConsultanomeprocesso.AsString;
      mSetorProcessoDiaVecto.AsInteger := qConsultadiavecto.AsInteger;
    end
    else
      mSetorProcesso.Edit;

    // calcula percuntual;
    TotalAtrazo := 0;
    TotalEmDia  := 0;
    TotalGeral  := 0;

    if qPrazo.Locate('codsetor; codprocesso; mesref; tipo', VarArrayOf([qConsultacodsetor.AsInteger, qConsultacodprocesso.AsInteger, qConsultamesref.AsInteger, 'EMATRASO']), [loCaseInsensitive]) then
      TotalAtrazo := qPrazo.FieldByName('total').AsInteger;

    if qPrazo.Locate('codsetor; codprocesso; mesref; tipo', VarArrayOf([qConsultacodsetor.AsInteger, qConsultacodprocesso.AsInteger, qConsultamesref.AsInteger, 'EMDIA   ']), [loCaseInsensitive]) then
      TotalEmDia := qPrazo.FieldByName('total').AsInteger;

    TotalGeral := TotalAtrazo + TotalEmDia;

    if TotalGeral > 0 then
      mSetorProcesso.FieldByName('Mes' + qConsultamesref.AsString).AsFloat := (TotalEmDia * 100) / TotalGeral;
    //

    mSetorProcesso.Post;

    // Setor Responsáveis;
    DM2.tPessoaSetor2.Filtered := False;
    DM2.tPessoaSetor2.Filter := 'CodSetor = ' + qConsultacodsetor.AsString;
    DM2.tPessoaSetor2.Filtered := True;

    DM2.tPessoaSetor2.First;
    RxDBFilter1.Active := True;
    while not DM2.tPessoaSetor2.Eof do
    begin
      if DM2.tPessoa2.Locate('Codigo', DM2.tPessoaSetor2CodPessoa.AsInteger, [loCaseInsensitive]) then
      begin
        if not mSetorResponsavel.Locate('ID; Responsavel', VarArrayOf([mSetorID.AsInteger, DM2.tPessoa2Nome.AsString]), [loCaseInsensitive]) then
        begin
          mSetorResponsavel.Insert;
          mSetorResponsavelID.AsInteger         := mSetorID.AsInteger;
          mSetorResponsavelResponsavel.AsString := DM2.tPessoa2Nome.AsString;
          mSetorResponsavel.Post;
        end;
      end;
      DM2.tPessoaSetor2.Next;
    end;

    qConsulta.Next;
  end;

end;


procedure TfConsMovProcesso.Monta_SQL_Prazo;
begin

  qPrazo.Close;
  qPrazo.SQL.Clear;
  qPrazo.SQL.Add(' select count(*) total ');
  qPrazo.SQL.Add('		,s.codsetor ');
  qPrazo.SQL.Add('		,i.codprocesso ');
  qPrazo.SQL.Add('		,p.mesref ');
  qPrazo.SQL.Add('		,''EMATRASO'' as tipo ');
  qPrazo.SQL.Add('from dbmovprocesso p ');
  qPrazo.SQL.Add('	 ,dbmovprocessosetor s ');
  qPrazo.SQL.Add('	 ,dbmovprocessoitens i ');
  qPrazo.SQL.Add('	 ,dbpessoa pe ');
  qPrazo.SQL.Add('	 ,dbsetor r ');
  qPrazo.SQL.Add('	 ,dbprocesso c ');
  qPrazo.SQL.Add('where p.nummov      = s.nummov ');
  qPrazo.SQL.Add('  and s.nummov      = i.nummov ');
  qPrazo.SQL.Add('  and s.codsetor    = i.codsetor ');
  qPrazo.SQL.Add('  and p.codcliente  = pe.codigo ');
  qPrazo.SQL.Add('  and s.codsetor    = r.codigo ');
  qPrazo.SQL.Add('  and i.codprocesso = c.codigo ');
  qPrazo.SQL.Add('  and p.anoref      = ' + CurrencyEdit2.Text );
  qPrazo.SQL.Add('  and i.dtconclusao is not null ');
  qPrazo.SQL.Add('  and i.dtconclusao > i.dtvencimento ');

  if RxDBLookupCombo2.KeyValue > 0 then
    qPrazo.SQL.Add('and p.codcliente = ' + RxDBLookupCombo2.KeyValue);

  if RxDBLookupCombo1.KeyValue > 0 then
    qConsulta.SQL.Add(' and s.codsetor = ' + RxDBLookupCombo1.KeyValue );

  if ComboBox1.ItemIndex = 0 then  //Pendente
    qPrazo.SQL.Add(' AND i.DtConclusao is null ')
  else
  if ComboBox1.ItemIndex = 1 then  //Concluido
    qPrazo.SQL.Add(' AND i.DtConclusao is not null ');

  qPrazo.SQL.Add('group by s.codsetor, i.codprocesso, p.mesref ');

  qPrazo.SQL.Add(' union all ');

  qPrazo.SQL.Add('select count(*) total ');
  qPrazo.SQL.Add('		,s.codsetor ');
  qPrazo.SQL.Add('		,i.codprocesso ');
  qPrazo.SQL.Add('		,p.mesref ');
  qPrazo.SQL.Add('		,''EMDIA   '' as tipo ');
  qPrazo.SQL.Add('from dbmovprocesso p ');
  qPrazo.SQL.Add('	 ,dbmovprocessosetor s ');
  qPrazo.SQL.Add('	 ,dbmovprocessoitens i ');
  qPrazo.SQL.Add('	 ,dbpessoa pe ');
  qPrazo.SQL.Add('	 ,dbsetor r ');
  qPrazo.SQL.Add('	 ,dbprocesso c ');
  qPrazo.SQL.Add('where p.nummov      = s.nummov ');
  qPrazo.SQL.Add('  and s.nummov      = i.nummov ');
  qPrazo.SQL.Add('  and s.codsetor    = i.codsetor ');
  qPrazo.SQL.Add('  and p.codcliente  = pe.codigo ');
  qPrazo.SQL.Add('  and s.codsetor    = r.codigo ');
  qPrazo.SQL.Add('  and i.codprocesso = c.codigo ');
  qPrazo.SQL.Add('  and p.anoref      = ' + CurrencyEdit2.Text);
  qPrazo.SQL.Add('  and i.dtconclusao is not null ');
  qPrazo.SQL.Add('  and i.dtconclusao <= i.dtvencimento ');

  if RxDBLookupCombo2.KeyValue > 0 then
    qPrazo.SQL.Add('and p.codcliente = ' + RxDBLookupCombo2.KeyValue);

  if RxDBLookupCombo1.KeyValue > 0 then
    qConsulta.SQL.Add(' and s.codsetor = ' + RxDBLookupCombo1.KeyValue );


  qPrazo.SQL.Add('group by s.codsetor, i.codprocesso, p.mesref ');
  qPrazo.Open;
end;

procedure TfConsMovProcesso.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qConsultadtconclusao.AsDateTime > 1 then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end
  else
  if qConsultadtvencimento.AsDateTime < Date then
    begin
      Background  := clRed;
      AFont.Color := clBlack;
    end;
end;

procedure TfConsMovProcesso.qConsultaCalcFields(DataSet: TDataSet);
begin
  if Date > qConsultadtvencimento.AsDateTime then
    qConsultaclDiasAtraso.AsFloat := Date - qConsultadtvencimento.AsDateTime
  else
    qConsultaclDiasAtraso.AsInteger := 0;
end;

procedure TfConsMovProcesso.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F3) and (qConsultanummov.AsInteger > 0) then
    begin
      fMovProcessoConclusao := TfMovProcessoConclusao.Create(Self);
      fMovProcessoConclusao.ShowModal;
    end;
end;

procedure TfConsMovProcesso.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tPessoa.IndexFieldNames := 'Nome';
end;

procedure TfConsMovProcesso.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

end;

procedure TfConsMovProcesso.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tSetor.IndexFieldNames := 'Nome';
end;

procedure TfConsMovProcesso.CurrencyEdit3Exit(Sender: TObject);
begin
  if (CurrencyEdit3.AsInteger > 0) and (CurrencyEdit1.AsInteger > CurrencyEdit3.AsInteger) then
    begin
      ShowMessage('Mês Final não pode ser maior que o Inicial!');
      CurrencyEdit1.SetFocus;
    end;
end;

end.
