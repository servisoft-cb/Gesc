object fConsIdeias: TfConsIdeias
  Left = 169
  Top = 98
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Mov. Objetivo'
  ClientHeight = 534
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 736
    Top = 104
    Width = 32
    Height = 13
    Caption = 'Label7'
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 57
    Width = 789
    Height = 255
    TabStop = False
    Align = alClient
    DataSource = fIdeias.dsqConsulta
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
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumMov'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Mov.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Funcion'#225'rio'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtMov'
        Title.Alignment = taCenter
        Title.Caption = 'Data Movimento'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrInvestimento'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Investimento'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrRetorno'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Retorno'
        Width = 83
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Aprovada'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 312
    Width = 789
    Height = 222
    ActivePage = TabSheet1
    Align = alBottom
    Color = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = clAqua
      Caption = 'Id'#233'ia Criativa'
      object DBMemo2: TDBMemo
        Left = 0
        Top = 0
        Width = 785
        Height = 199
        Align = alBottom
        Color = clInfoBk
        DataField = 'Ideia'
        DataSource = fIdeias.dsqConsulta
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clAqua
      Caption = 'Como colocar em pr'#225'tica'
      object DBMemo3: TDBMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 199
        Align = alClient
        Color = clInfoBk
        DataField = 'ColocarEmPratica'
        DataSource = fIdeias.dsqConsulta
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet3: TRzTabSheet
      Color = clAqua
      Caption = 'Aplicabilidade'
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 199
        Align = alClient
        Color = clInfoBk
        DataField = 'Aplicabilidade'
        DataSource = fIdeias.dsqConsulta
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet4: TRzTabSheet
      Color = clAqua
      Caption = 'Investimento'
      object DBMemo4: TDBMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 199
        Align = alClient
        Color = clInfoBk
        DataField = 'Investimento'
        DataSource = fIdeias.dsqConsulta
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet5: TRzTabSheet
      Color = clAqua
      Caption = 'Retorno (economia/produ'#231#227'o)'
      object DBMemo5: TDBMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 199
        Align = alClient
        Color = clInfoBk
        DataField = 'Retorno'
        DataSource = fIdeias.dsqConsulta
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet6: TRzTabSheet
      Color = clAqua
      Caption = 'Justificativas'
      object DBMemo6: TDBMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 199
        Align = alClient
        Color = clInfoBk
        DataField = 'Justificativa'
        DataSource = fIdeias.dsqConsulta
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label5: TLabel
      Left = 367
      Top = 9
      Width = 47
      Height = 13
      Caption = 'Dt. Inicial:'
    end
    object Label6: TLabel
      Left = 517
      Top = 9
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object Label2: TLabel
      Left = 2
      Top = 10
      Width = 65
      Height = 13
      Caption = 'Respons'#225'vel:'
    end
    object Label1: TLabel
      Left = 18
      Top = 32
      Width = 49
      Height = 13
      Caption = 'Aprovado:'
    end
    object Label3: TLabel
      Left = 342
      Top = 32
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total de id'#233'ias:'
    end
    object Label4: TLabel
      Left = 416
      Top = 32
      Width = 18
      Height = 13
      Caption = '000'
    end
    object Label8: TLabel
      Left = 448
      Top = 32
      Width = 54
      Height = 13
      Caption = 'Aprovadas:'
    end
    object Label9: TLabel
      Left = 504
      Top = 32
      Width = 18
      Height = 13
      Caption = '000'
    end
    object Label10: TLabel
      Left = 536
      Top = 32
      Width = 73
      Height = 13
      Caption = 'N'#227'o aprovadas'
    end
    object Label11: TLabel
      Left = 616
      Top = 32
      Width = 18
      Height = 13
      Caption = '000'
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
      TabOrder = 0
      OnClick = BitBtn1Click
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
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object DateEdit5: TDateEdit
      Left = 415
      Top = 1
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object DateEdit6: TDateEdit
      Left = 544
      Top = 1
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 69
      Top = 2
      Width = 295
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM2.dsPessoa2
      TabOrder = 4
      OnEnter = RxDBLookupCombo1Enter
    end
    object ComboBox1: TComboBox
      Left = 69
      Top = 26
      Width = 150
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 5
      Text = 'Ambos'
      Items.Strings = (
        'Aprovado'
        'N'#227'o Aprovado'
        'Pendentes'
        'Ambos')
    end
  end
end
