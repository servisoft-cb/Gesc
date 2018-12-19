object fRelFato: TfRelFato
  Left = 5
  Top = 113
  Width = 796
  Height = 417
  HorzScrollBar.Position = 16
  Caption = 'fRelFato'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -8
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fFato.dsqConsulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 779
      DataSource = fFato.dsqConsulta
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 36
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 248
          Top = 8
          Width = 205
          Height = 16
          Caption = 'Formul'#225'rio de Fato/Causa/A'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 624
          Top = 5
          Width = 25
          Height = 12
          Caption = 'P'#225'g.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 651
          Top = 5
          Width = 63
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 651
          Top = 20
          Width = 29
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 623
          Top = 20
          Width = 26
          Height = 12
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 36
        Width = 718
        Height = 43
        object RLLabel4: TRLLabel
          Left = 39
          Top = 5
          Width = 45
          Height = 14
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 85
          Top = 5
          Width = 62
          Height = 14
          DataField = 'NomeCliente'
          DataSource = fFato.dsqConsulta
        end
        object RLLabel5: TRLLabel
          Left = 587
          Top = 5
          Width = 14
          Height = 14
          Caption = 'N'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 604
          Top = 5
          Width = 66
          Height = 14
          DataField = 'CodCliente_1'
          DataSource = fFato.dsqConsulta
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 19
          Width = 717
          Height = 4
          DrawKind = dkLine
        end
        object RLLabel6: TRLLabel
          Left = 589
          Top = 24
          Width = 29
          Height = 14
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 620
          Top = 24
          Width = 64
          Height = 14
          DataField = 'DtMovimento'
          DataSource = fFato.dsqConsulta
        end
        object RLDraw2: TRLDraw
          Left = 1
          Top = 40
          Width = 717
          Height = 4
          DrawKind = dkLine
        end
        object RLLabel11: TRLLabel
          Left = 7
          Top = 23
          Width = 77
          Height = 14
          Caption = 'Respons'#225'vel:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 85
          Top = 23
          Width = 87
          Height = 14
          DataField = 'NomeResposavel'
          DataSource = fFato.dsqConsulta
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 79
        Width = 718
        Height = 25
        object RLLabel7: TRLLabel
          Left = 8
          Top = 3
          Width = 41
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 50
          Top = 4
          Width = 631
          Height = 14
          DataField = 'Fato'
          DataSource = fFato.dsqConsulta
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 21
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 104
        Width = 718
        Height = 25
        object RLLabel8: TRLLabel
          Left = 3
          Top = 3
          Width = 46
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Causas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo2: TRLDBMemo
          Left = 50
          Top = 4
          Width = 631
          Height = 14
          DataField = 'Causa'
          DataSource = fFato.dsqConsulta
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 21
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 129
        Width = 718
        Height = 25
        object RLLabel9: TRLLabel
          Left = 8
          Top = 3
          Width = 41
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'A'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo3: TRLDBMemo
          Left = 50
          Top = 4
          Width = 631
          Height = 14
          DataField = 'Acao'
          DataSource = fFato.dsqConsulta
        end
        object RLDraw5: TRLDraw
          Left = 0
          Top = 21
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 179
        Width = 718
        Height = 25
        object RLLabel10: TRLLabel
          Left = 8
          Top = 3
          Width = 41
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo4: TRLDBMemo
          Left = 50
          Top = 4
          Width = 631
          Height = 14
          DataField = 'Obs'
          DataSource = fFato.dsqConsulta
        end
        object RLDraw6: TRLDraw
          Left = 0
          Top = 21
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 204
        Width = 718
        Height = 45
        BeforePrint = RLBand7BeforePrint
        object RLLabel12: TRLLabel
          Left = 160
          Top = 4
          Width = 110
          Height = 16
          Caption = 'I n s a t i s f e i t o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 475
          Top = 4
          Width = 126
          Height = 16
          Caption = 'Totalmente Satisfeito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLD1: TRLDraw
          Left = 137
          Top = 21
          Width = 48
          Height = 21
        end
        object RLLabel14: TRLLabel
          Left = 157
          Top = 23
          Width = 11
          Height = 16
          Caption = '1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLD2: TRLDraw
          Left = 184
          Top = 21
          Width = 48
          Height = 21
        end
        object RLLabel15: TRLLabel
          Left = 204
          Top = 23
          Width = 11
          Height = 16
          Caption = '2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLD3: TRLDraw
          Left = 231
          Top = 21
          Width = 48
          Height = 21
        end
        object RLLabel16: TRLLabel
          Left = 251
          Top = 23
          Width = 11
          Height = 16
          Caption = '3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLD4: TRLDraw
          Left = 278
          Top = 21
          Width = 48
          Height = 21
        end
        object RLLabel17: TRLLabel
          Left = 298
          Top = 23
          Width = 11
          Height = 16
          Caption = '4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLD5: TRLDraw
          Left = 325
          Top = 21
          Width = 48
          Height = 21
        end
        object RLLabel18: TRLLabel
          Left = 345
          Top = 23
          Width = 11
          Height = 16
          Caption = '5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLD6: TRLDraw
          Left = 372
          Top = 21
          Width = 48
          Height = 21
        end
        object RLLabel19: TRLLabel
          Left = 392
          Top = 23
          Width = 11
          Height = 16
          Caption = '6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLD7: TRLDraw
          Left = 419
          Top = 21
          Width = 48
          Height = 21
        end
        object RLLabel20: TRLLabel
          Left = 439
          Top = 23
          Width = 11
          Height = 16
          Caption = '7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLD8: TRLDraw
          Left = 466
          Top = 21
          Width = 48
          Height = 21
        end
        object RLLabel21: TRLLabel
          Left = 486
          Top = 23
          Width = 11
          Height = 16
          Caption = '8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLD9: TRLDraw
          Left = 513
          Top = 21
          Width = 48
          Height = 21
        end
        object RLLabel22: TRLLabel
          Left = 533
          Top = 23
          Width = 11
          Height = 16
          Caption = '9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLD10: TRLDraw
          Left = 560
          Top = 21
          Width = 48
          Height = 21
        end
        object RLLabel23: TRLLabel
          Left = 572
          Top = 23
          Width = 18
          Height = 16
          Caption = '10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 154
        Width = 718
        Height = 25
        object RLLabel24: TRLLabel
          Left = 11
          Top = 3
          Width = 94
          Height = 14
          Alignment = taRightJustify
          Caption = 'A'#231#227'o preventiva:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo5: TRLDBMemo
          Left = 107
          Top = 4
          Width = 574
          Height = 14
          DataField = 'AcaoPrev'
          DataSource = fFato.dsqConsulta
        end
        object RLDraw7: TRLDraw
          Left = 0
          Top = 21
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
      end
    end
  end
end
