object fRelIdeias: TfRelIdeias
  Left = 5
  Top = 113
  Width = 796
  Height = 417
  Caption = 'fRelIdeias'
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
    Left = 8
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fIdeias.dsqConsulta
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
      DataSource = fIdeias.dsqConsulta
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 36
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 248
          Top = 8
          Width = 177
          Height = 16
          Caption = 'Registro de Id'#233'ias Criativas'
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
        Height = 33
        object RLLabel6: TRLLabel
          Left = 589
          Top = 7
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
          Top = 7
          Width = 33
          Height = 14
          DataField = 'DtMov'
          DataSource = fIdeias.dsqConsulta
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 29
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
        object RLLabel11: TRLLabel
          Left = 7
          Top = 6
          Width = 70
          Height = 14
          Caption = 'Funcion'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 79
          Top = 6
          Width = 86
          Height = 14
          DataField = 'NomeFuncionario'
          DataSource = fIdeias.dsqConsulta
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 69
        Width = 718
        Height = 38
        object RLLabel7: TRLLabel
          Left = 5
          Top = 3
          Width = 76
          Height = 14
          Alignment = taRightJustify
          Caption = 'Id'#233'ia Criativa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 5
          Top = 18
          Width = 696
          Height = 14
          DataField = 'Ideia'
          DataSource = fIdeias.dsqConsulta
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 34
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 107
        Width = 718
        Height = 37
        object RLLabel8: TRLLabel
          Left = 4
          Top = 3
          Width = 143
          Height = 14
          Alignment = taRightJustify
          Caption = 'Como colocar em pr'#225'tica:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo2: TRLDBMemo
          Left = 5
          Top = 18
          Width = 631
          Height = 14
          DataField = 'ColocarEmPratica'
          DataSource = fIdeias.dsqConsulta
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 33
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 144
        Width = 718
        Height = 37
        object RLLabel9: TRLLabel
          Left = 4
          Top = 3
          Width = 82
          Height = 14
          Alignment = taRightJustify
          Caption = 'Aplicabilidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo3: TRLDBMemo
          Left = 5
          Top = 18
          Width = 631
          Height = 14
          DataField = 'Aplicabilidade'
          DataSource = fIdeias.dsqConsulta
        end
        object RLDraw5: TRLDraw
          Left = 0
          Top = 33
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 181
        Width = 718
        Height = 39
        object RLLabel10: TRLLabel
          Left = 8
          Top = 3
          Width = 79
          Height = 14
          Alignment = taRightJustify
          Caption = 'Investimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo4: TRLDBMemo
          Left = 7
          Top = 20
          Width = 706
          Height = 14
          DataField = 'Investimento'
          DataSource = fIdeias.dsqConsulta
        end
        object RLDraw6: TRLDraw
          Left = 0
          Top = 35
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
        object RLLabel26: TRLLabel
          Left = 382
          Top = 3
          Width = 35
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo9: TRLDBMemo
          Left = 421
          Top = 3
          Width = 104
          Height = 14
          DataField = 'VlrInvestimento'
          DataSource = fIdeias.dsqConsulta
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 220
        Width = 718
        Height = 39
        object RLLabel4: TRLLabel
          Left = 7
          Top = 3
          Width = 170
          Height = 14
          Alignment = taRightJustify
          Caption = 'Retorno (economia/produ'#231#227'o):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo5: TRLDBMemo
          Left = 7
          Top = 18
          Width = 688
          Height = 14
          DataField = 'Retorno'
          DataSource = fIdeias.dsqConsulta
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 35
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
        object RLLabel5: TRLLabel
          Left = 382
          Top = 3
          Width = 35
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo6: TRLDBMemo
          Left = 421
          Top = 3
          Width = 104
          Height = 14
          DataField = 'VlrRetorno'
          DataSource = fIdeias.dsqConsulta
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 259
        Width = 718
        Height = 73
        BeforePrint = RLBand9BeforePrint
        object RLLabel24: TRLLabel
          Left = 3
          Top = 35
          Width = 78
          Height = 14
          Alignment = taRightJustify
          Caption = 'Justificativas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo7: TRLDBMemo
          Left = 4
          Top = 50
          Width = 688
          Height = 14
          DataField = 'Justificativa'
          DataSource = fIdeias.dsqConsulta
        end
        object RLDraw7: TRLDraw
          Left = 0
          Top = 69
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
        object RLDraw8: TRLDraw
          Left = 227
          Top = 13
          Width = 27
          Height = 21
        end
        object RLLabel25: TRLLabel
          Left = 235
          Top = 15
          Width = 13
          Height = 16
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 256
          Top = 15
          Width = 57
          Height = 16
          Caption = 'Aprovada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 323
          Top = 13
          Width = 27
          Height = 21
        end
        object RLLabel28: TRLLabel
          Left = 331
          Top = 15
          Width = 13
          Height = 16
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 352
          Top = 15
          Width = 64
          Height = 16
          Caption = 'Reprovada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 817
      Width = 718
      Height = 24
      BandType = btFooter
      object RLLabel12: TRLLabel
        Left = 326
        Top = 8
        Width = 387
        Height = 14
        Caption = 
          'Avaliar na reuni'#227'o semanal, a aplicabilidade e analise do invest' +
          'imento e retorno.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
