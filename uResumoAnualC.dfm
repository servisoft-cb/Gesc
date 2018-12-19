object fResumoAnualC: TfResumoAnualC
  Left = 291
  Top = 114
  Width = 400
  Height = 350
  BorderIcons = [biSystemMenu]
  Caption = 'Resumo Anual'
  Color = clBtnFace
  Constraints.MinHeight = 350
  Constraints.MinWidth = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 392
    Height = 30
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 46
      Height = 13
      Caption = 'Pesquisa:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 61
      Top = 4
      Width = 100
      Height = 21
      DropDownCount = 8
      LookupField = 'Id'
      LookupDisplay = 'Ano'
      LookupSource = DM1.dsResumoAnual
      TabOrder = 0
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 60
    Width = 392
    Height = 263
    Align = alClient
    DataSource = DM1.dsResumoAnual
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'Ano'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Funcionarios'
        Title.Caption = 'Funcion'#225'rios'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 392
    Height = 30
    Align = alTop
    TabOrder = 2
    DesignSize = (
      392
      30)
    object BitBtn3: TBitBtn
      Left = 239
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 314
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'E&xcluir'
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 164
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Im&primir'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object BitBtn2: TBitBtn
    Left = 281
    Top = 3
    Width = 107
    Height = 25
    Caption = 'Gr'#225'fico Indicadores'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
