object fGraficoIndicadores: TfGraficoIndicadores
  Left = 148
  Top = 51
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gr'#225'fico de Indicadores'
  ClientHeight = 510
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 225
    TabOrder = 0
    object Label7: TLabel
      Left = 11
      Top = 13
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Indicador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 22
      Top = 42
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Do Ano:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 125
      Top = 42
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'At'#233':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 311
      Top = 204
      Width = 3
      Height = 13
    end
    object Label2: TLabel
      Left = 311
      Top = 140
      Width = 3
      Height = 13
    end
    object BitBtn1: TBitBtn
      Left = 467
      Top = 174
      Width = 90
      Height = 28
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 467
      Top = 109
      Width = 90
      Height = 28
      Caption = 'Gerar Gr'#225'fico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 467
      Top = 141
      Width = 90
      Height = 28
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 72
      Top = 5
      Width = 499
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsIndicadores
      TabOrder = 0
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 73
      Top = 34
      Width = 32
      Height = 21
      AutoSize = False
      DisplayFormat = '0000'
      TabOrder = 1
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 153
      Top = 34
      Width = 32
      Height = 21
      AutoSize = False
      DisplayFormat = '0000'
      TabOrder = 2
      OnExit = CurrencyEdit5Exit
    end
    object SMDBGrid1: TSMDBGrid
      Left = 40
      Top = 64
      Width = 385
      Height = 151
      DataSource = dsqIndicadores
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ano'
          Title.Alignment = taCenter
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Resultado'
          Title.Alignment = taCenter
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Meta'
          Title.Alignment = taCenter
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Referencia'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Width = 85
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 225
    Width = 586
    Height = 284
    TabOrder = 1
    object DBChart1: TDBChart
      Left = 0
      Top = 1
      Width = 586
      Height = 282
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clBlue
      Title.Font.Height = -11
      Title.Font.Name = 'Arial'
      Title.Font.Style = [fsBold, fsItalic]
      Title.Text.Strings = (
        'GR'#193'FICO DE INDICADORES')
      TabOrder = 0
      object Series4: TBarSeries
        Marks.ArrowLength = 20
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = qIndicadores
        SeriesColor = clYellow
        Title = 'Resultado'
        XLabelsSource = 'Ano'
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'Resultado'
      end
      object Series5: TBarSeries
        Marks.ArrowLength = 20
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = qIndicadores
        SeriesColor = clGray
        Title = 'Refer'#234'ncia'
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'Referencia'
      end
      object Series6: TBarSeries
        Marks.ArrowLength = 20
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = qIndicadores
        SeriesColor = clBlue
        Title = 'Meta'
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'Meta'
      end
    end
  end
  object qIndicadores: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbresumoanual.Id, Dbresumoanual.Ano, Dbresumoanualindic.R' +
        'esumoAnualId, Dbresumoanualindic.IndicadorId, Dbindicadores.Codi' +
        'go, Dbindicadores.Nome, Dbresumoanualindic.Resultado, Dbresumoan' +
        'ualindic.Meta, Dbresumoanualindic.Referencia'
      'FROM "dbResumoAnual.db" Dbresumoanual'
      '   INNER JOIN "dbResumoAnualIndic.DB" Dbresumoanualindic'
      '   ON  (Dbresumoanualindic.ResumoAnualId = Dbresumoanual.Id)  '
      '   INNER JOIN "dbIndicadores.DB" Dbindicadores'
      '   ON  (Dbresumoanualindic.IndicadorId = Dbindicadores.Codigo)  ')
    Left = 536
    Top = 32
    object qIndicadoresAno: TStringField
      FieldName = 'Ano'
      Size = 4
    end
    object qIndicadoresResumoAnualId: TIntegerField
      FieldName = 'ResumoAnualId'
    end
    object qIndicadoresIndicadorId: TIntegerField
      FieldName = 'IndicadorId'
    end
    object qIndicadoresCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qIndicadoresNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qIndicadoresResultado: TFloatField
      FieldName = 'Resultado'
    end
    object qIndicadoresMeta: TFloatField
      FieldName = 'Meta'
    end
    object qIndicadoresReferencia: TFloatField
      FieldName = 'Referencia'
    end
  end
  object dsqIndicadores: TDataSource
    DataSet = qIndicadores
    Left = 552
    Top = 32
  end
end
