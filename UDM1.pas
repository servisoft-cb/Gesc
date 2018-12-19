Unit UDM1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBIProcs, RLFilters, RLDraftFilter, RLRichFilter, Mask,
  RLHTMLFilter, RLXLSFilter, RLPreviewForm, RLPDFFilter, DBClient;

type
  TDM1 = class(TDataModule)
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLPreviewSetup1: TRLPreviewSetup;
    Tabelas: TDatabase;
    tUsuario: TTable;
    dsUsuario: TDataSource;
    tUsuarioIns: TTable;
    tUsuarioExc: TTable;
    tUsuarioAlt: TTable;
    dsUsuarioIns: TDataSource;
    dsUsuarioExc: TDataSource;
    dsUsuarioAlt: TDataSource;
    tPessoa: TTable;
    tPessoaSetor: TTable;
    tPessoaCodigo: TIntegerField;
    tPessoaNome: TStringField;
    tPessoaSituacao: TStringField;
    tPessoaDtAdmissao: TDateField;
    tPessoaDtDemissao: TDateField;
    tPessoaSetorCodPessoa: TIntegerField;
    tPessoaSetorCodSetor: TIntegerField;
    tEmpresa: TTable;
    dsEmpresa: TDataSource;
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
    tEmpresaLinha1: TStringField;
    tEmpresaLinha2: TStringField;
    dsPessoa: TDataSource;
    dsPessoaSetor: TDataSource;
    tPessoaUsuario: TStringField;
    tPessoaDtCadastro: TDateField;
    tPessoaHrCadastro: TTimeField;
    tUsuarioInsUsuario: TStringField;
    tUsuarioInsPessoa: TBooleanField;
    tUsuarioInsProcesso: TBooleanField;
    tUsuarioInsSetor: TBooleanField;
    tUsuarioInsAcao: TBooleanField;
    tUsuarioInsMovAcao: TBooleanField;
    tUsuarioInsMovProcesso: TBooleanField;
    tUsuarioUsuario: TStringField;
    tUsuarioSenha: TStringField;
    tUsuarioAdministrador: TBooleanField;
    tUsuarioPessoa: TBooleanField;
    tUsuarioProcesso: TBooleanField;
    tUsuarioSetor: TBooleanField;
    tUsuarioAcao: TBooleanField;
    tUsuarioMovAcao: TBooleanField;
    tUsuarioMovProcesso: TBooleanField;
    tUsuarioExcUsuario: TStringField;
    tUsuarioExcPessoa: TBooleanField;
    tUsuarioExcProcesso: TBooleanField;
    tUsuarioExcSetor: TBooleanField;
    tUsuarioExcAcao: TBooleanField;
    tUsuarioExcMovAcao: TBooleanField;
    tUsuarioExcMovProcesso: TBooleanField;
    tUsuarioAltUsuario: TStringField;
    tUsuarioAltPessoa: TBooleanField;
    tUsuarioAltProcesso: TBooleanField;
    tUsuarioAltSetor: TBooleanField;
    tUsuarioAltAcao: TBooleanField;
    tUsuarioAltMovAcao: TBooleanField;
    tUsuarioAltMovProcesso: TBooleanField;
    tSetor: TTable;
    tSetorCodigo: TIntegerField;
    tSetorNome: TStringField;
    dsSetor: TDataSource;
    tEmpresaLogoEmpresa: TStringField;
    tPessoaSetorlkNomeSetor: TStringField;
    tPessoaFuncionario: TBooleanField;
    tPessoaCliente: TBooleanField;
    tSetorProcesso: TTable;
    dsSetorProcesso: TDataSource;
    tSetorProcessoCodSetor: TIntegerField;
    tSetorProcessoCodProcesso: TIntegerField;
    tSetorProcessolkNomeProcesso: TStringField;
    tProcesso: TTable;
    tProcessoCodigo: TIntegerField;
    tProcessoResponsavel: TStringField;
    dsProcesso: TDataSource;
    tAcao: TTable;
    tAcaoCodigo: TIntegerField;
    tAcaoNome: TStringField;
    tAcaoCodFuncionario1: TIntegerField;
    tAcaoCodFuncionario2: TIntegerField;
    dsAcao: TDataSource;
    tMovAcao: TTable;
    tMovAcaoNumMov: TIntegerField;
    tMovAcaoCodAcao: TIntegerField;
    tMovAcaoData: TDateField;
    dsMovAcao: TDataSource;
    tMovProcesso: TTable;
    tMovProcessoItens: TTable;
    dsMovProcesso: TDataSource;
    dsMovProcessoItens: TDataSource;
    tMovProcessoNumMov: TIntegerField;
    tMovProcessoCodCliente: TIntegerField;
    tMovProcessoData: TDateField;
    tMovProcessoMesRef: TIntegerField;
    tMovProcessoAnoRef: TIntegerField;
    tMovProcessoItensNumMov: TIntegerField;
    tMovProcessoItensCodProcesso: TIntegerField;
    tMovProcessoItensDtConclusao: TDateField;
    tMovProcessoItenslkNomeProcesso: TStringField;
    tProcessoDiaVecto: TIntegerField;
    tProcessoVectoMesSeguinte: TBooleanField;
    tMovProcessoItensCodSetor: TIntegerField;
    tMovProcessoSetor: TTable;
    tMovProcessoSetorNumMov: TIntegerField;
    tMovProcessoSetorCodSetor: TIntegerField;
    dsMovProcessoSetor: TDataSource;
    tMovProcessoSetorlkNomeSetor: TStringField;
    tProcessoNome: TStringField;
    tMovAcaoTipoSatisfacao: TStringField;
    tMovProcessoItensDtVencimento: TDateField;
    tObjetivo: TTable;
    tObjetivoCodigo: TIntegerField;
    tObjetivoNome: TStringField;
    dsObjetivo: TDataSource;
    tUsuarioObjetivo: TBooleanField;
    tUsuarioInsObjetivo: TBooleanField;
    tUsuarioExcObjetivo: TBooleanField;
    tUsuarioAltObjetivo: TBooleanField;
    tAtividade: TTable;
    tAtividadeCodigo: TIntegerField;
    tAtividadeNome: TStringField;
    dsAtividade: TDataSource;
    tUsuarioAtividade: TBooleanField;
    tUsuarioInsAtividade: TBooleanField;
    tUsuarioExcAtividade: TBooleanField;
    tUsuarioAltAtividade: TBooleanField;
    tMovAtividade: TTable;
    dsMovAtividade: TDataSource;
    tMovAtividadeNumMov: TIntegerField;
    tMovAtividadeCodCliente: TIntegerField;
    tMovAtividadeCodAtividade: TIntegerField;
    tMovAtividadeCodAtendente: TIntegerField;
    tMovAtividadeCodResponsavel: TIntegerField;
    tMovAtividadeDtPedido: TDateField;
    tMovAtividadeDtPrazo: TDateField;
    tMovAtividadeDtConclusao: TDateField;
    tMovAtividadeHrConclusao: TTimeField;
    tMovAtividadeObs: TMemoField;
    tMovAtividadeQtdDiasAtraso: TIntegerField;
    tMovAtividadeSituacao: TStringField;
    tMovAtividadeDescAtividade: TStringField;
    tMovAtividadelkAtendente: TStringField;
    tMovAtividadelkResponsavel: TStringField;
    tMovAtividadelkCliente: TStringField;
    tMovObjetivo: TTable;
    tMovObjetivoAcao: TTable;
    dsMovObjetivo: TDataSource;
    dsMovObjetivoAcao: TDataSource;
    dsMovObjetivoAcaoItens: TDataSource;
    tMovObjetivoAcaoItens: TTable;
    tMovObjetivoAno: TIntegerField;
    tMovObjetivoCodObjetivo: TIntegerField;
    tMovObjetivoAcaoAno: TIntegerField;
    tMovObjetivoAcaoCodObjetivo: TIntegerField;
    tMovObjetivoAcaoCodAcao: TIntegerField;
    tMovObjetivoAcaoItensAno: TIntegerField;
    tMovObjetivoAcaoItensCodObjetivo: TIntegerField;
    tMovObjetivoAcaoItensCodAcao: TIntegerField;
    tMovObjetivoAcaoItensItem: TIntegerField;
    tMovObjetivoAcaoItensMes: TIntegerField;
    tMovObjetivoAcaoItensDiaVecto: TIntegerField;
    tMovObjetivoAcaoItensDtConclusao: TDateField;
    tMovObjetivoAcaoItensHrConclusao: TTimeField;
    tMovObjetivoAcaoItensQtdDiasAtraso: TIntegerField;
    tMovObjetivoAcaolkAcao: TStringField;
    tMovObjetivolkObjetivo: TStringField;
    mMes: TClientDataSet;
    dsmMes: TDataSource;
    mMesCodMes: TIntegerField;
    mMesnome: TStringField;
    tMovObjetivoAcaoItenslkMes: TStringField;
    tUsuarioMovObjetivo: TBooleanField;
    tUsuarioMovAtividade: TBooleanField;
    tUsuarioAltMovObjetivo: TBooleanField;
    tUsuarioAltMovAtividade: TBooleanField;
    tUsuarioExcMovObjetivo: TBooleanField;
    tUsuarioExcMovAtividade: TBooleanField;
    tUsuarioInsMovObjetivo: TBooleanField;
    tUsuarioInsMovAtividade: TBooleanField;
    tMovProcessoItensHrConclusao: TTimeField;
    tMovProcessoItensQtdDiasAtrazo: TIntegerField;
    tMovProcessoItensObs: TMemoField;
    tMovAtividadeComplemento: TStringField;
    tMovAtividadeObsCadastro: TMemoField;
    tMovAtividadeObsPendencia: TMemoField;
    tMovAtividadeHoraPedido: TTimeField;
    tMovAtividadeHoraPrazo: TTimeField;
    tMovAtividadeLida: TBooleanField;
    tPessoaOutros: TBooleanField;
    tUsuarioCodPessoa: TIntegerField;
    tPessoaProcesso: TTable;
    tPessoaProcessoCodPessoa: TIntegerField;
    tPessoaProcessoCodSetor: TIntegerField;
    tPessoaProcessoCodProcesso: TIntegerField;
    tPessoaProcessoPossui: TBooleanField;
    dsPessoaProcesso: TDataSource;
    tPessoaProcessolkNomeProcesso: TStringField;
    tPessoaCodCliente: TStringField;
    tMovObjetivoAcaoObs: TMemoField;
    tMovProcessoItensJustificativa: TMemoField;
    tUsuarioFuncionario: TBooleanField;
    tUsuarioInsFuncionario: TBooleanField;
    tUsuarioExcFuncionario: TBooleanField;
    tUsuarioAltFuncionario: TBooleanField;
    tAgenda: TTable;
    dsAgenda: TDataSource;
    tAgendaHist: TTable;
    dsAgendaHist: TDataSource;
    tAgendaHistCodigo: TIntegerField;
    tAgendaHistItem: TIntegerField;
    tAgendaHistDtAntAgenda: TDateField;
    tAgendaHistMotivoReagendamento: TMemoField;
    tUsuarioAgenda: TBooleanField;
    tUsuarioInsAgenda: TBooleanField;
    tUsuarioExcAgenda: TBooleanField;
    tUsuarioAltAgenda: TBooleanField;
    tAgendaHistUsuario: TStringField;
    tAgendaHistDtCadastro: TDateField;
    tAgendaHistHrCadastro: TTimeField;
    tAgendaCodigo: TIntegerField;
    tAgendaDtAgenda: TDateField;
    tAgendaObs: TMemoField;
    tAgendaPauta: TMemoField;
    tAgendaDecises: TMemoField;
    tAgendaPendncias: TMemoField;
    tAgendaNomePessoa: TStringField;
    tAgendaUsuario: TStringField;
    tAgendaDtCadastro: TDateField;
    tAgendaHrCadastro: TTimeField;
    tAgendaConcluido: TBooleanField;
    tAgendaHrAgenda: TTimeField;
    tAgendaHistHrAntAgenda: TTimeField;
    tMovObjetivoNumMov: TIntegerField;
    tMovObjetivoCodPerspectiva: TIntegerField;
    tMovObjetivoEstrategia: TStringField;
    tMovObjetivoAcaoNumMov: TIntegerField;
    tMovObjetivoAcaoItensNumMov: TIntegerField;
    tPerspectiva: TTable;
    dsPerspectiva: TDataSource;
    tPerspectivaCodigo: TIntegerField;
    tPerspectivaNome: TStringField;
    tUsuarioPerspectiva: TBooleanField;
    tUsuarioInsPerspectiva: TBooleanField;
    tUsuarioExcPerspectiva: TBooleanField;
    tUsuarioAltPerspectiva: TBooleanField;
    tMovObjetivolkNomePerspectiva: TStringField;
    tMovObjetivoAcaoItensVlrRealizado: TFloatField;
    tMovObjetivoUsuario: TStringField;
    tMovObjetivoDtUsuario: TDateField;
    tMovObjetivoHrUsuario: TTimeField;
    tMovObjetivoAcaoComo: TStringField;
    tMovObjetivoAcaoValor: TFloatField;
    tMovObjetivoAcaoCorrelacao: TStringField;
    tFato: TTable;
    tFatoCodCliente: TIntegerField;
    tFatoDtMovimento: TDateField;
    tFatoFato: TMemoField;
    tFatoCausa: TMemoField;
    tFatoAcao: TMemoField;
    tFatoCodResponsavel: TIntegerField;
    tFatoObs: TMemoField;
    tFatoTipoSatisfacao: TIntegerField;
    tFatoUsuario: TStringField;
    dsFato: TDataSource;
    tUsuarioFato: TBooleanField;
    tUsuarioInsFato: TBooleanField;
    tUsuarioExcFato: TBooleanField;
    tUsuarioAltFato: TBooleanField;
    tFatoDtUsuario: TDateField;
    tFatoHrUsuario: TTimeField;
    tFatoNumMov: TIntegerField;
    tUsuarioIdeias: TBooleanField;
    tUsuarioInsIdeias: TBooleanField;
    tUsuarioExcIdeias: TBooleanField;
    tUsuarioAltIdeias: TBooleanField;
    tIdeias: TTable;
    dsIdeias: TDataSource;
    tIdeiasNumMov: TIntegerField;
    tIdeiasDtMov: TDateField;
    tIdeiasCodFuncionario: TIntegerField;
    tIdeiasIdeia: TMemoField;
    tIdeiasColocarEmPratica: TMemoField;
    tIdeiasAplicabilidade: TMemoField;
    tIdeiasInvestimento: TMemoField;
    tIdeiasVlrInvestimento: TFloatField;
    tIdeiasRetorno: TMemoField;
    tIdeiasVlrRetorno: TFloatField;
    tIdeiasJustificativa: TMemoField;
    tIdeiasAprovada: TStringField;
    tIdeiasUsuario: TStringField;
    tIdeiasDtUsuario: TDateField;
    tIdeiasHrUsuario: TTimeField;
    tUsuarioIndicadores: TBooleanField;
    tUsuarioInsIndicadores: TBooleanField;
    tUsuarioExcIndicadores: TBooleanField;
    tUsuarioAltIndicadores: TBooleanField;
    tIndicadores: TTable;
    dsIndicadores: TDataSource;
    tIndicadoresCodigo: TIntegerField;
    tIndicadoresTipoAnoMes: TStringField;
    tFatoAcaoPrev: TMemoField;
    tIndicadoresNome: TStringField;
    tResumoAnual: TTable;
    dsResumoAnual: TDataSource;
    tResumoAnualIndic: TTable;
    dsResumoAnualIndic: TDataSource;
    tResumoAnualIndicId: TIntegerField;
    tResumoAnualIndicResumoAnualId: TIntegerField;
    tResumoAnualIndicIndicadorId: TIntegerField;
    tResumoAnualIndicResultado: TFloatField;
    tResumoAnualId: TIntegerField;
    tResumoAnualAno: TStringField;
    tResumoAnualFuncionarios: TIntegerField;
    tResumoAnualFaturamento: TStringField;
    tResumoAnualIndiclkIndicador: TStringField;
    tIndicadoresMeta: TFloatField;
    tIndicadoresReferencia: TFloatField;
    tResumoAnualIndicMeta: TFloatField;
    tResumoAnualIndicReferencia: TFloatField;
    tResumoAnualclFaturamento: TStringField;
    tProcessoTipoDia: TStringField;
    tFeriado: TTable;
    tFeriadoData: TDateField;
    tFeriadoDescricao: TStringField;
    dsFeriado: TDataSource;
    tUsuarioFeriados: TBooleanField;
    tUsuarioInsFeriados: TBooleanField;
    tUsuarioExcFeriados: TBooleanField;
    tUsuarioAltFeriados: TBooleanField;
    tMovProcessoVisita: TTable;
    dsMovProcessoVisita: TDataSource;
    tMovProcessoVisitaNumMov: TIntegerField;
    tMovProcessoVisitaItem: TIntegerField;
    tMovProcessoVisitaDtVisita: TDateField;
    tMovProcessoVisitaCodFuncionario: TIntegerField;
    tMovProcessoVisitaObs: TMemoField;
    tMovProcessoVisitalkNomeFuncionario: TStringField;
    tUsuarioConsVisita: TBooleanField;
    tUsuarioInsConsVisita: TBooleanField;
    tUsuarioExcConsVisita: TBooleanField;
    tUsuarioAltConsVisita: TBooleanField;
    tTipoProcesso: TTable;
    dsTipoProcesso: TDataSource;
    tProcessoGeral: TTable;
    dsProcessoGeral: TDataSource;
    tProcessoGeralItem: TTable;
    dsProcessoGeralItem: TDataSource;
    tTipoProcessoCodigo: TIntegerField;
    tTipoProcessoNome: TStringField;
    tProcessoGeralNumMov: TIntegerField;
    tProcessoGeralCodCliente: TIntegerField;
    tProcessoGeralNomeCliente: TStringField;
    tProcessoGeralCodTipoProcesso: TIntegerField;
    tProcessoGeralObs: TMemoField;
    tProcessoGeralConclusao: TBooleanField;
    tUsuarioTipoProcesso: TBooleanField;
    tUsuarioInsTipoProcesso: TBooleanField;
    tUsuarioExcTipoProcesso: TBooleanField;
    tUsuarioAltTipoProcesso: TBooleanField;
    tUsuarioProcessoGeral: TBooleanField;
    tUsuarioInsProcessoGeral: TBooleanField;
    tUsuarioExcProcessoGeral: TBooleanField;
    tUsuarioAltProcessoGeral: TBooleanField;
    tProcessoGeralDtConclusao: TDateField;
    tProcessoGeralItemNumMov: TIntegerField;
    tProcessoGeralItemItem: TIntegerField;
    tProcessoGeralItemData: TDateField;
    tProcessoGeralItemObs: TMemoField;
    tProcessoGeralData: TDateField;
    tProcessoGeralItemDtConcluida: TDateField;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure tUsuarioAfterPost(DataSet: TDataSet);
    procedure tUsuarioInsAfterPost(DataSet: TDataSet);
    procedure tUsuarioExcAfterPost(DataSet: TDataSet);
    procedure tUsuarioAltAfterPost(DataSet: TDataSet);
    procedure tPessoaAfterPost(DataSet: TDataSet);
    procedure tPessoaSetorAfterPost(DataSet: TDataSet);
    procedure tPessoaNewRecord(DataSet: TDataSet);
    procedure tSetorAfterPost(DataSet: TDataSet);
    procedure tSetorProcessoAfterPost(DataSet: TDataSet);
    procedure tProcessoAfterPost(DataSet: TDataSet);
    procedure tAcaoAfterPost(DataSet: TDataSet);
    procedure tAcaoNewRecord(DataSet: TDataSet);
    procedure tMovAcaoAfterPost(DataSet: TDataSet);
    procedure tMovProcessoAfterPost(DataSet: TDataSet);
    procedure tMovProcessoNewRecord(DataSet: TDataSet);
    procedure tProcessoNewRecord(DataSet: TDataSet);
    procedure tMovProcessoItensAfterPost(DataSet: TDataSet);
    procedure tMovProcessoSetorAfterPost(DataSet: TDataSet);
    procedure tMovProcessoItensNewRecord(DataSet: TDataSet);
    procedure tObjetivoAfterPost(DataSet: TDataSet);
    procedure tAtividadeAfterPost(DataSet: TDataSet);
    procedure tMovAtividadeCalcFields(DataSet: TDataSet);
    procedure tMovAtividadeAfterPost(DataSet: TDataSet);
    procedure tMovObjetivoAfterPost(DataSet: TDataSet);
    procedure tMovObjetivoAcaoAfterPost(DataSet: TDataSet);
    procedure tMovObjetivoAcaoItensAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tMovAtividadeNewRecord(DataSet: TDataSet);
    procedure tPessoaProcessoAfterPost(DataSet: TDataSet);
    procedure tAgendaAfterPost(DataSet: TDataSet);
    procedure tAgendaHistAfterPost(DataSet: TDataSet);
    procedure tAgendaNewRecord(DataSet: TDataSet);
    procedure tAgendaHistNewRecord(DataSet: TDataSet);
    procedure tPerspectivaAfterPost(DataSet: TDataSet);
    procedure tMovObjetivoNewRecord(DataSet: TDataSet);
    procedure tFatoAfterPost(DataSet: TDataSet);
    procedure tFatoNewRecord(DataSet: TDataSet);
    procedure tIdeiasAfterPost(DataSet: TDataSet);
    procedure tIdeiasNewRecord(DataSet: TDataSet);
    procedure tIndicadoresAfterPost(DataSet: TDataSet);
    procedure tIndicadoresNewRecord(DataSet: TDataSet);
    procedure tResumoAnualBeforeDelete(DataSet: TDataSet);
    procedure tResumoAnualAfterPost(DataSet: TDataSet);
    procedure tResumoAnualAfterInsert(DataSet: TDataSet);
    procedure tResumoAnualIndicAfterInsert(DataSet: TDataSet);
    procedure tResumoAnualCalcFields(DataSet: TDataSet);
    procedure tFeriadoAfterPost(DataSet: TDataSet);
    procedure tMovProcessoVisitaAfterPost(DataSet: TDataSet);
    procedure tTipoProcessoAfterPost(DataSet: TDataSet);
    procedure tProcessoGeralAfterPost(DataSet: TDataSet);
    procedure tProcessoGeralItemAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure PopulaTabelaMes;
  public
    { Public declarations }
    procedure Mostra_Menu;
    Procedure Login;
  end;

