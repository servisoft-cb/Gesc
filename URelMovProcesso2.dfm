object fRelMovProcesso2: TfRelMovProcesso2
  Left = 196
  Top = 107
  Width = 812
  Height = 612
  Caption = 'fRelMovProcesso2'
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
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fConsMovProcesso.dsSetor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 289
      DataSource = fConsMovProcesso.dsSetor
      object RLBand1: TRLBand
        Left = 0
        Top = 66
        Width = 718
        Height = 22
        object RLDraw31: TRLDraw
          Left = 0
          Top = 0
          Width = 253
          Height = 23
        end
        object RLDBText1: TRLDBText
          Left = 4
          Top = 3
          Width = 245
          Height = 16
          AutoSize = False
          DataField = 'Setor'
          DataSource = fConsMovProcesso.dsSetor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw48: TRLDraw
          Left = 252
          Top = 0
          Width = 62
          Height = 23
        end
        object RLDraw49: TRLDraw
          Left = 313
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw50: TRLDraw
          Left = 592
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw51: TRLDraw
          Left = 623
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw52: TRLDraw
          Left = 654
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw53: TRLDraw
          Left = 685
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw54: TRLDraw
          Left = 468
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw55: TRLDraw
          Left = 499
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw56: TRLDraw
          Left = 530
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw57: TRLDraw
          Left = 561
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw58: TRLDraw
          Left = 437
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw59: TRLDraw
          Left = 406
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw60: TRLDraw
          Left = 375
          Top = 0
          Width = 32
          Height = 23
        end
        object RLDraw61: TRLDraw
          Left = 344
          Top = 0
          Width = 32
          Height = 23
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 88
        Width = 718
        Height = 58
        DataSource = fConsMovProcesso.dsSetorResponsavel
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 23
          object RLDraw33: TRLDraw
            Left = 0
            Top = 0
            Width = 253
            Height = 23
          end
          object RLDBText2: TRLDBText
            Left = 20
            Top = 2
            Width = 229
            Height = 16
            AutoSize = False
            Color = clSilver
            DataField = 'Responsavel'
            DataSource = fConsMovProcesso.dsSetorResponsavel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDraw34: TRLDraw
            Left = 252
            Top = 0
            Width = 62
            Height = 23
          end
          object RLDraw35: TRLDraw
            Left = 313
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw36: TRLDraw
            Left = 592
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw37: TRLDraw
            Left = 623
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw38: TRLDraw
            Left = 654
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw39: TRLDraw
            Left = 685
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw40: TRLDraw
            Left = 468
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw41: TRLDraw
            Left = 499
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw42: TRLDraw
            Left = 530
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw43: TRLDraw
            Left = 561
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw44: TRLDraw
            Left = 437
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw45: TRLDraw
            Left = 406
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw46: TRLDraw
            Left = 375
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw47: TRLDraw
            Left = 344
            Top = 0
            Width = 32
            Height = 23
          end
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 146
        Width = 718
        Height = 93
        DataSource = fConsMovProcesso.dsSetorProcesso
        object RLBand3: TRLBand
          Left = 0
          Top = 21
          Width = 718
          Height = 23
          BeforePrint = RLBand3BeforePrint
          object RLDraw30: TRLDraw
            Left = 685
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw29: TRLDraw
            Left = 654
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw28: TRLDraw
            Left = 623
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw27: TRLDraw
            Left = 592
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw26: TRLDraw
            Left = 561
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw25: TRLDraw
            Left = 530
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw24: TRLDraw
            Left = 499
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw23: TRLDraw
            Left = 468
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw22: TRLDraw
            Left = 437
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw21: TRLDraw
            Left = 406
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw20: TRLDraw
            Left = 375
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw19: TRLDraw
            Left = 344
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw16: TRLDraw
            Left = 0
            Top = 0
            Width = 253
            Height = 23
          end
          object RLDBText3: TRLDBText
            Left = 41
            Top = 4
            Width = 208
            Height = 16
            AutoSize = False
            DataField = 'Processo'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 346
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'Mes1'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDraw17: TRLDraw
            Left = 252
            Top = 0
            Width = 62
            Height = 23
          end
          object RLDBText5: TRLDBText
            Left = 255
            Top = 4
            Width = 56
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'DiaVecto'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw18: TRLDraw
            Left = 313
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDBText6: TRLDBText
            Left = 377
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'Mes2'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText7: TRLDBText
            Left = 408
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'Mes3'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText8: TRLDBText
            Left = 439
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'Mes4'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText9: TRLDBText
            Left = 470
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'mes5'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText10: TRLDBText
            Left = 501
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'Mes6'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText11: TRLDBText
            Left = 532
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'Mes7'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText12: TRLDBText
            Left = 563
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'Mes8'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText13: TRLDBText
            Left = 594
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'Mes9'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText14: TRLDBText
            Left = 625
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'Mes10'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText15: TRLDBText
            Left = 656
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'Mes11'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText16: TRLDBText
            Left = 687
            Top = 4
            Width = 28
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            DataField = 'Mes12'
            DataSource = fConsMovProcesso.dsSetorProcesso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 21
          BandType = btHeader
          object RLDraw14: TRLDraw
            Left = 252
            Top = 0
            Width = 62
            Height = 23
          end
          object RLDraw13: TRLDraw
            Left = 0
            Top = 0
            Width = 253
            Height = 23
          end
          object RLDraw9: TRLDraw
            Left = 592
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw10: TRLDraw
            Left = 623
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw11: TRLDraw
            Left = 654
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw12: TRLDraw
            Left = 685
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw5: TRLDraw
            Left = 468
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw6: TRLDraw
            Left = 499
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw7: TRLDraw
            Left = 530
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw8: TRLDraw
            Left = 561
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw4: TRLDraw
            Left = 437
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw3: TRLDraw
            Left = 406
            Top = 0
            Width = 32
            Height = 23
          end
          object RLLabel4: TRLLabel
            Left = 410
            Top = 4
            Width = 24
            Height = 14
            Caption = 'Mar'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDraw2: TRLDraw
            Left = 375
            Top = 0
            Width = 32
            Height = 23
          end
          object RLDraw1: TRLDraw
            Left = 344
            Top = 0
            Width = 32
            Height = 23
          end
          object RLLabel1: TRLLabel
            Left = 40
            Top = 5
            Width = 63
            Height = 14
            Caption = 'Processos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 348
            Top = 4
            Width = 22
            Height = 14
            Caption = 'Jan'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel3: TRLLabel
            Left = 379
            Top = 4
            Width = 22
            Height = 14
            Caption = 'Fev'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel5: TRLLabel
            Left = 441
            Top = 4
            Width = 23
            Height = 14
            Caption = 'Abr'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel6: TRLLabel
            Left = 472
            Top = 4
            Width = 22
            Height = 14
            Caption = 'Mai'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel7: TRLLabel
            Left = 503
            Top = 4
            Width = 23
            Height = 14
            Caption = 'Jun'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel8: TRLLabel
            Left = 534
            Top = 4
            Width = 19
            Height = 14
            Caption = 'Jul'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel9: TRLLabel
            Left = 565
            Top = 4
            Width = 25
            Height = 14
            Caption = 'Ago'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 596
            Top = 4
            Width = 21
            Height = 14
            Caption = 'Set'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 627
            Top = 4
            Width = 22
            Height = 14
            Caption = 'Out'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel12: TRLLabel
            Left = 658
            Top = 4
            Width = 23
            Height = 14
            Caption = 'Nov'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel13: TRLLabel
            Left = 689
            Top = 4
            Width = 23
            Height = 14
            Caption = 'Dez'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel14: TRLLabel
            Left = 256
            Top = 5
            Width = 54
            Height = 14
            Caption = 'Dia Vecto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw15: TRLDraw
            Left = 313
            Top = 0
            Width = 32
            Height = 23
          end
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 66
        BandType = btHeader
        object RLDraw32: TRLDraw
          Left = 0
          Top = 0
          Width = 717
          Height = 67
        end
        object RLLabel15: TRLLabel
          Left = 4
          Top = 24
          Width = 33
          Height = 14
          Caption = 'Setor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 21
          Top = 43
          Width = 74
          Height = 14
          Caption = 'Respons'#225'vel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 243
          Top = 30
          Width = 262
          Height = 19
          Caption = 'Matriz de Gest'#227'o dos Processos / '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 503
          Top = 29
          Width = 55
          Height = 19
          AutoSize = False
          DataField = 'Ano'
          DataSource = fConsMovProcesso.dsSetor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 103
          Top = 6
          Width = 602
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
    object RLBand6: TRLBand
      Left = 38
      Top = 327
      Width = 718
      Height = 24
      BandType = btFooter
      object RLDraw62: TRLDraw
        Left = 0
        Top = 0
        Width = 253
        Height = 23
      end
      object RLDraw63: TRLDraw
        Left = 252
        Top = 0
        Width = 21
        Height = 23
        Brush.Color = clSilver
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLDraw64: TRLDraw
        Left = 272
        Top = 0
        Width = 73
        Height = 23
      end
      object RLDraw65: TRLDraw
        Left = 344
        Top = 0
        Width = 32
        Height = 23
        Brush.Color = clGreen
      end
      object RLDraw66: TRLDraw
        Left = 375
        Top = 0
        Width = 94
        Height = 23
      end
      object RLDraw69: TRLDraw
        Left = 468
        Top = 0
        Width = 32
        Height = 23
        Brush.Color = clYellow
      end
      object RLDraw70: TRLDraw
        Left = 499
        Top = 0
        Width = 94
        Height = 23
      end
      object RLDraw73: TRLDraw
        Left = 592
        Top = 0
        Width = 32
        Height = 23
        Brush.Color = clRed
      end
      object RLDraw74: TRLDraw
        Left = 623
        Top = 0
        Width = 63
        Height = 23
      end
      object RLDraw76: TRLDraw
        Left = 685
        Top = 0
        Width = 32
        Height = 23
      end
      object RLLabel19: TRLLabel
        Left = 4
        Top = 4
        Width = 51
        Height = 14
        Caption = 'Legenda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 278
        Top = 6
        Width = 61
        Height = 11
        Caption = 'Respons'#225'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 382
        Top = 6
        Width = 74
        Height = 11
        Caption = 'Concl no Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 504
        Top = 6
        Width = 74
        Height = 11
        Caption = '>/ 95% e < 100%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 628
        Top = 6
        Width = 32
        Height = 11
        Caption = '</ 95%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
