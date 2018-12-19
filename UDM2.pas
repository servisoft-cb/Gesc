Unit UDM2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBIProcs;                                  

type
  TDM2 = class(TDataModule)
    tPessoa2: TTable;
    dsPessoa2: TDataSource;
    tPessoa2Codigo: TIntegerField;
    tPessoa2Nome: TStringField;
    tPessoa2Situacao: TStringField;
    tPessoa2DtAdmissao: TDateField;
    tPessoa2DtDemissao: TDateField;
    tSetor2: TTable;
    tSetor2Codigo: TIntegerField;
    tSetor2Nome: TStringField;
    tPessoa2Funcionario: TBooleanField;
    tPessoa2Cliente: TBooleanField;
    tPessoa2Usuario: TStringField;
    tPessoa2DtCadastro: TDateField;
    tPessoa2HrCadastro: TTimeField;
    tProcesso2: TTable;
    tProcesso2Codigo: TIntegerField;
    tProcesso2Responsavel: TStringField;
    tAcao2: TTable;
    tAcao2Codigo: TIntegerField;
    tAcao2Nome: TStringField;
    tMovAcao2: TTable;
    tMovAcao2NumMov: TIntegerField;
    tMovProcesso2: TTable;
    tMovProcesso2NumMov: TIntegerField;
    tMovProcesso2CodCliente: TIntegerField;
    tProcesso2Nome: TStringField;
    tProcesso2DiaVecto: TIntegerField;
    tProcesso2VectoMesSeguinte: TBooleanField;
    tPessoaSetor2: TTable;
    tPessoaSetor2CodPessoa: TIntegerField;
    tPessoaSetor2CodSetor: TIntegerField;
    tObjetivo2: TTable;
    tObjetivo2Codigo: TIntegerField;
    tObjetivo2Nome: TStringField;
    tAtividade2: TTable;
    tAtividade2Codigo: TIntegerField;
    tAtividade2Nome: TStringField;
    tMovAtividade2: TTable;
    tMovAtividade2NumMov: TIntegerField;
    tMovAtividade2CodCliente: TIntegerField;
    tMovAtividade2CodAtividade: TIntegerField;
    tMovAtividade2CodAtendente: TIntegerField;
    tMovAtividade2CodResponsavel: TIntegerField;
    tMovAtividade2DtPedido: TDateField;
    tMovAtividade2DtPrazo: TDateField;
    tMovAtividade2DtConclusao: TDateField;
    tMovAtividade2HrConclusao: TTimeField;
    tMovAtividade2Obs: TMemoField;
    tMovAtividade2QtdDiasAtraso: TIntegerField;
    tMovAtividade2Situacao: TStringField;
    tPessoaProcesso: TTable;
    tPessoaProcessoCodPessoa: TIntegerField;
    tPessoaProcessoCodSetor: TIntegerField;
    tPessoaProcessoCodProcesso: TIntegerField;
    tPessoaProcessoPossui: TBooleanField;
    tAgenda2: TTable;
    tAgenda2Codigo: TIntegerField;
    tAgendaHist2: TTable;
    tAgendaHist2Codigo: TIntegerField;
    tAgendaHist2Item: TIntegerField;
    tAgendaHist2DtAntAgenda: TDateField;
    tAgendaHist2MotivoReagendamento: TMemoField;
    tAgendaHist2Usuario: TStringField;
    tAgendaHist2DtCadastro: TDateField;
    tAgendaHist2HrCadastro: TTimeField;
    dsAgenda2: TDataSource;
    tPerspectiva2: TTable;
    tPerspectiva2Codigo: TIntegerField;
    tMovObjetivo2: TTable;
    tMovObjetivo2NumMov: TIntegerField;
    tMovObjetivo2Ano: TIntegerField;
    tMovObjetivo2CodObjetivo: TIntegerField;
    tMovObjetivo2CodPerspectiva: TIntegerField;
    tMovObjetivo2Estrategia: TStringField;
    tFato2: TTable;
    tFato2NumMov: TIntegerField;
    tIdeias2: TTable;
    tIdeias2NumMov: TIntegerField;
    tIndicadores2: TTable;
    tIndicadores2Codigo: TIntegerField;
    tResumoAnual: TTable;
    tResumoAnualIndic: TTable;
    tResumoAnualId: TIntegerField;
    tResumoAnualIndicResumoAnualId: TIntegerField;
    tResumoAnualIndicId: TIntegerField;
    tMovProcesso2MesRef: TIntegerField;
    tMovProcesso2AnoRef: TIntegerField;
    tPerspectiva2Nome: TStringField;
    tProcesso2TipoDia: TStringField;
    tTipoProcesso2: TTable;
    tTipoProcesso2Codigo: TIntegerField;
    tTipoProcesso2Nome: TStringField;
    dsTipoProcesso2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM2: TDM2;

implementation

uses UDM1;


{$R *.DFM}

end.