var
  DM1: TDM1;
  vNumPedido, vItemPedido : Integer;
  vCodProdutoPos : Integer; //Serve para posicionar o produto quando é chamado de algum form
  vFormulario : String;
  vDataRef : TDate;
  vSenhaAlt : String;
  vDtPreco : TDate;

implementation

uses UMenuP, ULogin, SendMailOptions, StdConvs, UDM2, DateUtils;

{$R *.DFM}

procedure TDM1.Login;
begin
  fLogin := TfLogin.Create(Self);
  fLogin.ShowModal;
end;

procedure TDM1.Mostra_Menu;
begin
// Manutenção
  fMenuP.Pessoa1.Visible               := tUsuarioPessoa.AsBoolean;
  fMenuP.Setor1.Visible                := tUsuarioSetor.AsBoolean;
  fMenuP.Processo1.Visible             := tUsuarioProcesso.AsBoolean;
  fMenuP.Ao1.Visible                   := tUsuarioAcao.AsBoolean;
  fMenuP.MovimentodasAes1.Visible      := tUsuarioMovAcao.AsBoolean;
  fMenuP.MovimentodosProcesso1.Visible := tUsuarioMovProcesso.AsBoolean;
  fMenuP.Objetivo1.Visible             := tUsuarioObjetivo.AsBoolean;
  fMenuP.Atividade1.Visible            := tUsuarioAtividade.AsBoolean;
  fMenuP.Funcionrios1.Visible          := tUsuarioFuncionario.AsBoolean;
  fMenuP.Agenda1.Visible               := tUsuarioAgenda.AsBoolean;
  fMenuP.Perspectiva1.Visible          := tUsuarioPerspectiva.AsBoolean;
  fMenuP.FatoCausaAo1.Visible          := tUsuarioFato.AsBoolean;
  fMenuP.RegistrodeIdiasCriativas1.Visible := tUsuarioIdeias.AsBoolean;
  fMenuP.Indicadores1.Visible              := tUsuarioIndicadores.AsBoolean;
  fMenuP.Feriados1.Visible             := tUsuarioFeriados.AsBoolean;
  fMenuP.TipoProcesso1.Visible         := tUsuarioTipoProcesso.AsBoolean;
  fMenuP.ProcessoGeral1.Visible        := tUsuarioProcessoGeral.AsBoolean;
  if not(tUsuarioPessoa.AsBoolean)      and not(tUsuarioSetor.AsBoolean)       and
     not(tUsuarioProcesso.AsBoolean)    and not(tUsuarioAcao.AsBoolean)        and
     not(tUsuarioMovAcao.AsBoolean)     and not(tUsuarioMovProcesso.AsBoolean) and
     not(tUsuarioObjetivo.AsBoolean)    and not(tUsuarioFuncionario.AsBoolean) and
     not(tUsuarioAgenda.AsBoolean)      and not(tUsuarioPerspectiva.AsBoolean) and
     not(tUsuarioFato.AsBoolean)        and not(tUsuarioIdeias.AsBoolean)      and
     not(tUsuarioIndicadores.AsBoolean) and not(tUsuarioFeriados.AsBoolean)    and
     not(tUsuarioTipoProcesso.AsBoolean)and not(tUsuarioProcessoGeral.AsBoolean) then
    fMenuP.Manuteno1.Visible      := False
  else
    fMenuP.Manuteno1.Visible      := True;
  fMenuP.Sair1.Visible := tUsuarioAdministrador.AsBoolean;

  fMenuP.MovimentodasAtividades1.Visible := tUsuarioMovAtividade.AsBoolean;
  fMenuP.MovimentodosObjetivos1.Visible  := tUsuarioMovObjetivo.AsBoolean;
