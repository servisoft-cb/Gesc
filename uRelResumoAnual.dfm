object fRelResumoAnual: TfRelResumoAnual
  Left = 115
  Top = 148
  Width = 880
  Height = 480
  Caption = 'fRelResumoAnual'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DM1.dsResumoAnual
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 347
      DataSource = DM1.dsResumoAnual
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 73
        object RLDBText1: TRLDBText
          Left = 49
          Top = 48
          Width = 27
          Height = 16
          DataField = 'Ano'
          DataSource = DM1.dsResumoAnual
        end
        object RLLabel1: TRLLabel
          Left = 2
          Top = 48
          Width = 48
          Height = 16
          Alignment = taRightJustify
          Caption = 'CICLO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 184
          Top = 48
          Width = 87
          Height = 16
          DataField = 'clFaturamento'
          DataSource = DM1.dsResumoAnual
        end
        object RLLabel3: TRLLabel
          Left = 96
          Top = 48
          Width = 89
          Height = 16
          Caption = 'Faturamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 485
          Top = 48
          Width = 78
          Height = 16
          DataField = 'Funcionarios'
          DataSource = DM1.dsResumoAnual
        end
        object RLLabel4: TRLLabel
          Left = 400
          Top = 48
          Width = 86
          Height = 16
          Caption = 'Funcion'#225'rios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 73
        Width = 718
        Height = 64
        DataSource = DM1.dsResumoAnualIndic
        object RLBand2: TRLBand
          Left = 0
          Top = 33
          Width = 718
          Height = 22
          object RLDBText2: TRLDBText
            Left = 0
            Top = 3
            Width = 505
            Height = 16
            AutoSize = False
            DataField = 'lkIndicador'
            DataSource = DM1.dsResumoAnualIndic
          end
          object RLDBText6: TRLDBText
            Left = 607
            Top = 3
            Width = 33
            Height = 16
            Alignment = taRightJustify
            DataField = 'Meta'
            DataSource = DM1.dsResumoAnualIndic
          end
          object RLDBText7: TRLDBText
            Left = 635
            Top = 3
            Width = 65
            Height = 16
            Alignment = taRightJustify
            DataField = 'Referencia'
            DataSource = DM1.dsResumoAnualIndic
          end
          object RLDBText8: TRLDBText
            Left = 526
            Top = 3
            Width = 62
            Height = 16
            Alignment = taRightJustify
            DataField = 'Resultado'
            DataSource = DM1.dsResumoAnualIndic
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 33
          BandType = btHeader
          object RLLabel7: TRLLabel
            Left = 644
            Top = 15
            Width = 74
            Height = 16
            Alignment = taCenter
            Caption = 'Refer'#234'ncia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 605
            Top = 15
            Width = 36
            Height = 16
            Alignment = taCenter
            Caption = 'Meta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 533
            Top = 15
            Width = 68
            Height = 16
            Alignment = taCenter
            Caption = 'Resultado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 1
            Top = 15
            Width = 68
            Height = 16
            Alignment = taRightJustify
            Caption = 'Indicador:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
  end
end
