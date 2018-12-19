object fRelMovObjetivoAcao: TfRelMovObjetivoAcao
  Left = 14
  Top = 29
  Width = 812
  Height = 529
  HorzScrollBar.Position = 24
  Caption = 'fRelMovObjetivoAcao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -16
    Top = 8
    Width = 1123
    Height = 794
    DataSource = fConsMovObjetivo.dsObjetivoAcao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 1047
      Height = 167
      DataSource = fConsMovObjetivo.dsObjetivoAcao
      object RLBand2: TRLBand
        Left = 0
        Top = 50
        Width = 1047
        Height = 52
        BeforePrint = RLBand2BeforePrint
        object RLDraw7: TRLDraw
          Left = 290
          Top = 35
          Width = 161
          Height = 17
        end
        object RLDBText4: TRLDBText
          Left = 294
          Top = 37
          Width = 72
          Height = 13
          AutoSize = False
          Color = clGreen
          DataField = 'TitularAuxiliar'
          DataSource = fConsMovObjetivo.dsObjetivoAcao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw6: TRLDraw
          Left = 224
          Top = 35
          Width = 67
          Height = 17
        end
        object RLDraw5: TRLDraw
          Left = 3
          Top = 35
          Width = 222
          Height = 17
        end
        object RLDBText3: TRLDBText
          Left = 8
          Top = 37
          Width = 211
          Height = 12
          AutoSize = False
          DataField = 'Acao'
          DataSource = fConsMovObjetivo.dsObjetivoAcao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw19: TRLDraw
          Left = 450
          Top = 35
          Width = 265
          Height = 17
        end
        object RLLabel2: TRLLabel
          Left = 1
          Top = -2
          Width = 61
          Height = 16
          Caption = 'Objetivo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 60
          Top = -2
          Width = 422
          Height = 16
          AutoSize = False
          DataField = 'Objetivo'
          DataSource = fConsMovObjetivo.dsObjetivoAcao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 3
          Top = 19
          Width = 222
          Height = 17
        end
        object RLDraw2: TRLDraw
          Left = 224
          Top = 19
          Width = 67
          Height = 17
        end
        object RLDraw3: TRLDraw
          Left = 290
          Top = 19
          Width = 161
          Height = 17
        end
        object RLDraw4: TRLDraw
          Left = 450
          Top = 19
          Width = 265
          Height = 17
        end
        object RLLabel3: TRLLabel
          Left = 8
          Top = 20
          Width = 30
          Height = 14
          Caption = 'A'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 228
          Top = 20
          Width = 63
          Height = 14
          Caption = 'Correla'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 296
          Top = 20
          Width = 134
          Height = 14
          Caption = 'Titular da A'#231#227'o / Auxiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 541
          Top = 20
          Width = 72
          Height = 14
          Caption = 'Cronograma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 375
          Top = 37
          Width = 72
          Height = 13
          AutoSize = False
          Color = clBlue
          DataField = 'Auxiliar'
          DataSource = fConsMovObjetivo.dsObjetivoAcao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel16: TRLLabel
          Left = 367
          Top = 37
          Width = 6
          Height = 14
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 102
        Width = 1047
        Height = 41
        DataSource = fConsMovObjetivo.dsCronograma
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 1047
          Height = 17
          GroupIndex = 1
          BeforePrint = RLBand3BeforePrint
          object RLDraw18: TRLDraw
            Left = 450
            Top = -1
            Width = 75
            Height = 18
          end
          object RLDraw8: TRLDraw
            Left = 524
            Top = -1
            Width = 20
            Height = 18
            Brush.Color = clWindow
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object RLDBText5: TRLDBText
            Left = 526
            Top = 1
            Width = 16
            Height = 14
            AutoSize = False
            DataField = 'Dia1'
            DataSource = fConsMovObjetivo.dsCronograma
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 455
            Top = 1
            Width = 67
            Height = 11
            AutoSize = False
            DataField = 'Mes'
            DataSource = fConsMovObjetivo.dsCronograma
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw9: TRLDraw
            Left = 543
            Top = -1
            Width = 20
            Height = 18
            Brush.Color = clWindow
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object RLDBText6: TRLDBText
            Left = 545
            Top = 1
            Width = 16
            Height = 14
            AutoSize = False
            DataField = 'Dia2'
            DataSource = fConsMovObjetivo.dsCronograma
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw10: TRLDraw
            Left = 562
            Top = -1
            Width = 20
            Height = 18
            Brush.Color = clWindow
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object RLDBText7: TRLDBText
            Left = 564
            Top = 1
            Width = 16
            Height = 14
            AutoSize = False
            DataField = 'Dia3'
            DataSource = fConsMovObjetivo.dsCronograma
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw11: TRLDraw
            Left = 581
            Top = -1
            Width = 20
            Height = 18
            Brush.Color = clWindow
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object RLDBText8: TRLDBText
            Left = 583
            Top = 1
            Width = 16
            Height = 14
            AutoSize = False
            DataField = 'Dia4'
            DataSource = fConsMovObjetivo.dsCronograma
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw12: TRLDraw
            Left = 600
            Top = -1
            Width = 20
            Height = 18
            Brush.Color = clWindow
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object RLDBText9: TRLDBText
            Left = 602
            Top = 1
            Width = 16
            Height = 14
            AutoSize = False
            DataField = 'Dia5'
            DataSource = fConsMovObjetivo.dsCronograma
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw13: TRLDraw
            Left = 619
            Top = -1
            Width = 20
            Height = 18
            Brush.Color = clWindow
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object RLDBText10: TRLDBText
            Left = 621
            Top = 1
            Width = 16
            Height = 14
            AutoSize = False
            DataField = 'Dia6'
            DataSource = fConsMovObjetivo.dsCronograma
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw14: TRLDraw
            Left = 638
            Top = -1
            Width = 20
            Height = 18
            Brush.Color = clWindow
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object RLDBText11: TRLDBText
            Left = 640
            Top = 1
            Width = 16
            Height = 14
            AutoSize = False
            DataField = 'Dia7'
            DataSource = fConsMovObjetivo.dsCronograma
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw15: TRLDraw
            Left = 657
            Top = -1
            Width = 20
            Height = 18
            Brush.Color = clWindow
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object RLDBText12: TRLDBText
            Left = 659
            Top = 1
            Width = 16
            Height = 14
            AutoSize = False
            DataField = 'Dia8'
            DataSource = fConsMovObjetivo.dsCronograma
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw16: TRLDraw
            Left = 676
            Top = -1
            Width = 20
            Height = 18
            Brush.Color = clWindow
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object RLDBText13: TRLDBText
            Left = 678
            Top = 1
            Width = 16
            Height = 14
            AutoSize = False
            DataField = 'Dia9'
            DataSource = fConsMovObjetivo.dsCronograma
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw17: TRLDraw
            Left = 695
            Top = -1
            Width = 20
            Height = 18
            Brush.Color = clWindow
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object RLDBText14: TRLDBText
            Left = 697
            Top = 1
            Width = 16
            Height = 14
            AutoSize = False
            DataField = 'Dia10'
            DataSource = fConsMovObjetivo.dsCronograma
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 50
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 1
          Top = 27
          Width = 101
          Height = 16
          Caption = 'Plano de A'#231#227'o '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 106
          Top = 27
          Width = 47
          Height = 16
          AutoSize = False
          DataField = 'Ano'
          DataSource = fConsMovObjetivo.dsObjetivoAcao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 62
          Top = 3
          Width = 604
          Height = 19
          Alignment = taCenter
          AutoSize = False
          DataField = 'Empresa'
          DataSource = DM1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 205
      Width = 1047
      Height = 84
      BandType = btFooter
      object RLDraw23: TRLDraw
        Left = 3
        Top = 65
        Width = 222
        Height = 17
      end
      object RLDraw22: TRLDraw
        Left = 3
        Top = 49
        Width = 222
        Height = 17
      end
      object RLDraw21: TRLDraw
        Left = 3
        Top = 33
        Width = 222
        Height = 17
      end
      object RLDraw20: TRLDraw
        Left = 3
        Top = 17
        Width = 222
        Height = 17
      end
      object RLLabel7: TRLLabel
        Left = 4
        Top = 1
        Width = 194
        Height = 14
        Caption = 'Correla'#231#227'o da A'#231#227'o com o Objetivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 7
        Top = 18
        Width = 32
        Height = 14
        Caption = 'Forte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 7
        Top = 34
        Width = 36
        Height = 14
        Caption = 'M'#233'dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 7
        Top = 51
        Width = 32
        Height = 14
        Caption = 'Fraca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 8
        Top = 67
        Width = 26
        Height = 14
        Caption = 'Nula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw24: TRLDraw
        Left = 224
        Top = 17
        Width = 67
        Height = 17
        Brush.Color = clGreen
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw25: TRLDraw
        Left = 224
        Top = 33
        Width = 67
        Height = 17
        Brush.Color = clBlue
      end
      object RLDraw26: TRLDraw
        Left = 224
        Top = 49
        Width = 67
        Height = 17
        Brush.Color = clYellow
      end
      object RLDraw27: TRLDraw
        Left = 224
        Top = 65
        Width = 67
        Height = 17
      end
      object RLDraw28: TRLDraw
        Left = 290
        Top = 17
        Width = 161
        Height = 17
      end
      object RLDraw29: TRLDraw
        Left = 290
        Top = 33
        Width = 161
        Height = 17
      end
      object RLDraw30: TRLDraw
        Left = 290
        Top = 49
        Width = 161
        Height = 17
      end
      object RLDraw31: TRLDraw
        Left = 290
        Top = 65
        Width = 161
        Height = 17
      end
      object RLDraw32: TRLDraw
        Left = 450
        Top = 17
        Width = 75
        Height = 17
      end
      object RLDraw33: TRLDraw
        Left = 450
        Top = 33
        Width = 75
        Height = 17
      end
      object RLDraw34: TRLDraw
        Left = 450
        Top = 49
        Width = 75
        Height = 17
      end
      object RLDraw35: TRLDraw
        Left = 450
        Top = 65
        Width = 75
        Height = 17
      end
      object RLLabel12: TRLLabel
        Left = 454
        Top = 19
        Width = 51
        Height = 14
        Caption = 'No Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 454
        Top = 34
        Width = 53
        Height = 14
        Caption = 'Atrasado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw36: TRLDraw
        Left = 524
        Top = 17
        Width = 20
        Height = 17
        Brush.Color = clGreen
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw37: TRLDraw
        Left = 543
        Top = 17
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw38: TRLDraw
        Left = 562
        Top = 17
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw39: TRLDraw
        Left = 581
        Top = 17
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw40: TRLDraw
        Left = 600
        Top = 17
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw41: TRLDraw
        Left = 619
        Top = 17
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw42: TRLDraw
        Left = 638
        Top = 17
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw43: TRLDraw
        Left = 657
        Top = 17
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw44: TRLDraw
        Left = 676
        Top = 17
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw45: TRLDraw
        Left = 695
        Top = 17
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw46: TRLDraw
        Left = 524
        Top = 33
        Width = 20
        Height = 17
        Brush.Color = clRed
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw47: TRLDraw
        Left = 543
        Top = 33
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw48: TRLDraw
        Left = 562
        Top = 33
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw49: TRLDraw
        Left = 581
        Top = 33
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw50: TRLDraw
        Left = 600
        Top = 33
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw51: TRLDraw
        Left = 619
        Top = 33
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw52: TRLDraw
        Left = 638
        Top = 33
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw53: TRLDraw
        Left = 657
        Top = 33
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw54: TRLDraw
        Left = 676
        Top = 33
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw55: TRLDraw
        Left = 695
        Top = 33
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw56: TRLDraw
        Left = 524
        Top = 49
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw57: TRLDraw
        Left = 543
        Top = 49
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw58: TRLDraw
        Left = 562
        Top = 49
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw59: TRLDraw
        Left = 581
        Top = 49
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw60: TRLDraw
        Left = 600
        Top = 49
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw61: TRLDraw
        Left = 619
        Top = 49
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw62: TRLDraw
        Left = 638
        Top = 49
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw63: TRLDraw
        Left = 657
        Top = 49
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw64: TRLDraw
        Left = 676
        Top = 49
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw65: TRLDraw
        Left = 695
        Top = 49
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw66: TRLDraw
        Left = 524
        Top = 65
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw67: TRLDraw
        Left = 543
        Top = 65
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw68: TRLDraw
        Left = 562
        Top = 65
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw69: TRLDraw
        Left = 581
        Top = 65
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw70: TRLDraw
        Left = 600
        Top = 65
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw71: TRLDraw
        Left = 619
        Top = 65
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw72: TRLDraw
        Left = 638
        Top = 65
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw73: TRLDraw
        Left = 657
        Top = 65
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw74: TRLDraw
        Left = 676
        Top = 65
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw75: TRLDraw
        Left = 695
        Top = 65
        Width = 20
        Height = 17
        Brush.Color = clWindow
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 296
        Top = 19
        Width = 84
        Height = 14
        Caption = 'Titular da A'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 296
        Top = 35
        Width = 44
        Height = 14
        Caption = 'Auxiliar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw76: TRLDraw
        Left = 398
        Top = 17
        Width = 53
        Height = 17
        Brush.Color = clGreen
      end
      object RLDraw77: TRLDraw
        Left = 398
        Top = 33
        Width = 53
        Height = 17
        Brush.Color = clBlue
      end
    end
  end
end