end;

procedure TDM1.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TDM1.tUsuarioAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuario.Handle);
end;

procedure TDM1.tUsuarioInsAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuarioIns.Handle);
end;

procedure TDM1.tUsuarioExcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuarioExc.Handle);
end;

procedure TDM1.tUsuarioAltAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuarioAlt.Handle);
end;

procedure TDM1.tPessoaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPessoa.Handle);
end;

procedure TDM1.tPessoaSetorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPessoaSetor.Handle);
end;

procedure TDM1.tPessoaNewRecord(DataSet: TDataSet);
begin
  tPessoaFuncionario.AsBoolean := False;
  tPessoaCliente.AsBoolean     := False;
  tPessoaOutros.AsBoolean      := False;
  tPessoaDtCadastro.AsDateTime := Date;
  tPessoaHrCadastro.AsDateTime := Now;
  tPessoaUsuario.AsString      := tUsuarioUsuario.AsString;
  tPessoaSituacao.AsString     := 'A';
end;

procedure TDM1.tSetorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tSetor.Handle);
end;

procedure TDM1.tSetorProcessoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tSetorProcesso.Handle);
end;

procedure TDM1.tProcessoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tSetorProcesso.Handle);
end;

procedure TDM1.tAcaoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tAcao.Handle);
end;

