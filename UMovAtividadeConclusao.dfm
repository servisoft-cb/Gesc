object fMovAtividadeConclusao: TfMovAtividadeConclusao
  Left = 321
  Top = 272
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Conclus'#227'o'
  ClientHeight = 232
  ClientWidth = 411
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
  object RxLabel1: TRxLabel
    Left = 23
    Top = 8
    Width = 46
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel2: TRxLabel
    Left = 8
    Top = 26
    Width = 60
    Height = 13
    Caption = 'Atividade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 74
    Top = 8
    Width = 283
    Height = 14
    DataField = 'NumMov'
    DataSource = DM1.dsMovAtividade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 74
    Top = 26
    Width = 283
    Height = 14
    DataField = 'lkAtividade'
    DataSource = DM1.dsMovAtividade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 6
    Top = 64
    Width = 79
    Height = 13
    Caption = 'Data Conclus'#227'o:'
  end
  object Label12: TLabel
    Left = 7
    Top = 87
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Observa'#231#227'o:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 47
    Width = 412
    Height = 9
    Color = clBlue
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 164
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Confirma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object DBMemo1: TDBMemo
    Left = 7
    Top = 104
    Width = 398
    Height = 76
    DataField = 'Obs'
    DataSource = DM1.dsMovAtividade
    TabOrder = 1
  end
  object DBDateEdit1: TDBDateEdit
    Left = 87
    Top = 60
    Width = 100
    Height = 21
    DataField = 'DtConclusao'
    DataSource = DM1.dsMovAtividade
    NumGlyphs = 2
    TabOrder = 0
  end
end
