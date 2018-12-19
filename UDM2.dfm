object DM2: TDM2
  OldCreateOrder = False
  Left = 217
  Top = 148
  Height = 414
  Width = 680
  object tPessoa2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbPessoa.db'
    Left = 176
    Top = 72
    object tPessoa2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tPessoa2Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tPessoa2Situacao: TStringField
      FieldName = 'Situacao'
      Size = 1
    end
    object tPessoa2DtAdmissao: TDateField
      FieldName = 'DtAdmissao'
    end
    object tPessoa2DtDemissao: TDateField
      FieldName = 'DtDemissao'
    end
    object tPessoa2Funcionario: TBooleanField
      FieldName = 'Funcionario'
    end
    object tPessoa2Cliente: TBooleanField
      FieldName = 'Cliente'
    end
    object tPessoa2Usuario: TStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object tPessoa2DtCadastro: TDateField
      FieldName = 'DtCadastro'
    end
    object tPessoa2HrCadastro: TTimeField
      FieldName = 'HrCadastro'
    end
  end
  object dsPessoa2: TDataSource
    DataSet = tPessoa2
    Left = 200
    Top = 72
  end
  object tSetor2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbSetor.db'
    Left = 128
    Top = 128
    object tSetor2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tSetor2Nome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object tProcesso2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbProcesso.DB'
    Left = 168
    Top = 128
    object tProcesso2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tProcesso2Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tProcesso2Responsavel: TStringField
      FieldName = 'Responsavel'
      Size = 1
    end
    object tProcesso2DiaVecto: TIntegerField
      FieldName = 'DiaVecto'
    end
    object tProcesso2VectoMesSeguinte: TBooleanField
      FieldName = 'VectoMesSeguinte'
    end
    object tProcesso2TipoDia: TStringField
      FieldName = 'TipoDia'
      Size = 1
    end
  end
  object tAcao2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbAcao.db'
    Left = 328
    Top = 128
    object tAcao2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tAcao2Nome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object tMovAcao2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbMovAcao.db'
    Left = 112
    Top = 72
    object tMovAcao2NumMov: TIntegerField
      FieldName = 'NumMov'
    end
  end
  object tMovProcesso2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbMovProcesso.db'
    Left = 88
    Top = 128
    object tMovProcesso2NumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object tMovProcesso2CodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object tMovProcesso2MesRef: TIntegerField
      FieldName = 'MesRef'
    end
    object tMovProcesso2AnoRef: TIntegerField
      FieldName = 'AnoRef'
    end
  end
  object tPessoaSetor2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbPessoaSetor.db'
    Left = 368
    Top = 128
    object tPessoaSetor2CodPessoa: TIntegerField
      FieldName = 'CodPessoa'
    end
    object tPessoaSetor2CodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
  end
  object tObjetivo2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbObjetivo.db'
    Left = 176
    Top = 16
    object tObjetivo2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tObjetivo2Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object tAtividade2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbAtividade.db'
    Left = 40
    Top = 16
    object tAtividade2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tAtividade2Nome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object tMovAtividade2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbMovAtividade.db'
    Left = 32
    Top = 72
    object tMovAtividade2NumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object tMovAtividade2CodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object tMovAtividade2CodAtividade: TIntegerField
      FieldName = 'CodAtividade'
    end
    object tMovAtividade2CodAtendente: TIntegerField
      FieldName = 'CodAtendente'
    end
    object tMovAtividade2CodResponsavel: TIntegerField
      FieldName = 'CodResponsavel'
    end
    object tMovAtividade2DtPedido: TDateField
      FieldName = 'DtPedido'
    end
    object tMovAtividade2DtPrazo: TDateField
      FieldName = 'DtPrazo'
    end
    object tMovAtividade2DtConclusao: TDateField
      FieldName = 'DtConclusao'
    end
    object tMovAtividade2HrConclusao: TTimeField
      FieldName = 'HrConclusao'
    end
    object tMovAtividade2Obs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tMovAtividade2QtdDiasAtraso: TIntegerField
      FieldName = 'QtdDiasAtraso'
    end
    object tMovAtividade2Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Size = 10
      Calculated = True
    end
  end
  object tPessoaProcesso: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbPessoaProcesso.db'
    Left = 112
    Top = 16
    object tPessoaProcessoCodPessoa: TIntegerField
      FieldName = 'CodPessoa'
    end
    object tPessoaProcessoCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object tPessoaProcessoCodProcesso: TIntegerField
      FieldName = 'CodProcesso'
    end
    object tPessoaProcessoPossui: TBooleanField
      FieldName = 'Possui'
    end
  end
  object tAgenda2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbAgenda.DB'
    Left = 264
    Top = 72
    object tAgenda2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
  end
  object tAgendaHist2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Codigo'
    MasterFields = 'Codigo'
    MasterSource = DM1.dsAgenda
    TableName = 'dbAgendaHist.DB'
    Left = 208
    Top = 128
    object tAgendaHist2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tAgendaHist2Item: TIntegerField
      FieldName = 'Item'
    end
    object tAgendaHist2DtAntAgenda: TDateField
      FieldName = 'DtAntAgenda'
    end
    object tAgendaHist2MotivoReagendamento: TMemoField
      FieldName = 'MotivoReagendamento'
      BlobType = ftMemo
      Size = 1
    end
    object tAgendaHist2Usuario: TStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object tAgendaHist2DtCadastro: TDateField
      FieldName = 'DtCadastro'
    end
    object tAgendaHist2HrCadastro: TTimeField
      FieldName = 'HrCadastro'
    end
  end
  object dsAgenda2: TDataSource
    DataSet = tAgenda2
    Left = 288
    Top = 72
  end
  object tPerspectiva2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbPerspectiva.db'
    Left = 248
    Top = 128
    object tPerspectiva2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tPerspectiva2Nome: TStringField
      FieldName = 'Nome'
      Size = 25
    end
  end
  object tMovObjetivo2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbMovObjetivo.DB'
    Left = 240
    Top = 16
    object tMovObjetivo2NumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object tMovObjetivo2Ano: TIntegerField
      FieldName = 'Ano'
    end
    object tMovObjetivo2CodObjetivo: TIntegerField
      FieldName = 'CodObjetivo'
    end
    object tMovObjetivo2CodPerspectiva: TIntegerField
      FieldName = 'CodPerspectiva'
    end
    object tMovObjetivo2Estrategia: TStringField
      FieldName = 'Estrategia'
      Size = 80
    end
  end
  object tFato2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbFato.DB'
    Left = 408
    Top = 128
    object tFato2NumMov: TIntegerField
      FieldName = 'NumMov'
    end
  end
  object tIdeias2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbIdeias.DB'
    Left = 448
    Top = 128
    object tIdeias2NumMov: TIntegerField
      FieldName = 'NumMov'
    end
  end
  object tIndicadores2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbIndicadores.db'
    Left = 288
    Top = 128
    object tIndicadores2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
  end
  object tResumoAnual: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbResumoAnual.db'
    Left = 488
    Top = 128
    object tResumoAnualId: TIntegerField
      FieldName = 'Id'
    end
  end
  object tResumoAnualIndic: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'ResumoAnualId;Id'
    MasterFields = 'Id'
    MasterSource = DM1.dsResumoAnual
    TableName = 'dbResumoAnualIndic.DB'
    Left = 528
    Top = 128
    object tResumoAnualIndicResumoAnualId: TIntegerField
      FieldName = 'ResumoAnualId'
    end
    object tResumoAnualIndicId: TIntegerField
      FieldName = 'Id'
    end
  end
  object tTipoProcesso2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbTipoProcesso.db'
    Left = 40
    Top = 188
    object tTipoProcesso2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tTipoProcesso2Nome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object dsTipoProcesso2: TDataSource
    DataSet = tTipoProcesso2
    Left = 68
    Top = 188
  end
end
