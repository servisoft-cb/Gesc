object fConsMovObjetivo: TfConsMovObjetivo
  Left = 216
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Mov. Objetivo'
  ClientHeight = 492
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 89
    Width = 782
    Height = 2
    Shape = bsTopLine
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 93
    Width = 783
    Height = 399
    TabStop = False
    Align = alClient
    DataSource = dsqConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    FixedCols = 2
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 11
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ano'
        Title.Alignment = taCenter
        Title.Caption = 'Ano'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomePerspectiva'
        Title.Alignment = taCenter
        Title.Caption = 'Perspectiva'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomeobjetivo'
        Title.Alignment = taCenter
        Title.Caption = 'Objetivo'
        Width = 246
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomeacao'
        Title.Alignment = taCenter
        Title.Caption = 'A'#231#227'o'
        Width = 212
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeMes'
        Title.Alignment = taCenter
        Title.Caption = 'M'#234's'
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'diavecto'
        Title.Alignment = taCenter
        Title.Caption = 'Dia'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtconclusao'
        Title.Alignment = taCenter
        Title.Caption = 'Data Conclus'#227'o'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estrategia'
        Title.Alignment = taCenter
        Title.Caption = 'Estrat'#233'gia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrRealizado'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Realizado'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 93
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 377
      Top = 12
      Width = 112
      Height = 13
      Caption = 'Data Conclus'#227'o Inicial: '
    end
    object Label6: TLabel
      Left = 595
      Top = 12
      Width = 22
      Height = 13
      Caption = 'Final'
    end
    object Label3: TLabel
      Left = 83
      Top = 11
      Width = 23
      Height = 13
      Caption = 'M'#234's:'
    end
    object Label4: TLabel
      Left = 12
      Top = 11
      Width = 22
      Height = 13
      Caption = 'Ano:'
    end
    object Bevel1: TBevel
      Left = 0
      Top = 51
      Width = 782
      Height = 2
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 61
      Top = 36
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Shape1: TShape
      Left = 601
      Top = 66
      Width = 23
      Height = 17
      Brush.Color = clRed
    end
    object Label9: TLabel
      Left = 627
      Top = 70
      Width = 48
      Height = 13
      Caption = 'Em Atraso'
    end
    object Shape2: TShape
      Left = 689
      Top = 66
      Width = 23
      Height = 17
      Brush.Color = clTeal
    end
    object Label10: TLabel
      Left = 715
      Top = 70
      Width = 49
      Height = 13
      Caption = 'Conclu'#237'da'
    end
    object BitBtn1: TBitBtn
      Left = 497
      Top = 57
      Width = 82
      Height = 29
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 333
      Top = 57
      Width = 82
      Height = 29
      Caption = '&Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object DateEdit5: TDateEdit
      Left = 489
      Top = 4
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object DateEdit6: TDateEdit
      Left = 624
      Top = 4
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 108
      Top = 4
      Width = 235
      Height = 21
      DropDownCount = 8
      LookupField = 'CodMes'
      LookupDisplay = 'nome'
      LookupSource = DM1.dsmMes
      TabOrder = 4
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 36
      Top = 4
      Width = 32
      Height = 21
      AutoSize = False
      DisplayFormat = '0000'
      TabOrder = 5
    end
    object BitBtn3: TBitBtn
      Left = 415
      Top = 57
      Width = 82
      Height = 29
      Caption = 'Im&primir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn3Click
    end
    object ComboBox1: TComboBox
      Left = 108
      Top = 28
      Width = 150
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 7
      Text = 'Pendente'
      Items.Strings = (
        'Pendente'
        'Conclu'#237'do'
        'Ambos')
    end
  end
  object qConsulta: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT i.ano, i.codobjetivo, o.nome nomeobjetivo, i.codacao, a.n' +
        'ome nomeacao, i.mes, i.diavecto, i.dtconclusao, a.codfuncionario' +
        '1, a.codfuncionario2, Dbmovobjetivo.NumMov, Dbmovobjetivo.CodPer' +
        'spectiva, Dbmovobjetivo.Estrategia, Dbperspectiva.Nome NomePersp' +
        'ectiva, Dbmovobjetivoacao.Valor, i.VlrRealizado, Dbmovobjetivoac' +
        'ao.Correlacao, Dbmovobjetivoacao.Como'
      'FROM dbmovobjetivoacaoitens i'
      '   INNER JOIN dbobjetivo o'
      '   ON  (i.codobjetivo = o.codigo)  '
      '   INNER JOIN dbacao a'
      '   ON  (i.codacao = a.codigo)  '
      '   INNER JOIN "dbMovObjetivo.DB" Dbmovobjetivo'
      '   ON  (Dbmovobjetivo.NumMov = i.NumMov)  '
      '   INNER JOIN "dbMovObjetivoAcao.DB" Dbmovobjetivoacao'
      '   ON  (i.NumMov = Dbmovobjetivoacao.NumMov)  '
      '   AND  (i.codacao = Dbmovobjetivoacao.CodAcao)  '
      '   INNER JOIN "dbPerspectiva.db" Dbperspectiva'
      '   ON  (Dbmovobjetivo.CodPerspectiva = Dbperspectiva.Codigo)  ')
    Left = 336
    Top = 167
    object qConsultaNumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object qConsultaano: TIntegerField
      FieldName = 'ano'
      Origin = 'TABELAS."dbMovObjetivoAcaoItens.DB".Ano'
    end
    object qConsultacodobjetivo: TIntegerField
      FieldName = 'codobjetivo'
      Origin = 'TABELAS."dbMovObjetivoAcaoItens.DB".CodObjetivo'
    end
    object qConsultanomeobjetivo: TStringField
      FieldName = 'nomeobjetivo'
      Origin = 'TABELAS."dbObjetivo.DB".Nome'
      Size = 50
    end
    object qConsultacodacao: TIntegerField
      FieldName = 'codacao'
      Origin = 'TABELAS."dbMovObjetivoAcaoItens.DB".CodAcao'
    end
    object qConsultanomeacao: TStringField
      FieldName = 'nomeacao'
      Origin = 'TABELAS."dbAcao.DB".Nome'
      Size = 40
    end
    object qConsultames: TIntegerField
      FieldName = 'mes'
      Origin = 'TABELAS."dbMovObjetivoAcaoItens.DB".Mes'
    end
    object qConsultadiavecto: TIntegerField
      FieldName = 'diavecto'
      Origin = 'TABELAS."dbMovObjetivoAcaoItens.DB".DiaVecto'
    end
    object qConsultadtconclusao: TDateField
      FieldName = 'dtconclusao'
      Origin = 'TABELAS."dbMovObjetivoAcaoItens.DB".DtConclusao'
    end
    object qConsultaNomeMes: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMes'
      LookupDataSet = DM1.mMes
      LookupKeyFields = 'CodMes'
      LookupResultField = 'nome'
      KeyFields = 'mes'
      Lookup = True
    end
    object qConsultacodfuncionario1: TIntegerField
      FieldName = 'codfuncionario1'
      Origin = 'TABELAS."dbAcao.DB".CodFuncionario1'
    end
    object qConsultacodfuncionario2: TIntegerField
      FieldName = 'codfuncionario2'
      Origin = 'TABELAS."dbAcao.DB".CodFuncionario2'
    end
    object qConsultaCodPerspectiva: TIntegerField
      FieldName = 'CodPerspectiva'
    end
    object qConsultaEstrategia: TStringField
      FieldName = 'Estrategia'
      Size = 80
    end
    object qConsultaNomePerspectiva: TStringField
      FieldName = 'NomePerspectiva'
      Size = 25
    end
    object qConsultaValor: TFloatField
      FieldName = 'Valor'
    end
    object qConsultaVlrRealizado: TFloatField
      FieldName = 'VlrRealizado'
    end
    object qConsultaCorrelacao: TStringField
      FieldName = 'Correlacao'
      Size = 3
    end
    object qConsultaComo: TStringField
      FieldName = 'Como'
      Size = 70
    end
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 368
    Top = 167
  end
  object mCronograma: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Mes'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia10'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    MasterFields = 'ID'
    MasterSource = dsObjetivoAcao
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 336
    Top = 272
    Data = {
      380100009619E0BD01000000180000000C000000000003000000380102494404
      00010000000000034D6573010049000000010005574944544802000200140004
      4469613101004900000001000557494454480200020014000444696132010049
      0000000100055749445448020002001400044469613301004900000001000557
      4944544802000200140004446961340100490000000100055749445448020002
      0014000444696135010049000000010005574944544802000200140004446961
      3601004900000001000557494454480200020014000444696137010049000000
      0100055749445448020002001400044469613801004900000001000557494454
      4802000200140004446961390100490000000100055749445448020002001400
      05446961313001004900000001000557494454480200020014000000}
    object mCronogramaID: TIntegerField
      FieldName = 'ID'
    end
    object mCronogramaMes: TStringField
      FieldName = 'Mes'
    end
    object mCronogramaDia1: TStringField
      DisplayWidth = 2
      FieldName = 'Dia1'
      Size = 4
    end
    object mCronogramaDia2: TStringField
      DisplayWidth = 2
      FieldName = 'Dia2'
      Size = 4
    end
    object mCronogramaDia3: TStringField
      DisplayWidth = 2
      FieldName = 'Dia3'
      Size = 4
    end
    object mCronogramaDia4: TStringField
      DisplayWidth = 2
      FieldName = 'Dia4'
      Size = 4
    end
    object mCronogramaDia5: TStringField
      DisplayWidth = 2
      FieldName = 'Dia5'
      Size = 4
    end
    object mCronogramaDia6: TStringField
      DisplayWidth = 2
      FieldName = 'Dia6'
      Size = 4
    end
    object mCronogramaDia7: TStringField
      DisplayWidth = 2
      FieldName = 'Dia7'
      Size = 4
    end
    object mCronogramaDia8: TStringField
      DisplayWidth = 2
      FieldName = 'Dia8'
      Size = 4
    end
    object mCronogramaDia9: TStringField
      DisplayWidth = 2
      FieldName = 'Dia9'
      Size = 4
    end
    object mCronogramaDia10: TStringField
      DisplayWidth = 2
      FieldName = 'Dia10'
      Size = 4
    end
  end
  object dsCronograma: TDataSource
    DataSet = mCronograma
    Left = 368
    Top = 270
  end
  object mObjetivoAcao: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Ano'
        DataType = ftInteger
      end
      item
        Name = 'Objetivo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Acao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TitularAuxiliar'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Auxiliar'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Perspectiva'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Estrategia'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end
      item
        Name = 'VlrRealizado'
        DataType = ftFloat
      end
      item
        Name = 'Como'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'Correlacao'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    Params = <>
    StoreDefs = True
    OnNewRecord = mObjetivoAcaoNewRecord
    Left = 335
    Top = 231
    Data = {
      420100009619E0BD01000000180000000C000000000003000000420102494404
      0001000000000003416E6F0400010000000000084F626A657469766F01004900
      00000100055749445448020002003200044163616F0100490000000100055749
      4454480200020032000F546974756C6172417578696C69617201004900000001
      0005574944544802000200640008417578696C69617201004900000001000557
      494454480200020032000B506572737065637469766101004900000001000557
      494454480200020019000A457374726174656769610100490000000100055749
      4454480200020050000556616C6F7208000400000000000C566C725265616C69
      7A61646F080004000000000004436F6D6F010049000000010005574944544802
      00020046000A436F7272656C6163616F01004900000001000557494454480200
      020003000000}
    object mObjetivoAcaoID: TIntegerField
      FieldName = 'ID'
    end
    object mObjetivoAcaoAno: TIntegerField
      FieldName = 'Ano'
    end
    object mObjetivoAcaoObjetivo: TStringField
      FieldName = 'Objetivo'
      Size = 50
    end
    object mObjetivoAcaoAcao: TStringField
      FieldName = 'Acao'
      Size = 50
    end
    object mObjetivoAcaoTitularAuxiliar: TStringField
      FieldName = 'TitularAuxiliar'
      Size = 100
    end
    object mObjetivoAcaoAuxiliar: TStringField
      FieldName = 'Auxiliar'
      Size = 50
    end
    object mObjetivoAcaoPerspectiva: TStringField
      FieldName = 'Perspectiva'
      Size = 25
    end
    object mObjetivoAcaoEstrategia: TStringField
      FieldName = 'Estrategia'
      Size = 80
    end
    object mObjetivoAcaoValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object mObjetivoAcaoVlrRealizado: TFloatField
      FieldName = 'VlrRealizado'
      DisplayFormat = '###,###,##0.00'
    end
    object mObjetivoAcaoComo: TStringField
      FieldName = 'Como'
      Size = 70
    end
    object mObjetivoAcaoCorrelacao: TStringField
      FieldName = 'Correlacao'
      Size = 3
    end
  end
  object dsObjetivoAcao: TDataSource
    DataSet = mObjetivoAcao
    Left = 367
    Top = 231
  end
  object qRealizado: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT codacao, NumMov, SUM( VlrRealizado ) VlrRealizado'
      'FROM dbmovobjetivoacaoitens i'
      'WHERE  VlrRealizado > 0 '
      'GROUP BY codacao, NumMov')
    Left = 456
    Top = 183
    object qRealizadoNumMov: TIntegerField
      FieldName = 'NumMov'
      Origin = 'TABELAS."dbMovObjetivoAcaoItens.DB".NumMov'
    end
    object qRealizadocodacao: TIntegerField
      FieldName = 'codacao'
      Origin = 'TABELAS."dbMovObjetivoAcaoItens.DB".CodAcao'
    end
    object qRealizadoVlrRealizado: TFloatField
      FieldName = 'VlrRealizado'
      Origin = 'TABELAS."dbMovObjetivoAcaoItens.DB".VlrRealizado'
    end
  end
end
