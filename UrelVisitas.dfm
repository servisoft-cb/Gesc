object fRelVisitas: TfRelVisitas
  Left = 115
  Top = 164
  Width = 833
  Height = 480
  Caption = 'Relat'#243'rio de Visitas'
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
    Left = 21
    Top = 10
    Width = 794
    Height = 1123
    DataSource = fConsMovProcessoVisitas.dsqConsulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 347
      DataSource = fConsMovProcessoVisitas.dsqConsulta
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 57
        BandType = btHeader
        BeforePrint = RLBand1BeforePrint
        object RLLabel1: TRLLabel
          Left = 225
          Top = 8
          Width = 151
          Height = 19
          Caption = 'Relat'#243'rio de Visitas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 641
          Top = 2
          Width = 18
          Height = 10
          Caption = 'Pag:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 661
          Top = 2
          Width = 54
          Height = 10
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 626
          Top = 12
          Width = 33
          Height = 10
          Caption = 'Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 661
          Top = 12
          Width = 24
          Height = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 0
          Top = 42
          Width = 38
          Height = 14
          Caption = 'N'#186' Vis.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 43
          Top = 42
          Width = 67
          Height = 14
          Caption = 'Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 147
          Top = 41
          Width = 51
          Height = 14
          Caption = 'Dt. Visita'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 55
          Width = 718
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Width = 2
        end
        object RLLabel7: TRLLabel
          Left = 220
          Top = 41
          Width = 28
          Height = 14
          Caption = 'Obs.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 376
          Top = 8
          Width = 61
          Height = 19
          DataField = 'AnoRef'
          DataSource = fConsMovProcessoVisitas.dsqConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 481
          Top = 12
          Width = 30
          Height = 15
          Caption = 'M'#234's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 509
          Top = 9
          Width = 25
          Height = 19
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 536
          Top = 12
          Width = 25
          Height = 15
          Caption = 'At'#233':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 562
          Top = 9
          Width = 26
          Height = 19
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLGroup1: TRLGroup
        Left = 0
        Top = 57
        Width = 718
        Height = 64
        DataFields = 'Nome'
        BeforePrint = RLGroup1BeforePrint
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 23
          BandType = btHeader
          object RLLabel4: TRLLabel
            Left = 29
            Top = 5
            Width = 45
            Height = 14
            Caption = 'Cliente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 75
            Top = 5
            Width = 35
            Height = 14
            DataField = 'Nome'
            DataSource = fConsMovProcessoVisitas.dsqConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
        object RLSubDetail2: TRLSubDetail
          Left = 0
          Top = 23
          Width = 718
          Height = 29
          DataSource = fConsMovProcessoVisitas.dsMovProcessoVisita
          object RLBand4: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            IntegralHeight = False
            BeforePrint = RLBand4BeforePrint
            object RLDBText5: TRLDBText
              Left = 1
              Top = 2
              Width = 34
              Height = 12
              Alignment = taCenter
              AutoSize = False
              DataField = 'Item'
              DataSource = fConsMovProcessoVisitas.dsMovProcessoVisita
            end
            object RLDBText6: TRLDBText
              Left = 36
              Top = 2
              Width = 109
              Height = 12
              AutoSize = False
              DataField = 'lkNomeFuncionario'
              DataSource = fConsMovProcessoVisitas.dsMovProcessoVisita
            end
            object RLDraw4: TRLDraw
              Left = 0
              Top = 14
              Width = 718
              Height = 2
              Align = faBottom
              DrawKind = dkLine
              Pen.Style = psDot
            end
            object RLDBText7: TRLDBText
              Left = 146
              Top = 2
              Width = 72
              Height = 12
              AutoSize = False
              DataField = 'DtVisita'
              DataSource = fConsMovProcessoVisitas.dsMovProcessoVisita
            end
            object RLMemo1: TRLMemo
              Left = 219
              Top = 2
              Width = 496
              Height = 12
              IntegralHeight = True
            end
          end
        end
      end
    end
  end
end
