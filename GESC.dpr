program GESC;



uses
  Forms,
  DB,
  DBTables,
  USobre in 'USobre.pas' {fSobre},
  UAutorizacao in 'UAutorizacao.pas' {fAutorizacao},
  UUsuarios in 'UUsuarios.pas' {fUsuarios},
  UAcesso in 'UAcesso.pas' {fAcesso},
  USenha in 'USenha.pas' {fSenha},
  SelfPrintDefs in 'SelfPrintDefs.pas',
  SendMail in 'SendMail.pas',
  SendMailOptions in 'SendMailOptions.pas' {FormSendMailOptions},
  UDM2 in 'UDM2.pas' {DM2: TDataModule},
  UDM1 in 'UDM1.pas' {DM1: TDataModule},
  UEmpresa in 'UEmpresa.pas' {fEmpresa},
  UPermissoes in 'UPermissoes.pas' {fPermissoes},
  UPessoa in 'UPessoa.pas' {fPessoa},
  UMenuP in 'UMenuP.pas' {fMenuP},
  ULogin in 'ULogin.pas' {fLogin},
  USetor in 'USetor.pas' {fSetor},
  USetorProcesso in 'USetorProcesso.pas' {fSetorProcesso},
  UProcesso in 'UProcesso.pas' {fProcesso},
  UAcao in 'UAcao.pas' {fAcao},
  UMovAcao in 'UMovAcao.pas' {fMovAcao},
  UConsMovAcao in 'UConsMovAcao.pas' {fConsMovAcao},
  UMovProcesso in 'UMovProcesso.pas' {fMovProcesso},
  UMovProcessoItens in 'UMovProcessoItens.pas' {fMovProcessoItens},
  UMovProcessoConclusao in 'UMovProcessoConclusao.pas' {fMovProcessoConclusao},
  UObjetivo in 'UObjetivo.pas' {fObjetivo},
  UAtividade in 'UAtividade.pas' {fAtividade},
  UMovAtividade in 'UMovAtividade.pas' {fMovAtividade},
  UConsMovAtividade in 'UConsMovAtividade.pas' {fConsMovAtividade},
  UMovAtividadeConclusao in 'UMovAtividadeConclusao.pas' {fMovAtividadeConclusao},
  UMovObjetivo in 'UMovObjetivo.pas' {fMovObjetivo},
  UMovObjetivoItens in 'UMovObjetivoItens.pas' {fMovObjetivoItens},
  UMovObjetivoConclusao in 'UMovObjetivoConclusao.pas' {fMovObjetivoConclusao},
  UConsMovObjetivo in 'UConsMovObjetivo.pas' {fConsMovObjetivo},
  URelMovObjetivoAcao in 'URelMovObjetivoAcao.pas' {fRelMovObjetivoAcao},
  UConsMovProcesso in 'UConsMovProcesso.pas' {fConsMovProcesso},
  URelMovProcesso2 in 'URelMovProcesso2.pas' {fRelMovProcesso2},
  UPessoaProcesso in 'UPessoaProcesso.pas' {fPessoaProcesso},
  UFuncionario in 'UFuncionario.pas' {fFuncionario},
  UAgenda in 'UAgenda.pas' {fAgenda},
  UAgendaDig in 'UAgendaDig.pas' {fAgendaDig},
  UReagendamento in 'UReagendamento.pas' {fReagendamento},
  UConsAgenda in 'UConsAgenda.pas' {fConsAgenda},
  UPerspectiva in 'UPerspectiva.pas' {fPerspectiva},
  UMovObjetivoDiasAcao in 'UMovObjetivoDiasAcao.pas' {fMovObjetivoDiasAcao},
  UConsMovObjetivo2 in 'UConsMovObjetivo2.pas' {fConsMovObjetivo2},
  URelMovObjetivoAcao2 in 'URelMovObjetivoAcao2.pas' {fRelMovObjetivoAcao2},
  UFato in 'UFato.pas' {fFato},
  UConsFato in 'UConsFato.pas' {fConsFato},
  URelFato in 'URelFato.pas' {fRelFato},
  UIdeias in 'UIdeias.pas' {fIdeias},
  UConsIdeias in 'UConsIdeias.pas' {fConsIdeias},
  URelIdeias in 'URelIdeias.pas' {fRelIdeias},
  UIndicadores in 'UIndicadores.pas' {fIndicadores},
  UGeraProcessos in 'UGeraProcessos.pas' {fGeraProcessos},
  uResumoAnualC in 'uResumoAnualC.pas' {fResumoAnualC},
  rsDBUtils in '..\rslib\rsDBUtils.pas',
  rsDataSetError in '..\rslib\rsDataSetError.pas',
  uResumoAnual in 'uResumoAnual.pas' {fResumoAnual},
  uResumoAnualIndic in 'uResumoAnualIndic.pas' {fResumoAnualIndic},
  UFeriado in 'UFeriado.pas' {fFeriado},
  UVisitas in 'UVisitas.pas' {fVisitas},
  UConsMovProcessoVisita in 'UConsMovProcessoVisita.pas' {fConsMovProcessoVisitas},
  UrelVisitas in 'UrelVisitas.pas' {fRelVisitas},
  UTipoProcesso in 'UTipoProcesso.pas' {fTipoProcesso},
  UProcessoGeralItens in 'UProcessoGeralItens.pas' {fProcessoGeralItens},
  UProcessoGeral in 'UProcessoGeral.pas' {fProcessoGeral},
  UGraficoIndicadores in 'UGraficoIndicadores.pas' {fGraficoIndicadores},
  URelGrafico in 'URelGrafico.pas' {fRelGrafico};

{$R *.RES}

begin
  Application.Initialize;
  Session.AddPassword('46w3zq');
  Application.Title := 'Gestão de Escritório';
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(TfMenuP, fMenuP);
  Application.Run;
end.
