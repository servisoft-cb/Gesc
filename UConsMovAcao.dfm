object fConsMovAcao: TfConsMovAcao
  Left = 155
  Top = 138
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Mov. A'#231#227'o'
  ClientHeight = 494
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 12
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label2: TLabel
    Left = 176
    Top = 12
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label3: TLabel
    Left = 34
    Top = 35
    Width = 28
    Height = 13
    Caption = 'A'#231#227'o:'
  end
  object BitBtn1: TBitBtn
    Left = 404
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object SMDBGrid1: TSMDBGrid
    Left = 3
    Top = 56
    Width = 563
    Height = 432
    TabStop = False
    DataSource = dsqConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 5
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
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    RowCount = 3
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumMov'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Movimento'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodAcao'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. A'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome A'#231#227'o'
        Width = 274
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Title.Caption = 'Data da a'#231#227'o'
        Width = 96
        Visible = True
      end>
  end
  object DateEdit1: TDateEdit
    Left = 64
    Top = 4
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object DateEdit2: TDateEdit
    Left = 229
    Top = 4
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 64
    Top = 27
    Width = 265
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsAcao
    TabOrder = 2
    OnEnter = RxDBLookupCombo1Enter
  end
  object BitBtn2: TBitBtn
    Left = 330
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object qConsulta: TQuery
    Active = True
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbmovacao.CodAcao, Dbmovacao.NumMov, Dbmovacao.Data, Dbac' +
        'ao.Nome'
      'FROM "dbMovAcao.db" Dbmovacao'
      '   INNER JOIN "dbAcao.db" Dbacao'
      '   ON  (Dbmovacao.CodAcao = Dbacao.Codigo)  ')
    Left = 336
    Top = 96
    object qConsultaCodAcao: TIntegerField
      FieldName = 'CodAcao'
      Origin = 'TABELAS."dbMovAcao.DB".CodAcao'
    end
    object qConsultaNumMov: TIntegerField
      FieldName = 'NumMov'
      Origin = 'TABELAS."dbMovAcao.DB".NumMov'
    end
    object qConsultaData: TDateField
      FieldName = 'Data'
      Origin = 'TABELAS."dbMovAcao.DB".Data'
    end
    object qConsultaNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbAcao.DB".Nome'
      Size = 40
    end
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 360
    Top = 96
  end
end
