object fPessoaProcesso: TfPessoaProcesso
  Left = 109
  Top = 119
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informar os processos do cliente'
  ClientHeight = 385
  ClientWidth = 536
  Color = 10930928
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
    Left = 8
    Top = 8
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object DBText1: TDBText
    Left = 46
    Top = 8
    Width = 65
    Height = 14
    DataField = 'Nome'
    DataSource = DM1.dsPessoa
  end
  object Label2: TLabel
    Left = 15
    Top = 24
    Width = 28
    Height = 13
    Caption = 'Setor:'
  end
  object DBText2: TDBText
    Left = 46
    Top = 24
    Width = 65
    Height = 14
    DataField = 'lkNomeSetor'
    DataSource = DM1.dsPessoaSetor
  end
  object Bevel1: TBevel
    Left = 0
    Top = 44
    Width = 536
    Height = 2
    Shape = bsTopLine
  end
  object SpeedButton7: TSpeedButton
    Left = 370
    Top = 85
    Width = 30
    Height = 23
    Hint = 'Cancela inser'#231#227'o deste item'
    Glyph.Data = {
      CA020000424DCA0200000000000036000000280000000E0000000F0000000100
      18000000000094020000C30E0000C30E00000000000000000000C9C9C9DADAEA
      878795626266C9C9C9C9C9C9C9C9C9C9C9C9C9C9C999999AAAAAAAC9C9C9C9C9
      C9C9C9C9FCFCC9C9C97C7CD721217421213DC9C9C9C9C9C9C9C9C9C9C9C96363
      B34C4C547B7B7BB1B1B1C9C9C9C9C9C95C5CC9C9C94B4BD200008508084B3B3B
      47C9C9C9C9C9C97474D913138E14143D4B4B51838383C9C9C9C9C9C9ED69C9C9
      C95757DF04049B00006B0D0D3F40404C50508F2020A80202840101601D1D3E78
      787CC9C9C9C9C9C96060C9C9C98686F31414BC0000850000670B0B4611117301
      018600007F020271383867B0B0B5C9C9C9C9C9C90086C9C9C9D0D0FC5757E80A
      0AB200008600007500007800007D01017531316FACACB8C9C9C9C9C9C9C9C9C9
      FFC3C9C9C9C9C9C9C7C7FC5252EA0A0AAC00008100007F00007A1010576B6B75
      C9C9C9C9C9C9C9C9C9C9C9C9FFFFC9C9C9C9C9C9C9C9C9B5B5FD2D2DC8000086
      00007F00007517173B69696AC9C9C9C9C9C9C9C9C9C9C9C99BE7C9C9C9C9C9C9
      C9C9C9C7C7FB3838C400008500008000007B05054B36363E797979C9C9C9C9C9
      C9C9C9C90D0DC9C9C9C9C9C9C9C9C98383E61010A100007E03038D0101980000
      75151545555557888888C9C9C9C9C9C9FEFEC9C9C9C9C9C9C8C8F74040C80202
      890E0E654A4A9E3B3BDB0707A900005F1B1B39545458C9C9C9C9C9C9FFF9C9C9
      C9C9C9C98888EA1414A801017434345AAFAFBAB2B2F74040E30505A003035D20
      203E59595DC9C9C99100C9C9C9D6D6FE5F5FEB0A0AB11212738B8B9AC9C9C9C9
      C9C9B6B6FB3B3BDF0505A008085F4C4C63C9C9C90000C9C9C9E5E5FEA5A5F960
      60E67777C9C9C9C9C9C9C9C9C9C9C9C9C9AAAAFA3838DE2E2EB09999BCC9C9C9
      0000C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9
      C0C0FBBABAF3C9C9C9C9C9C90000}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton7Click
  end
  object SpeedButton9: TSpeedButton
    Left = 400
    Top = 85
    Width = 30
    Height = 23
    Hint = 'Exclui o item selecionado da nota de entrada'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
      03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
      33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
      0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
      3333333337FFF7F3333333333000003333333333377777333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton9Click
  end
  object StaticText1: TStaticText
    Left = 1
    Top = 70
    Width = 297
    Height = 17
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Processo'
    TabOrder = 0
  end
  object StaticText2: TStaticText
    Left = 299
    Top = 70
    Width = 35
    Height = 17
    BorderStyle = sbsSunken
    Caption = 'Possui'
    TabOrder = 1
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 1
    Top = 88
    Width = 297
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsProcesso
    TabOrder = 2
    OnEnter = RxDBLookupCombo1Enter
  end
  object CheckBox1: TCheckBox
    Left = 308
    Top = 90
    Width = 18
    Height = 17
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object BitBtn8: TBitBtn
    Left = 340
    Top = 85
    Width = 30
    Height = 23
    Hint = 'Confirma inser'#231#227'o deste item'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BitBtn8Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000CE0E0000C40E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888888888844888888888888888888888888888884CC4888
      8888888888888888888888884CCCC488888888888888888888888884CCCCCC48
      88888888888888888888884CCCECCCC48888888888888888888888CCCE8ECCC4
      8888888888888888888888ECE888ECCC48888888888888888888888E88888ECC
      C48888888888888888888888888888ECCC48888888888888888888888888888E
      CCC48888888888888888888888888888ECCC4888888888888888888888888888
      8ECCC48888888888888888888888888888ECC488888888888888888888888888
      888ECC888888888888888888888888888888E888888888888888}
    NumGlyphs = 2
  end
  object SMDBGrid1: TSMDBGrid
    Left = 1
    Top = 112
    Width = 531
    Height = 257
    DataSource = DM1.dsPessoaProcesso
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProcesso'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Processo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeProcesso'
        Title.Alignment = taCenter
        Title.Caption = 'Processo'
        Width = 389
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Possui'
        Title.Alignment = taCenter
        Width = 45
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 457
    Top = 12
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
end
