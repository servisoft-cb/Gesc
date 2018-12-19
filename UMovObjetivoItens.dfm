object fMovObjetivoItens: TfMovObjetivoItens
  Left = 109
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'A'#231#245'es'
  ClientHeight = 115
  ClientWidth = 544
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 544
    Height = 115
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label3: TLabel
      Left = 29
      Top = 20
      Width = 28
      Height = 13
      Caption = 'A'#231#227'o:'
    end
    object SpeedButton2: TSpeedButton
      Left = 317
      Top = 11
      Width = 24
      Height = 23
      Hint = 'Abre o cadastro de perspectiva'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777700000
        000077777770FFFFFFF077777770F00F00F077777770FFFFFFF077777770F00F
        00F077777770FFFFFFF077777774444444447700007444444444770BB0777777
        7777000BB000777777770BBBBBB0777777770BBBBBB077777777000BB0007777
        7777770BB077777777777700007777777777}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object Label1: TLabel
      Left = 433
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label2: TLabel
      Left = 27
      Top = 40
      Width = 30
      Height = 13
      Caption = 'Como:'
    end
    object Label4: TLabel
      Left = 3
      Top = 62
      Width = 54
      Height = 13
      Caption = 'Correla'#231#227'o:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 58
      Top = 12
      Width = 258
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsAcao
      TabOrder = 0
      OnEnter = RxDBLookupCombo1Enter
    end
    object BitBtn1: TBitBtn
      Left = 163
      Top = 82
      Width = 105
      Height = 28
      Caption = 'Confirma A'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888777777
        777777770000774448877777777777770000772244887777777777770000A222
        22488777777777770000A22222248877777777770000A2222222488777777777
        0000A22222222488777777770000A22222222248877777770000A22248A22224
        887777770000A222488A2222488777770000A2224887A2224488777700007A22
        48877A222488777700007A22477777A222488777000077777777777A22244877
        0000777777777777A222488700007777777777777A2224870000777777777777
        77A224480000777777777777777A224800007777777777777777A24800007777
        7777777777777A270000}
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 462
      Top = 12
      Width = 73
      Height = 21
      AutoSize = False
      DisplayFormat = '0.00'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 58
      Top = 34
      Width = 477
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 70
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 268
      Top = 82
      Width = 105
      Height = 28
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn4Click
      Glyph.Data = {
        B6010000424DB601000000000000760000002800000022000000100000000100
        04000000000040010000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
        03833333333333387F333300000083838383830E603833FFFFFFFF387F33FF00
        000000000000380E6600388888888F387F388300000033333330830E66033333
        33338F387F38F300000033333330000E6603333333FF88887F38F30000003333
        0030330E66033333388F8F387F38F300000033330E00330E660333FFF8F88F38
        7F38F300000000000EE0330E0603388888338F387F38F30000000EEEEEE6030E
        660338FFFFF378387F38F300000000000E60330E6603388888F78F387F38F300
        000033330600330E6603333338788F387F38F300000033330030330E66033333
        38838F387F38F3000000333333303330E603333333338F3387F8F30000003333
        333033330E03333333338FFFF878F30000003333333000000003333333338888
        8888330000003333333333333333333333333333333333000000}
      NumGlyphs = 2
    end
    object ComboBox1: TComboBox
      Left = 58
      Top = 56
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Forte'
        'M'#233'dia'
        'Fraca'
        'Nula')
    end
  end
end
