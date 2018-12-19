object fResumoAnualIndic: TfResumoAnualIndic
  Left = 318
  Top = 243
  Width = 483
  Height = 205
  BorderIcons = [biSystemMenu]
  Caption = 'Indicador do Resumo Anual'
  Color = clBtnFace
  Constraints.MinHeight = 130
  Constraints.MinWidth = 430
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 475
    Height = 31
    Align = alTop
    TabOrder = 1
    DesignSize = (
      475
      31)
    object BitBtn1: TBitBtn
      Left = 321
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 396
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
    Width = 475
    Height = 147
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 59
      Top = 16
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Indicador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 66
      Top = 40
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Resultado:'
    end
    object Label3: TLabel
      Left = 90
      Top = 64
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Meta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 60
      Top = 88
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Referencial:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 120
      Top = 8
      Width = 300
      Height = 21
      DropDownCount = 8
      DataField = 'IndicadorId'
      DataSource = DM1.dsResumoAnualIndic
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsIndicadores
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 120
      Top = 32
      Width = 60
      Height = 21
      DataField = 'Resultado'
      DataSource = DM1.dsResumoAnualIndic
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 184
      Top = 56
      Width = 60
      Height = 21
      Color = clBtnFace
      DataField = 'Meta'
      DataSource = DM1.dsIndicadores
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 184
      Top = 80
      Width = 60
      Height = 21
      Color = clBtnFace
      DataField = 'Referencia'
      DataSource = DM1.dsIndicadores
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 120
      Top = 80
      Width = 60
      Height = 21
      DataField = 'Referencia'
      DataSource = DM1.dsResumoAnualIndic
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 120
      Top = 56
      Width = 60
      Height = 21
      DataField = 'Meta'
      DataSource = DM1.dsResumoAnualIndic
      TabOrder = 2
    end
  end
end
