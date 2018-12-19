object fMovProcessoConclusao: TfMovProcessoConclusao
  Left = 145
  Top = 242
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Conclus'#227'o'
  ClientHeight = 181
  ClientWidth = 417
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
  object Label9: TLabel
    Left = 6
    Top = 16
    Width = 79
    Height = 13
    Caption = 'Data Conclus'#227'o:'
  end
  object Label12: TLabel
    Left = 7
    Top = 39
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Observa'#231#227'o:'
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 146
    Width = 75
    Height = 25
    Caption = 'Confirma'
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
    Left = 204
    Top = 146
    Width = 75
    Height = 25
    Caption = 'Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object DateEdit1: TDateEdit
    Left = 87
    Top = 9
    Width = 98
    Height = 21
    NumGlyphs = 2
    StartOfWeek = Sun
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 8
    Top = 56
    Width = 401
    Height = 80
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
end
