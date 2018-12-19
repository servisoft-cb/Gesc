unit UFato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid, RzTabs, RzEdit, RzDBEdit;

type
  TfFato = class(TForm)
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
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
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
    qConsulta: TQuery;
    qConsultaNumMov: TIntegerField;
    qConsultaCodCliente: TIntegerField;
    qConsultaDtMovimento: TDateField;
    qConsultaFato: TMemoField;
    qConsultaCausa: TMemoField;
    qConsultaAcao: TMemoField;
    qConsultaCodResponsavel: TIntegerField;
    qConsultaObs: TMemoField;
    qConsultaTipoSatisfacao: TIntegerField;
    qConsultaUsuario: TStringField;
    qConsultaDtUsuario: TDateField;
    qConsultaHrUsuario: TTimeField;
    qConsultaNomeCliente: TStringField;
    qConsultaNomeResposavel: TStringField;
    dsqConsulta: TDataSource;
    qConsultaCodCliente_1: TStringField;
    DBMemo5: TDBMemo;
    Panel6: TPanel;
    Panel7: TPanel;
    qConsultaAcaoPrev: TMemoField;
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
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    FSql: String;
    procedure Habilita;
  public
    { Public declarations }
    procedure Monta_SQL(NumMov, CodCliente, CodResponsavel, TipoIni, TipoFin : Integer ; DtInicio, DtFinal : TDateTime);
  end;

var
  fFato: TfFato;

implementation

uses UDM1, UDM2, UConsFato, URelFato;

{$R *.DFM}

procedure TfFato.Monta_SQL(NumMov, CodCliente, CodResponsavel, TipoIni, TipoFin : Integer ; DtInicio, DtFinal : TDateTime);
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add(FSql);

  if CodCliente > 0 then
    begin
      qConsulta.SQL.Add(' AND (F.CodCliente = :CodCliente) ');
      qConsulta.ParamByName('CodCliente').AsInteger := CodCliente;
    end;
  if CodResponsavel > 0 then
    begin
      qConsulta.SQL.Add(' AND (F.CodResponsavel = :CodResponsavel) ');
      qConsulta.ParamByName('CodResponsavel').AsInteger := CodResponsavel;
    end;
  if DtInicio > 0 then
    begin
      qConsulta.SQL.Add(' AND (F.DtMovimento >= :DtInicial)');
      qConsulta.ParamByName('DtInicial').AsDate := DtInicio;
    end;
  if DtFinal > 0 then
    begin
      qConsulta.SQL.Add(' AND (F.DtMovimento <= :DtFinal)');
      qConsulta.ParamByName('DtFinal').AsDate := DtFinal;
    end;
  if TipoIni > 0 then
    begin
      qConsulta.SQL.Add(' AND (F.TipoSatisfacao >= :TipoSatisfacao1)');
      qConsulta.ParamByName('TipoSatisfacao1').AsInteger := TipoIni;
    end;
  if TipoFin > 0 then
    begin
      qConsulta.SQL.Add(' AND (F.TipoSatisfacao <= :TipoSatisfacao2)');
      qConsulta.ParamByName('TipoSatisfacao2').AsInteger := TipoFin;
    end;
  if NumMov > 0 then
    begin
      qConsulta.SQL.Add(' AND (F.NumMov = :NumMov)');
      qConsulta.ParamByName('NumMov').AsInteger := NumMov;
    end;
  qConsulta.SQL.Add('ORDER BY F.DtMovimento, dbPessoa.Nome');
  qConsulta.Open;
end;

procedure TfFato.Habilita;
begin
  Panel5.Enabled       := not(Panel5.Enabled);
  Bitbtn1.Enabled      := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled      := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled      := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled      := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled      := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled      := not(Bitbtn6.Enabled);
  Bitbtn7.Enabled      := not(Bitbtn7.Enabled);
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
  DBMemo1.ReadOnly     := not(DBMemo1.ReadOnly);
  DBMemo2.ReadOnly     := not(DBMemo2.ReadOnly);
  DBMemo3.ReadOnly     := not(DBMemo3.ReadOnly);
  DBMemo4.ReadOnly     := not(DBMemo4.ReadOnly);
  DBMemo5.ReadOnly     := not(DBMemo5.ReadOnly);
  if Tag = 1 then
    BitBtn1.Enabled := False;
end;

procedure TfFato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tPessoa.Filtered := False;
  if Screen.FormCount < 3 then
    begin
      DM1.tFato.Close;
      DM1.tPessoa.Close;
    end;
  qConsulta.Close;
  Action := Cafree;
end;

procedure TfFato.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsFato.AsBoolean then
    begin
      DM1.tFato.Refresh;
      DM1.tFato.IndexFieldNames  := 'NumMov';
      DM2.tFato2.Refresh;
      DM2.tFato2.IndexFieldNames := 'NumMov';
      DM2.tFato2.Last;
      DM1.tFato.Insert;
      DM1.tFatoNumMov.AsInteger := DM2.tFato2NumMov.AsInteger + 1;
      DM1.tFato.Post;
      DM1.tFato.Edit;
      Habilita;
      RxDBLookupCombo2.SetFocus;
      RzPageControl1.ActivePageIndex := 0;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfFato.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltFato.AsBoolean then
  begin
    DM1.tFato.IndexFieldNames := 'NumMov';
    DM1.tFato.Edit;
    BitBtn2.Tag := 1;
    Habilita;
    RxDBLookupCombo2.SetFocus;
    RzPageControl1.ActivePageIndex := 0;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfFato.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcFato.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tFato.Delete;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfFato.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tFato.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tFato.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
end;

procedure TfFato.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfFato.BitBtn6Click(Sender: TObject);
begin
  if DM1.tFatoCodCliente.AsInteger <= 0 then
    Raise Exception.Create('Falta informar o cliente!');

  if DM1.tFatoCodResponsavel.AsInteger <= 0 then
    Raise Exception.Create('Falta informar o responsável!');

  if DM1.tFatoDtMovimento.AsDateTime <= 0 then
    Raise Exception.Create('Falta informar a data!');

  if DM1.tFatoTipoSatisfacao.AsInteger <= 0 then
    Raise Exception.Create('Falta informar a classificação da satisfação!!');

  if DM1.tFato.State in [dsInsert, dsEdit] then
    DM1.tFato.Post;

  Habilita;
  BitBtn2.Tag := 0;
end;

procedure TfFato.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tFato.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfFato.FormShow(Sender: TObject);
begin
  DM1.tFato.Open;
  DM1.tPessoa.Open;
  DM1.tPessoa.IndexFieldNames := 'Nome';
  FSql := qConsulta.SQL.Text;
end;

procedure TfFato.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tFato.State in [dsBrowse]) then
    begin
      qConsulta.Close;
      fConsFato := TfConsFato.Create(Self);
      fConsFato.ShowModal;
    end;
end;

procedure TfFato.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tPessoa.Filtered := False;
  DM1.tPessoa.Filter := 'Cliente = True';
  DM1.tPessoa.Filtered := True;
end;

procedure TfFato.BitBtn7Click(Sender: TObject);
begin
  if DM1.tFatoNumMov.AsInteger > 0 then
    begin
      Monta_SQL(DM1.tFatoNumMov.AsInteger,0,0,0,0,0,0);
      fRelFato := TfRelFato.Create(Self);
      fRelFato.RLReport1.Preview;
      fRelFato.RLReport1.Free;
    end;
end;

end.
