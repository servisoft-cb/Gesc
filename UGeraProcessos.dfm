object fGeraProcessos: TfGeraProcessos
  Left = 125
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gera Processos'
  ClientHeight = 134
  ClientWidth = 429
  Color = clBtnFace
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
    Left = 32
    Top = 12
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ano:'
  end
  object Label2: TLabel
    Left = 31
    Top = 35
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'M'#234's:'
  end
  object Label3: TLabel
    Left = 19
    Top = 57
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
  end
  object SpeedButton2: TSpeedButton
    Left = 400
    Top = 47
    Width = 24
    Height = 23
    Hint = 'Abre o cadastro de clientes'
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
  object Bevel1: TBevel
    Left = 0
    Top = 100
    Width = 430
    Height = 2
    Shape = bsTopLine
  end
  object Label4: TLabel
    Left = 26
    Top = 81
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'Setor:'
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 56
    Top = 4
    Width = 49
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    MaxLength = 4
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 56
    Top = 27
    Width = 129
    Height = 21
    Style = csDropDownList
    DropDownCount = 12
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 56
    Top = 49
    Width = 345
    Height = 21
    DropDownCount = 15
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsPessoa
    TabOrder = 2
    OnEnter = RxDBLookupCombo1Enter
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 104
    Width = 80
    Height = 27
    Caption = 'Gerar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 208
    Top = 104
    Width = 80
    Height = 27
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object ProgressBar1: TProgressBar
    Left = 214
    Top = 2
    Width = 214
    Height = 17
    TabOrder = 6
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 56
    Top = 73
    Width = 345
    Height = 21
    DropDownCount = 15
    DisplayEmpty = '[Todos...]'
    EmptyValue = '0'
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsSetor
    TabOrder = 3
  end
end