procedure TDM1.tAcaoNewRecord(DataSet: TDataSet);
begin
  tAcaoCodFuncionario1.AsInteger := 0;
  tAcaoCodFuncionario2.AsInteger := 0;
end;

procedure TDM1.tMovAcaoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovAcao.Handle);
end;

procedure TDM1.tMovProcessoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovProcesso.Handle);
end;

procedure TDM1.tMovProcessoNewRecord(DataSet: TDataSet);
begin
  tMovProcessoData.AsDateTime := Date;
end;

procedure TDM1.tProcessoNewRecord(DataSet: TDataSet);
begin
  tProcessoVectoMesSeguinte.AsBoolean := True;
end;

procedure TDM1.tMovProcessoItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovProcessoItens.Handle);
end;

procedure TDM1.tMovProcessoSetorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovProcessoSetor.Handle);
end;

procedure TDM1.tMovProcessoItensNewRecord(DataSet: TDataSet);
begin
  tMovProcessoItensDtConclusao.Clear;
end;

procedure TDM1.tObjetivoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tObjetivo.Handle);
end;

procedure TDM1.tAtividadeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tAtividade.Handle);
end;

procedure TDM1.tMovAtividadeCalcFields(DataSet: TDataSet);
begin
  if tMovAtividadeDtConclusao.AsDateTime > 0 then
    tMovAtividadeSituacao.AsString := 'Concluído'
  else
    tMovAtividadeSituacao.AsString := 'Pendente'
