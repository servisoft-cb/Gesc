unit UIdeias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid, RzTabs, RzEdit, RzDBEdit;

type
  TfIdeias = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    StaticText1: TStaticText;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    DBMemo3: TDBMemo;
    DBMemo2: TDBMemo;
    Panel5: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    DBDateEdit1: TDBDateEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Panel4: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    DBMemo1: TDBMemo;
    TabSheet4: TRzTabSheet;
    DBMemo4: TDBMemo;
    Label1: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label2: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    Label9: TLabel;
    DBText4: TDBText;
    BitBtn7: TBitBtn;
    dsqConsulta: TDataSource;
    qConsulta: TQuery;
    TabSheet5: TRzTabSheet;
    DBMemo5: TDBMemo;
    TabSheet6: TRzTabSheet;
    DBMemo6: TDBMemo;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    qConsultaCodFuncionario: TIntegerField;
    qConsultaNumMov: TIntegerField;
    qConsultaDtMov: TDateField;
    qConsultaIdeia: TMemoField;
    qConsultaColocarEmPratica: TMemoField;
    qConsultaAplicabilidade: TMemoField;
    qConsultaInvestimento: TMemoField;
    qConsultaVlrInvestimento: TFloatField;
    qConsultaRetorno: TMemoField;
    qConsultaVlrRetorno: TFloatField;
    qConsultaJustificativa: TMemoField;
    qConsultaAprovada: TStringField;
    qConsultaUsuario: TStringField;
    qConsultaDtUsuario: TDateField;
    qConsultaHrUsuario: TTimeField;
    qConsultaNomeFuncionario: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    FSql: String;
    procedure Habilita;
  public
    { Public declarations }
    procedure Monta_SQL(NumMov, CodResponsavel : Integer; DtInicio, DtFinal : TDateTime; Aprovado : String);

  end;

var
  fIdeias: TfIdeias;

implementation

uses UDM1, UDM2, UConsIdeias, URelIdeias;

{$R *.DFM}

procedure TfIdeias.Monta_SQL(NumMov, CodResponsavel: Integer; DtInicio, DtFinal : TDateTime; Aprovado : String);
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add(FSql);

  if CodResponsavel > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbIdeias.CodFuncionario = :CodFuncionario) ');
      qConsulta.ParamByName('CodFuncionario').AsInteger := CodResponsavel;
    end;
  if DtInicio > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbIdeias.DtMov >= :DtInicial)');
      qConsulta.ParamByName('DtInicial').AsDate := DtInicio;
    end;
  if DtFinal > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbIdeias.DtMov <= :DtFinal)');
      qConsulta.ParamByName('DtFinal').AsDate := DtFinal;
    end;
  if NumMov > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbIdeias.NumMov = :NumMov)');
      qConsulta.ParamByName('NumMov').AsInteger := NumMov;
    end;
  if Aprovado <>  'A' then
    begin
      qConsulta.SQL.Add(' AND (dbIdeias.Aprovada = :Aprovado)');
      qConsulta.ParamByName('Aprovado').AsString := Aprovado;
    end;
  if Aprovado = 'S' then
    begin
      qConsulta.SQL.Add('And  (dbIdeias.Aprovada = :Aprovado)');
      qConsulta.ParamByName('Aprovado').AsString :=Aprovado;
    end;
  if Aprovado = 'N' then
    begin
      qConsulta.SQL.ADD('And  (dbIdeias.Aprovada = :Aprovado)');
      qConsulta.ParamByName('Aprovado').AsString :=Aprovado;
    end;
  qConsulta.SQL.Add('ORDER BY dbIdeias.DtMov, dbPessoa.Nome');
  qConsulta.Open;
end;

