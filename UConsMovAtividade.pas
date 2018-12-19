unit UConsMovAtividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, DBTables, DBFilter, ExtCtrls, ComCtrls;

type
  TfConsMovAtividade = class(TForm)
    SMDBGrid1: TSMDBGrid;
    qConsulta: TQuery;
    dsqConsulta: TDataSource;
    qConsultanummov: TIntegerField;
    qConsultadtpedido: TDateField;
    qConsultadtprazo: TDateField;
    qConsultadtconclusao: TDateField;
    qConsultahrconclusao: TTimeField;
    qConsultaqtddiasatraso: TIntegerField;
    qConsultaobs: TMemoField;
    qConsultaatividade: TStringField;
    qConsultacliente: TStringField;
    qConsultaatendente: TStringField;
    qConsultaresponsavel: TStringField;
    RxDBFilter1: TRxDBFilter;
    qConsultaHoraPedido: TTimeField;
    qConsultaHoraPrazo: TTimeField;
    qConsultaLida: TBooleanField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn2: TBitBtn;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    ComboBox1: TComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ProgressBar1: TProgressBar;
    Panel2: TPanel;
    Shape1: TShape;
    Label9: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    Shape3: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Shape4: TShape;
    Label16: TLabel;
    Label17: TLabel;
    BitBtn3: TBitBtn;
    StaticText1: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1FilterChanged(Sender: TObject);
  private
    { Private declarations }
    FSql: String;
    procedure Monta_SQL;
    procedure Le_qConsulta;
  public
    { Public declarations }
  end;

var
  fConsMovAtividade: TfConsMovAtividade;

implementation

uses UDM1, UMovAtividade, UDM2;

{$R *.dfm}

procedure TfConsMovAtividade.Le_qConsulta;
begin
  Label12.Caption := '0';
  Label13.Caption := '0';
  Label14.Caption := '0';
  Label15.Caption := '0';
  Label17.Caption := '0';
  ProgressBar1.Max      := qConsulta.RecordCount;
  ProgressBar1.Position := 0;
  qConsulta.First;
  while not qConsulta.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1; 
      if not qConsultaLida.AsBoolean then
        Label12.Caption := FormatFloat('0',StrToInt(Label12.Caption) + 1)
      else
      if qConsultadtconclusao.AsDateTime > qConsultadtprazo.AsDateTime then
        Label14.Caption := FormatFloat('0',StrToInt(Label14.Caption) + 1)
      else
      if qConsultadtconclusao.AsDateTime > 1 then
        Label13.Caption := FormatFloat('0',StrToInt(Label13.Caption) + 1)
      else
      if qConsultadtprazo.AsDateTime < Date then
        Label15.Caption := FormatFloat('0',StrToInt(Label15.Caption) + 1)
      else
        Label17.Caption := FormatFloat('0',StrToInt(Label17.Caption) + 1);
      qConsulta.Next;
    end;
end;

procedure TfConsMovAtividade.Monta_SQL;
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add(FSql);

  if ComboBox1.ItemIndex = 0 then  //Pendente
    qConsulta.SQL.Add(' AND m.DtConclusao is null ')
  else
  if ComboBox1.ItemIndex = 1 then  //Concluido
    qConsulta.SQL.Add(' AND m.DtConclusao is not null ');

  if DateEdit1.Date > 0 then
    begin
      qConsulta.SQL.Add('AND (m.DtPedido >= :Data1)');
      qConsulta.ParamByName('Data1').AsDate := DateEdit1.Date;
    end;

  if DateEdit2.Date > 0 then
    begin
      qConsulta.SQL.Add(' AND (m.DtPedido <= :Data2)');
      qConsulta.ParamByName('Data2').AsDate := DateEdit2.Date;
    end;

  if DateEdit3.Date > 0 then
    begin
      qConsulta.SQL.Add(' AND (m.DtPrazo >= :Data3)');
      qConsulta.ParamByName('Data3').AsDate := DateEdit3.Date;
    end;

  if DateEdit4.Date > 0 then
    begin
      qConsulta.SQL.Add(' AND (m.DtPrazo <= :Data4)');
      qConsulta.ParamByName('Data4').AsDate := DateEdit4.Date;
    end;

  if DateEdit5.Date > 0 then
    begin
      qConsulta.SQL.Add(' AND (m.DtConclusao >= :Data5)');
      qConsulta.ParamByName('Data5').AsDate := DateEdit5.Date;
    end;

  if DateEdit6.Date > 0 then
    begin
      qConsulta.SQL.Add(' AND (m.DtConclusao <= :Data6)');
      qConsulta.ParamByName('Data6').AsDate := DateEdit6.Date;
    end;

  if RxDBLookupCombo1.Text <> '' then
    begin
      qConsulta.SQL.Add(' AND (m.CodResponsavel = :CodResponsavel)');
      qConsulta.ParamByName('CodResponsavel').AsInteger := RxDBLookupCombo1.KeyValue;
    end;

  qConsulta.Open;