end;

procedure TDM1.tMovAtividadeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovAtividade.Handle);
end;

procedure TDM1.tMovObjetivoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovObjetivo.Handle);
end;

procedure TDM1.tMovObjetivoAcaoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovObjetivoAcao.Handle);
end;

procedure TDM1.tMovObjetivoAcaoItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovObjetivoAcaoItens.Handle);
end;

procedure TDM1.PopulaTabelaMes;
  function RetornaMes(iMes: Integer): String;
  begin
    case iMes of
      0: Result := '[Permanente]';
      1: Result := 'JANEIRO';
      2: Result := 'FEVEREIRO';
      3: Result := 'MARÇO';
      4: Result := 'ABRIL';
      5: Result := 'MAIO';
      6: Result := 'JUNHO';
      7: Result := 'JULHO';
      8: Result := 'AGOSTO';
      9: Result := 'SETEMBRO';
      10: Result := 'OUTUBRO';
      11: Result := 'NOVEMBRO';
      12: Result := 'DEZEMBRO';
    end;
  end;

  procedure InsereMes(iMes: Integer);
  begin
    mMes.Insert;
    mMesCodMes.AsInteger := iMes ;
    mMesNome.AsString    := RetornaMes(iMes);
    mMes.Post;
  end;

var
  iCount: Integer;