procedure TfIdeias.Habilita;
begin
  Panel5.Enabled            := not(Panel5.Enabled);
  Bitbtn1.Enabled           := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled           := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled           := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled           := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled           := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled           := not(Bitbtn6.Enabled);
  Bitbtn7.Enabled           := not(Bitbtn7.Enabled);
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
  DBMemo1.ReadOnly          := not(DBMemo1.ReadOnly);
  DBMemo2.ReadOnly          := not(DBMemo2.ReadOnly);
  DBMemo3.ReadOnly          := not(DBMemo3.ReadOnly);
  DBMemo4.ReadOnly          := not(DBMemo4.ReadOnly);
  DBMemo5.ReadOnly          := not(DBMemo5.ReadOnly);
  DBMemo6.ReadOnly          := not(DBMemo6.ReadOnly);
  if Tag = 1 then
    BitBtn1.Enabled := False;
end;

procedure TfIdeias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm2.tPessoa2.Filtered := False;
  dm2.tPessoa2.Filter   := '';
  dm2.tPessoa2.Open;
  if Screen.FormCount < 3 then
    begin
      DM1.tIdeias.Close;
      DM1.tPessoa.Close;
    end;
  qConsulta.Close;
  Action := Cafree;
end;

procedure TfIdeias.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsIdeias.AsBoolean then
    begin
      DM1.tIdeias.Refresh;
      DM1.tIdeias.IndexFieldNames  := 'NumMov';
      DM2.tIdeias2.Refresh;
      DM2.tIdeias2.IndexFieldNames := 'NumMov';
      DM2.tIdeias2.Last;
      DM1.tIdeias.Insert;
      DM1.tIdeiasNumMov.AsInteger := DM2.tIdeias2NumMov.AsInteger + 1;
      DM1.tIdeias.Post;
      DM1.tIdeias.Edit;
      Habilita;
      RxDBLookupCombo4.SetFocus;
      RzPageControl1.ActivePageIndex := 0;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfIdeias.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltIdeias.AsBoolean then
  begin
    DM1.tIdeias.IndexFieldNames := 'NumMov';
    DM1.tIdeias.Edit;
    BitBtn2.Tag := 1;
    Habilita;
    RxDBLookupCombo4.SetFocus;
    RzPageControl1.ActivePageIndex := 0;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfIdeias.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcIdeias.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tIdeias.Delete;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfIdeias.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tIdeias.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tIdeias.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
end;

procedure TfIdeias.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfIdeias.BitBtn6Click(Sender: TObject);
begin
  if DM1.tIdeiasCodFuncionario.AsInteger <= 0 then
    Raise Exception.Create('Falta informar o funcionário!');

  if DM1.tIdeiasDtMov.AsDateTime <= 0 then
    Raise Exception.Create('Falta informar a data!');

  if DM1.tIdeias.State in [dsInsert, dsEdit] then
    DM1.tIdeias.Post;

  Habilita;
  BitBtn2.Tag := 0;
end;

procedure TfIdeias.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tIdeias.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar para de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfIdeias.FormShow(Sender: TObject);
begin
  dm2.tPessoa2.Filtered := False;
  dm2.tPessoa2.Filter   := 'FUNCIONARIO = TRUE';
  dm2.tPessoa2.Filtered := True;
  DM1.tIdeias.Open;
  DM2.tPessoa2.Open;
  DM2.tPessoa2.IndexFieldNames := 'Nome';
  FSql := qConsulta.SQL.Text;
end;

procedure TfIdeias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tIdeias.State in [dsBrowse]) then
    begin
      qConsulta.Close;
      fConsIdeias := TfConsIdeias.Create(Self);
      fConsIdeias.ShowModal;
    end;
end;

procedure TfIdeias.BitBtn7Click(Sender: TObject);
begin
  if DM1.tIdeiasNumMov.AsInteger > 0 then
    begin
      fIdeias.Monta_SQL(DM1.tIdeiasNumMov.AsInteger,0,0,0,'A');
      fRelIdeias := TfRelIdeias.Create(Self);
      fRelIdeias.RLReport1.Preview;
      fRelIdeias.RLReport1.Free;
    end;
end;

end.
