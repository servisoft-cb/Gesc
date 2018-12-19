object fResumoAnual: TfResumoAnual
  Left = 254
  Top = 153
  Width = 659
  Height = 480
  Hint = 'Inclui todos os indicadores para o ano selecionado'
  BorderIcons = [biSystemMenu]
  Caption = 'Resumo Anual'
  Color = clBtnFace
  Constraints.MinHeight = 480
  Constraints.MinWidth = 650
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 31
    Align = alTop
    TabOrder = 1
    DesignSize = (
      651
      31)
    object BitBtn1: TBitBtn
      Left = 496
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 571
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 31
    Width = 651
    Height = 82
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 90
      Top = 16
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ano:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 54
      Top = 40
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Funcion'#225'rios:'
    end
    object Label3: TLabel
      Left = 15
      Top = 64
      Width = 102
      Height = 13
      Alignment = taRightJustify
      Caption = 'Faixa de faturamento:'
    end
    object DBEdit1: TDBEdit
      Left = 120
      Top = 8
      Width = 60
      Height = 21
      DataField = 'Ano'
      DataSource = DM1.dsResumoAnual
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 32
      Width = 60
      Height = 21
      DataField = 'Funcionarios'
      DataSource = DM1.dsResumoAnual
      TabOrder = 1
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 120
      Top = 56
      Width = 200
      Height = 21
      Style = csDropDownList
      DataField = 'Faturamento'
      DataSource = DM1.dsResumoAnual
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'At'#233' R$ 15.000,00'
        'R$ 15.000,00 '#224' R$ 30.000,00'
        'R$ 30.000,00 '#224' R$ 50.000,00'
        'Mais de R$ 50.000,00')
      TabOrder = 2
      Values.Strings = (
        '1'
        '2'
        '3'
        '4')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 144
    Width = 651
    Height = 309
    Align = alClient
    DataSource = DM1.dsResumoAnualIndic
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
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
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'lkIndicador'
        Title.Alignment = taCenter
        Title.Caption = 'Indicador'
        Width = 420
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Resultado'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Meta'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 113
    Width = 651
    Height = 31
    Align = alTop
    TabOrder = 3
    DesignSize = (
      651
      31)
    object BitBtn3: TBitBtn
      Left = 496
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 571
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'E&xcluir'
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 298
      Top = 3
      Width = 99
      Height = 25
      Hint = 'Importar todos os indicadores para o resumo'
      Anchors = [akTop, akRight]
      Caption = 'Todos indicadores'
      TabOrder = 2
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 397
      Top = 3
      Width = 99
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Calcular resultados'
      TabOrder = 3
    end
  end
end