begin
  for iCount := 0 to 12 do
  begin
    InsereMes(iCount);
  end;
end;

procedure TDM1.DataModuleCreate(Sender: TObject);
begin
  PopulaTabelaMes;
end;

procedure TDM1.tMovAtividadeNewRecord(DataSet: TDataSet);
begin
  DM1.tMovAtividadeLida.AsBoolean := False;
end;

procedure TDM1.tPessoaProcessoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPessoaProcesso.Handle);
end;

procedure TDM1.tAgendaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tAgenda.Handle);
end;

procedure TDM1.tAgendaHistAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tAgendaHist.Handle);
end;

procedure TDM1.tAgendaNewRecord(DataSet: TDataSet);
begin
  tAgendaDtCadastro.AsDateTime := Date;
  tAgendaUsuario.AsString      := DM1.tUsuarioUsuario.AsString;
  tAgendaHrCadastro.AsDateTime := Now;
  tAgendaConcluido.AsBoolean   := False;
end;

procedure TDM1.tAgendaHistNewRecord(DataSet: TDataSet);
begin
  DM1.tAgendaHistDtCadastro.AsDateTime := Date;
  DM1.tAgendaHistHrCadastro.AsDateTime := Now;
  DM1.tAgendaHistUsuario.AsString      := DM1.tUsuarioUsuario.AsString;
