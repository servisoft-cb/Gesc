object fConsFato: TfConsFato
  Left = 6
  Top = 21
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Mov. Objetivo'
  ClientHeight = 534
  ClientWidth = 783
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
  object Label5: TLabel
    Left = 367
    Top = 9
    Width = 47
    Height = 13
    Caption = 'Dt. Inicial:'
  end
  object Label6: TLabel
    Left = 515
    Top = 9
    Width = 22
    Height = 13
    Caption = 'Final'
  end
  object Label3: TLabel
    Left = 32
    Top = 9
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Bevel2: TBevel
    Left = 0
    Top = 54
    Width = 782
    Height = 2
    Shape = bsTopLine
  end
  object Label2: TLabel
    Left = 2
    Top = 34
    Width = 65
    Height = 13
    Caption = 'Respons'#225'vel:'
  end
  object Label1: TLabel
    Left = 378
    Top = 34
    Width = 133
    Height = 13
    Caption = 'Classifica'#231#227'o da Satisfa'#231#227'o:'
  end
  object Label4: TLabel
    Left = 575
    Top = 34
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object BitBtn1: TBitBtn
    Left = 694
    Top = 26
    Width = 82
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
    Left = 0
    Top = 60
    Width = 783
    Height = 252
    TabStop = False
    Align = alBottom
    DataSource = fFato.dsqConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumMov'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Movim.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtMovimento'
        Title.Alignment = taCenter
        Title.Caption = 'Data Movimento'
        Width = 87
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TipoSatisfacao'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Satisfa'#231#227'o'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 291
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeResposavel'
        Title.Alignment = taCenter
        Title.Caption = 'Funcion'#225'rio'
        Width = 228
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 693
    Top = 1
    Width = 82
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
  object DateEdit5: TDateEdit
    Left = 415
    Top = 1
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object DateEdit6: TDateEdit
    Left = 544
    Top = 1
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 69
    Top = 1
    Width = 295
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsPessoa
    TabOrder = 0
    OnEnter = RxDBLookupCombo3Enter
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 69
    Top = 26
    Width = 295
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM2.dsPessoa2
    TabOrder = 6
    OnEnter = RxDBLookupCombo1Enter
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 512
    Top = 26
    Width = 57
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 7
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 586
    Top = 26
    Width = 57
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 8
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 312
    Width = 783
    Height = 222
    ActivePage = TabSheet4
    Align = alBottom
    Color = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabIndex = 3
    TabOrder = 9
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = clAqua
      Caption = 'Fato'
      object DBMemo2: TDBMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 199
        Align = alClient
        Color = clInfoBk
        DataField = 'Fato'
        DataSource = fFato.dsqConsulta
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clAqua
      Caption = 'Causa'
      object DBMemo3: TDBMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 199
        Align = alClient
        Color = clInfoBk
        DataField = 'Causa'
        DataSource = fFato.dsqConsulta
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet3: TRzTabSheet
      Color = clAqua
      Caption = 'A'#231#227'o'
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 199
        Align = alClient
        Color = clInfoBk
        DataField = 'Acao'
        DataSource = fFato.dsqConsulta
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet4: TRzTabSheet
      Color = clAqua
      Caption = 'Observa'#231#227'o'
      object DBMemo4: TDBMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 199
        Align = alClient
        Color = clInfoBk
        DataField = 'Obs'
        DataSource = fFato.dsqConsulta
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