end;

procedure TfConsMovAtividade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  {if (qConsulta.Active) and (qConsultaNumMov.AsInteger > 0) then
    begin
      if DM1.tMovAtividade.Locate('NumMov',qConsultaNumMov.AsInteger,[loCaseInsensitive]) then
        begin
          DM1.tMovAtividade.Edit;
          DM1.tMovAtividadeLida.AsBoolean := True;
          DM1.tMovAtividade.Post;
        end;
    end;}
  qConsulta.Close;
  DM1.tMovAtividade.Close;
  DM1.tAtividade.Close;
  DM1.tPessoa.Close;
  Action := Cafree;
end;

procedure TfConsMovAtividade.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsMovAtividade.BitBtn2Click(Sender: TObject);
begin
  SMDBGrid1.DataSource := nil;
  Monta_SQL;
  Le_qConsulta;
  SMDBGrid1.DataSource := dsqConsulta;
end;

procedure TfConsMovAtividade.SMDBGrid1DblClick(Sender: TObject);
var
  vFlag : Boolean;
begin
  //Close;
  fMovAtividade     := TfMovAtividade.Create(Self);
  fMovAtividade.Tag := 0;
  if (qConsulta.Active) and (DM1.tMovAtividade.Locate('NumMov',qConsultaNumMov.AsInteger,[loCaseInsensitive])) then
    fMovAtividade.Tag := 1;
  fMovAtividade.ShowModal;
end;

procedure TfConsMovAtividade.FormCreate(Sender: TObject);
begin
  FSql := qConsulta.SQL.Text;
  ComboBox1.ItemIndex := 0;
end;

procedure TfConsMovAtividade.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qConsultadtconclusao.AsDateTime > 1 then
    begin
      if qConsultadtconclusao.AsDateTime > qConsultadtprazo.AsDateTime then
        Background  := clRed
      else
        Background  := clTeal;
      AFont.Color := clWhite;
    end
  else
  if not(qConsultaLida.AsBoolean) and (qConsultanummov.AsInteger > 0) then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end
  else
  if (qConsultadtprazo.AsDateTime < Date) then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end;

end;

procedure TfConsMovAtividade.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;
begin
  DM2.tPessoa2.Close;
  DM2.tPessoa2.Open;
  DM2.tPessoa2.Refresh;
  DM1.tPessoa.Open;
  DM1.tMovAtividade.Open;
  DM1.tAtividade.Open;
  RxDBFilter1.Active := True;
  if DM1.tUsuarioCodPessoa.AsInteger > 0 then
    RxDBLookupCombo1.KeyValue := DM1.tUsuarioCodPessoa.AsInteger;
  RxDBLookupCombo1.ReadOnly := not(DM1.tUsuarioAdministrador.AsBoolean);
end;
end;

procedure TfConsMovAtividade.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM2.tPessoa2.IndexFieldNames := 'Nome';
end;

procedure TfConsMovAtividade.BitBtn3Click(Sender: TObject);
begin
  fMovAtividade     := TfMovAtividade.Create(Self);
  fMovAtividade.Tag := 0;
  fMovAtividade.ShowModal;
end;

procedure TfConsMovAtividade.SMDBGrid1FilterChanged(Sender: TObject);
begin
  Le_qConsulta;
end;

end.