end;

procedure TDM1.tPerspectivaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPerspectiva.Handle);
end;

procedure TDM1.tMovObjetivoNewRecord(DataSet: TDataSet);
begin
  tMovObjetivoUsuario.AsString     := tUsuarioUsuario.AsString;
  tMovObjetivoDtUsuario.AsDateTime := Date;
  tMovObjetivoHrUsuario.AsDateTime := Now;
end;

procedure TDM1.tFatoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFato.Handle);
end;

procedure TDM1.tFatoNewRecord(DataSet: TDataSet);
begin
  tFatoUsuario.AsString     := DM1.tUsuarioUsuario.AsString;
  tFatoDtUsuario.AsDateTime := Date;
  tFatoHrUsuario.AsDateTime := Now;
end;

procedure TDM1.tIdeiasAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tIdeias.Handle);
end;

procedure TDM1.tIdeiasNewRecord(DataSet: TDataSet);
begin
  tIdeiasAprovada.AsString    := 'P';
  tIdeiasUsuario.AsString     := DM1.tUsuarioUsuario.AsString;
  tIdeiasDtUsuario.AsDateTime := Date;
  tIdeiasHrUsuario.AsDateTime := Now;
end;

procedure TDM1.tIndicadoresAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tIndicadores.Handle);
end;

