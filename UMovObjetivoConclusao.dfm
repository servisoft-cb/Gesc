object fMovObjetivoConclusao: TfMovObjetivoConclusao
  Left = 93
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Conclus'#227'o'
  ClientHeight = 244
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
    Left = 49
    Top = 8
    Width = 29
    Height = 13
    Caption = 'Ano:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel2: TRxLabel
    Left = 24
    Top = 26
    Width = 54
    Height = 13
    Caption = 'Objetivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 78
    Top = 8
    Width = 283
    Height = 14
    DataField = 'Ano'
    DataSource = DM1.dsMovObjetivo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 78
    Top = 26
    Width = 283
    Height = 14
    DataField = 'lkObjetivo'
    DataSource = DM1.dsMovObjetivo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 6
    Top = 156
    Width = 79
    Height = 13
    Caption = 'Data Conclus'#227'o:'
  end
  object RxLabel3: TRxLabel
    Left = 4
    Top = 42
    Width = 74
    Height = 13
    Caption = 'Perspectiva:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 78
    Top = 42
    Width = 283
    Height = 14
    DataField = 'lkNomePerspectiva'
    DataSource = DM1.dsMovObjetivo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel4: TRxLabel
    Left = 30
    Top = 93
    Width = 30
    Height = 13
    Caption = 'M'#234's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 62
    Top = 93
    Width = 283
    Height = 14
    DataField = 'lkMes'
    DataSource = DM1.dsMovObjetivoAcaoItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel5: TRxLabel
    Left = 34
    Top = 110
    Width = 26
    Height = 13
    Caption = 'Dia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText5: TDBText
    Left = 62
    Top = 110
    Width = 283
    Height = 14
    DataField = 'DiaVecto'
    DataSource = DM1.dsMovObjetivoAcaoItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel6: TRxLabel
    Left = 42
    Top = 74
    Width = 36
    Height = 13
    Caption = 'A'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText6: TDBText
    Left = 78
    Top = 74
    Width = 283
    Height = 14
    DataField = 'lkAcao'
    DataSource = DM1.dsMovObjetivoAcao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel7: TRxLabel
    Left = 14
    Top = 59
    Width = 64
    Height = 13
    Caption = 'Estrat'#233'gia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText7: TDBText
    Left = 78
    Top = 59
    Width = 331
    Height = 14
    DataField = 'Estrategia'
    DataSource = DM1.dsMovObjetivo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 180
    Width = 68
    Height = 13
    Caption = 'Vlr. Realizado:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 136
    Width = 412
    Height = 9
    Color = clNavy
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 194
    Top = 215
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object DBDateEdit1: TDBDateEdit
    Left = 87
    Top = 149
    Width = 100
    Height = 21
    DataField = 'DtConclusao'
    DataSource = DM1.dsMovObjetivoAcaoItens
    NumGlyphs = 2
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 270
    Top = 215
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object DBEdit1: TDBEdit
    Left = 87
    Top = 174
    Width = 121
    Height = 21
    DataField = 'VlrRealizado'
    DataSource = DM1.dsMovObjetivoAcaoItens
    TabOrder = 1
  end
end
