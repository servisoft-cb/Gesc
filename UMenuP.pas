unit UMenuP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, DBCtrls, ExtCtrls, Db, DBTables, DBIProcs, rsDataSetError,
  Buttons, Grids, DBGrids, SpeedBar, RXCtrls, MemTable, jpeg; //BaseGrid, AdvGrid, DBAdvGrid;

type
  TfMenuP = class(TForm)
    MainMenu1: TMainMenu;
    Manuteno1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    ALogin1: TMenuItem;
    Image1: TImage;
    tEmpresa: TTable;
    tEmpresaEmpresa: TStringField;
    tEmpresaEndereco: TStringField;
    tEmpresaBairro: TStringField;
    tEmpresaCep: TStringField;
    tEmpresaCidade: TStringField;
    tEmpresaEstado: TStringField;
    tEmpresaTel: TStringField;
    tEmpresaTel2: TStringField;
    tEmpresaFax: TStringField;
    tEmpresaCgc: TStringField;
    tEmpresaInscr: TStringField;
    tEmpresaCodigo: TSmallintField;
    tEmpresaAutorizacao: TStringField;
    tEmpresaData: TDateField;
    Pessoa1: TMenuItem;
    Setor1: TMenuItem;
    Processo1: TMenuItem;
    Ao1: TMenuItem;
    N1: TMenuItem;
    MovimentodasAes1: TMenuItem;
    MovimentodosProcesso1: TMenuItem;
    Objetivo1: TMenuItem;
    Atividade1: TMenuItem;
    MovimentodasAtividades1: TMenuItem;
    MovimentodosObjetivos1: TMenuItem;
    Funcionrios1: TMenuItem;
    Agenda1: TMenuItem;
    Perspectiva1: TMenuItem;
    FatoCausaAo1: TMenuItem;
    RegistrodeIdiasCriativas1: TMenuItem;
    Indicadores1: TMenuItem;
    ResumoAnual1: TMenuItem;
    Feriados1: TMenuItem;
    TipoProcesso1: TMenuItem;
    ProcessoGeral1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tEmpresaAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure ALogin1Click(Sender: TObject);
    procedure Pessoa1Click(Sender: TObject);
    procedure Setor1Click(Sender: TObject);
    procedure Processo1Click(Sender: TObject);
    procedure Ao1Click(Sender: TObject);
    procedure MovimentodasAes1Click(Sender: TObject);
    procedure MovimentodosProcesso1Click(Sender: TObject);
    procedure Objetivo1Click(Sender: TObject);
    procedure Atividade1Click(Sender: TObject);
    procedure MovimentodasAtividades1Click(Sender: TObject);
    procedure MovimentodosObjetivos1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure Perspectiva1Click(Sender: TObject);
    procedure FatoCausaAo1Click(Sender: TObject);
    procedure RegistrodeIdiasCriativas1Click(Sender: TObject);
    procedure Indicadores1Click(Sender: TObject);
    procedure ResumoAnual1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Feriados1Click(Sender: TObject);
    procedure TipoProcesso1Click(Sender: TObject);
    procedure ProcessoGeral1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FDataSetError: TrsDataSetError;
  end;

var
  fMenuP: TfMenuP;
  Auto : String[15];

implementation

uses UPessoa, UDM1, UAcesso, UAutorizacao, USobre, UUsuarios, USetor, UIdeias, UIndicadores, uResumoAnualC,
  UProcesso, UAcao, UMovAcao, UObjetivo, rsDBUtils, UAtividade, UConsMovAtividade, 
  UMovAtividade, UMovObjetivo, DateUtils, UFuncionario, UMovProcesso, UAgenda, UPerspectiva, UFato,
  UFeriado, UProcessoGeral, UTipoProcesso;

{$R *.DFM}

procedure TfMenuP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfMenuP.tEmpresaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tEmpresa.Handle);
end;

procedure TfMenuP.FormShow(Sender: TObject);
var
  vLinha2 : String;
begin
  FDataSetError.CreateError(DM1);

  DM1.tEmpresa.open;
  DM1.tUsuario.open;
  DM1.tUsuarioAlt.open;
  DM1.tUsuarioExc.open;
  DM1.tUsuarioIns.open;
  vLinha2 := DM1.tEmpresaLinha2.AsString;
  RxLabel1.Caption := DM1.tEmpresaLinha1.AsString;
  RxLabel2.Caption := DM1.tEmpresaLinha2.AsString;
  fAcesso := TfAcesso.Create(Self);
  fAcesso.Caption := '  Senha de Acesso  -  ' + DateToStr(Date);
  {if DM1.tEmpresaData.AsDateTime <= (Date - 10) then
    begin
      DM1.tEmpresa.Edit;
      DM1.tEmpresaData.AsDateTime := (Date - 10);
      DM1.tEmpresa.Post;
    end
  else
    begin
      ShowMessage('A data do sistema foi alterada!'+#13+#13+
                  'Entre com a senha de liberação '+#13+
                  ' e a data correta do sistema !');
      fAutorizacao := TfAutorizacao.Create(Self);
      fAutorizacao.ShowModal;
    end;}
  fAcesso.ShowModal;
  if Dm1.tEmpresaLogoEmpresa.AsString <> '' then
    begin
      Image1.Picture.LoadFromFile(Dm1.tEmpresaLogoEmpresa.AsString);
      RxLabel1.Visible := False;
      RxLabel2.Visible := False;
    end
  else
    begin
      Image1.Visible := False;
      RxLabel1.Visible := True;
      RxLabel2.Visible := True;
    end;