procedure TDM1.tIndicadoresNewRecord(DataSet: TDataSet);
begin
  tIndicadoresTipoAnoMes.AsString := '';
end;

procedure TDM1.tResumoAnualBeforeDelete(DataSet: TDataSet);
begin
  while not tResumoAnualIndic.IsEmpty do
    tResumoAnualIndic.Delete;
end;

procedure TDM1.tResumoAnualAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tResumoAnual.Handle);
  DBISaveChanges(tResumoAnualIndic.Handle);
end;

procedure TDM1.tResumoAnualAfterInsert(DataSet: TDataSet);
begin
  dm2.tResumoAnual.Open;
  dm2.tResumoAnual.Last;
  tResumoAnualId.AsInteger := dm2.tResumoAnualId.AsInteger + 1;
  dm2.tResumoAnual.Close;
  dm1.tResumoAnual.Post;
  dm1.tResumoAnual.Edit;
end;

procedure TDM1.tResumoAnualIndicAfterInsert(DataSet: TDataSet);
begin
  dm2.tResumoAnualIndic.Open;
  dm2.tResumoAnualIndic.Last;
  tResumoAnualIndicId.AsInteger := dm2.tResumoAnualIndicId.AsInteger + 1;
  dm2.tResumoAnualIndic.Close;
end;

procedure TDM1.tResumoAnualCalcFields(DataSet: TDataSet);
begin
  if not tResumoAnualFaturamento.IsNull then
    case tResumoAnualFaturamento.AsInteger of
      1: tResumoAnualclFaturamento.AsString := 'Até R$ 15.000,00';
      2: tResumoAnualclFaturamento.AsString := 'R$ 15.000,00 à R$ 30.000,00';
      3: tResumoAnualclFaturamento.AsString := 'R$ 30.000,00 à R$ 50.000,00';
      4: tResumoAnualclFaturamento.AsString := 'Mais de R$ 50.000,00';
    end;
end;

procedure TDM1.tFeriadoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFeriado.Handle);
end;

procedure TDM1.tMovProcessoVisitaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovProcessoVisita.Handle);
end;

procedure TDM1.tTipoProcessoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTipoProcesso.Handle);
end;

procedure TDM1.tProcessoGeralAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProcessoGeral.Handle);
end;

procedure TDM1.tProcessoGeralItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProcessoGeralItem.Handle);
end;

end.
