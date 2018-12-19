object fConsMovObjetivo2: TfConsMovObjetivo2
  Left = 3
  Top = 20
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cons. Mov. Perspectiva'
  ClientHeight = 509
  ClientWidth = 786
  Color = 10930928
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 22
    Height = 13
    Caption = 'Ano:'
  end
  object Label2: TLabel
    Left = 120
    Top = 16
    Width = 59
    Height = 13
    Caption = 'Perspectiva:'
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 32
    Top = 8
    Width = 57
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    MaxLength = 4
    TabOrder = 0
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 181
    Top = 8
    Width = 201
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsPerspectiva
    TabOrder = 1
    OnEnter = RxDBLookupCombo1Enter
  end
  object BitBtn1: TBitBtn
    Left = 383
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object SMDBGrid1: TSMDBGrid
    Left = 1
    Top = 40
    Width = 782
    Height = 193
    DataSource = dsqPerspectiva
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    FixedCols = 1
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NomePerspectiva'
        Title.Alignment = taCenter
        Title.Caption = 'Perspectiva'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Ano'
        Title.Alignment = taCenter
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeObjetivo'
        Title.Alignment = taCenter
        Title.Caption = 'Objetivo'
        Width = 275
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumMov'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Mov'
        Visible = True
      end>
  end
  object SMDBGrid3: TSMDBGrid
    Left = 5
    Top = 233
    Width = 348
    Height = 272
    FixedColor = clMoneyGreen
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 3
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'lkAcao'
        Title.Alignment = taCenter
        Title.Caption = 'A'#231#227'o'
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Obs'
        Title.Alignment = taCenter
        Title.Caption = 'Observa'#231#227'o'
        Width = 101
        Visible = True
      end>
  end
  object SMDBGrid2: TSMDBGrid
    Left = 357
    Top = 233
    Width = 426
    Height = 168
    FixedColor = clMoneyGreen
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Width = 32
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'clMes'
        Title.Alignment = taCenter
        Title.Caption = 'M'#234's'
        Width = 46
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DiaVecto'
        Title.Alignment = taCenter
        Title.Caption = 'Dia Vecto.'
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtConclusao'
        Title.Alignment = taCenter
        Title.Caption = 'Data Conclus'#227'o'
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrConclusao'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Conclus'#227'o'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QtdDiasAtraso'
        Title.Caption = 'Dias de Atraso'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrRealizado'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Realizado'
        Width = 94
        Visible = True
      end>
  end
  object DBMemo1: TDBMemo
    Left = 357
    Top = 405
    Width = 426
    Height = 100
    Color = clSilver
    DataField = 'Obs'
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object BitBtn2: TBitBtn
    Left = 460
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object qPerspectiva: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbmovobjetivo.CodPerspectiva, Dbmovobjetivo.Ano, Dbmovobj' +
        'etivo.NumMov, Dbmovobjetivo.CodObjetivo, Dbperspectiva.Nome Nome' +
        'Perspectiva, Dbmovobjetivo.Estrategia, Dbobjetivo.Nome NomeObjet' +
        'ivo'
      'FROM "dbMovObjetivo.DB" Dbmovobjetivo'
      '   INNER JOIN "dbPerspectiva.db" Dbperspectiva'
      '   ON  (Dbmovobjetivo.CodPerspectiva = Dbperspectiva.Codigo)  '
      '   INNER JOIN "dbObjetivo.db" Dbobjetivo'
      '   ON  (Dbmovobjetivo.CodObjetivo = Dbobjetivo.Codigo)  ')
    Left = 448
    Top = 96
    object qPerspectivaNumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object qPerspectivaCodPerspectiva: TIntegerField
      FieldName = 'CodPerspectiva'
    end
    object qPerspectivaAno: TIntegerField
      FieldName = 'Ano'
    end
    object qPerspectivaCodObjetivo: TIntegerField
      FieldName = 'CodObjetivo'
    end
    object qPerspectivaNomePerspectiva: TStringField
      FieldName = 'NomePerspectiva'
      Size = 25
    end
    object qPerspectivaEstrategia: TStringField
      FieldName = 'Estrategia'
      Size = 80
    end
    object qPerspectivaNomeObjetivo: TStringField
      FieldName = 'NomeObjetivo'
      Size = 50
    end
  end
  object dsqPerspectiva: TDataSource
    DataSet = qPerspectiva
    Left = 464
    Top = 96
  end
  object tMovObjetivoAcao: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'NumMov'
    MasterFields = 'NumMov'
    MasterSource = dsqPerspectiva
    TableName = 'dbMovObjetivoAcao.DB'
    Left = 256
    Top = 280
    object tMovObjetivoAcaoNumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object tMovObjetivoAcaoCodAcao: TIntegerField
      FieldName = 'CodAcao'
    end
    object tMovObjetivoAcaoAno: TIntegerField
      FieldName = 'Ano'
    end
    object tMovObjetivoAcaoCodObjetivo: TIntegerField
      FieldName = 'CodObjetivo'
    end
    object tMovObjetivoAcaoObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tMovObjetivoAcaolkAcao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAcao'
      LookupDataSet = DM2.tAcao2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodAcao'
      Size = 40
      Lookup = True
    end
    object tMovObjetivoAcaoComo: TStringField
      FieldName = 'Como'
      Size = 70
    end
    object tMovObjetivoAcaoValor: TFloatField
      FieldName = 'Valor'
    end
    object tMovObjetivoAcaoCorrelacao: TStringField
      FieldName = 'Correlacao'
      Size = 3
    end
  end
  object dsMovObjetivoAcao: TDataSource
    DataSet = tMovObjetivoAcao
    Left = 280
    Top = 280
  end
  object tMovObjetivoAcaoItens: TTable
    Active = True
    OnCalcFields = tMovObjetivoAcaoItensCalcFields
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'NumMov;CodAcao'
    MasterFields = 'NumMov;CodAcao'
    MasterSource = dsMovObjetivoAcao
    TableName = 'dbMovObjetivoAcaoItens.DB'
    Left = 464
    Top = 336
    object tMovObjetivoAcaoItensNumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object tMovObjetivoAcaoItensCodAcao: TIntegerField
      FieldName = 'CodAcao'
    end
    object tMovObjetivoAcaoItensItem: TIntegerField
      FieldName = 'Item'
    end
    object tMovObjetivoAcaoItensAno: TIntegerField
      FieldName = 'Ano'
    end
    object tMovObjetivoAcaoItensCodObjetivo: TIntegerField
      FieldName = 'CodObjetivo'
    end
    object tMovObjetivoAcaoItensMes: TIntegerField
      FieldName = 'Mes'
    end
    object tMovObjetivoAcaoItensDiaVecto: TIntegerField
      FieldName = 'DiaVecto'
    end
    object tMovObjetivoAcaoItensDtConclusao: TDateField
      FieldName = 'DtConclusao'
    end
    object tMovObjetivoAcaoItensHrConclusao: TTimeField
      FieldName = 'HrConclusao'
    end
    object tMovObjetivoAcaoItensQtdDiasAtraso: TIntegerField
      FieldName = 'QtdDiasAtraso'
    end
    object tMovObjetivoAcaoItensVlrRealizado: TFloatField
      FieldName = 'VlrRealizado'
    end
    object tMovObjetivoAcaoItensclMes: TStringField
      FieldKind = fkCalculated
      FieldName = 'clMes'
      Size = 12
      Calculated = True
    end
  end
  object dsMovObjetivoAcaoItens: TDataSource
    DataSet = tMovObjetivoAcaoItens
    Left = 488
    Top = 336
  end
end