end;

procedure TfMenuP.Sobre1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Self);
  fSobre.ShowModal;
end;

procedure TfMenuP.Sair1Click(Sender: TObject);
begin
  fUsuarios := TfUsuarios.Create(Self);
  fUsuarios.ShowModal;
end;

procedure TfMenuP.ALogin1Click(Sender: TObject);
begin
  DM1.Login;
end;

procedure TfMenuP.Pessoa1Click(Sender: TObject);
begin
  fPessoa := TfPessoa.Create(Self);
  fPessoa.ShowModal;
end;

procedure TfMenuP.Setor1Click(Sender: TObject);
begin
  fSetor := TfSetor.Create(Self);
  fSetor.ShowModal;
end;

procedure TfMenuP.Processo1Click(Sender: TObject);
begin
  fProcesso := TfProcesso.Create(Self);
  fProcesso.ShowModal;
end;

procedure TfMenuP.Ao1Click(Sender: TObject);
begin
  fAcao := TfAcao.Create(Self);
  fAcao.ShowModal;
end;

procedure TfMenuP.MovimentodasAes1Click(Sender: TObject);
begin
  fMovAcao := TfMovAcao.Create(Self);
  fMovAcao.ShowModal;
end;

procedure TfMenuP.MovimentodosProcesso1Click(Sender: TObject);
begin
  fMovProcesso := TfMovProcesso.Create(Self);
  fMovProcesso.ShowModal;
end;

procedure TfMenuP.Objetivo1Click(Sender: TObject);
begin
  fObjetivo := TfObjetivo.Create(Self);
  fObjetivo.ShowModal;
end;

procedure TfMenuP.Atividade1Click(Sender: TObject);
begin
  fAtividade := TfAtividade.Create(Self);
  fAtividade.ShowModal;
end;

procedure TfMenuP.MovimentodasAtividades1Click(Sender: TObject);
begin
  fConsMovAtividade := TfConsMovAtividade.Create(Self);
  fConsMovAtividade.ShowModal;
end;

procedure TfMenuP.MovimentodosObjetivos1Click(Sender: TObject);
begin
  fMovObjetivo := TfMovObjetivo.Create(Self);
  fMovObjetivo.ShowModal;
end;

procedure TfMenuP.Funcionrios1Click(Sender: TObject);
begin
  fFuncionario := TfFuncionario.Create(Self);
  fFuncionario.ShowModal;
end;

procedure TfMenuP.Agenda1Click(Sender: TObject);
begin
  fAgenda := TfAgenda.Create(Self);
  fAgenda.ShowModal;
end;

procedure TfMenuP.Perspectiva1Click(Sender: TObject);
begin
  fPerspectiva := TfPerspectiva.Create(Self);
  fPerspectiva.ShowModal;
end;

procedure TfMenuP.FatoCausaAo1Click(Sender: TObject);
begin
  fFato := TfFato.Create(Self);
  fFato.ShowModal;
end;

procedure TfMenuP.RegistrodeIdiasCriativas1Click(Sender: TObject);
begin
  fIdeias := TfIdeias.Create(Self);
  fIdeias.ShowModal;
end;

procedure TfMenuP.Indicadores1Click(Sender: TObject);
begin
  fIndicadores := TfIndicadores.Create(Self);
  fIndicadores.ShowModal;
end;

procedure TfMenuP.ResumoAnual1Click(Sender: TObject);
begin
  fResumoAnualC := TfResumoAnualC.Create(Self);
  fResumoAnualC.ShowModal;
  fResumoAnualC.Free;
end;

procedure TfMenuP.FormCreate(Sender: TObject);
begin
  FDataSetError := TrsDataSetError.Create;
end;

procedure TfMenuP.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FDataSetError);
end;

procedure TfMenuP.Feriados1Click(Sender: TObject);
begin
  fFeriado := TfFeriado.Create(Self);
  fFeriado.ShowModal;
end;

procedure TfMenuP.TipoProcesso1Click(Sender: TObject);
begin
  fTipoProcesso := TfTipoProcesso.Create(Self);
  fTipoProcesso.ShowModal;
end;

procedure TfMenuP.ProcessoGeral1Click(Sender: TObject);
begin
  fProcessoGeral := TfProcessoGeral.Create(Self);
  fProcessoGeral.ShowModal;
end;

end.
