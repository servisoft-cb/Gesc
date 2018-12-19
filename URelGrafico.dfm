object fRelGrafico: TfRelGrafico
  Left = 34
  Top = 99
  Width = 903
  Height = 480
  Caption = 'Gr'#225'fico'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 8
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = fGraficoIndicadores.qIndicadores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 467
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1235.604166666667000000
        1957.916666666667000000)
      BandType = rbTitle
      object QRChart1: TQRChart
        Left = 8
        Top = 48
        Width = 716
        Height = 392
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1037.166666666667000000
          21.166666666666670000
          127.000000000000000000
          1894.416666666667000000)
        object QRDBChart1: TQRDBChart
          Left = -1
          Top = -1
          Width = 1
          Height = 1
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold, fsItalic]
          Title.Text.Strings = (
            'GR'#193'FICO DE INDICADORES')
          object BarSeries4: TBarSeries
            Marks.ArrowLength = 20
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = fGraficoIndicadores.qIndicadores
            SeriesColor = clYellow
            Title = 'Resultado'
            XLabelsSource = 'Ano'
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Resultado'
          end
          object BarSeries5: TBarSeries
            Marks.ArrowLength = 20
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = fGraficoIndicadores.qIndicadores
            SeriesColor = clGray
            Title = 'Refer'#234'ncia'
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Referencia'
          end
          object BarSeries6: TBarSeries
            Marks.ArrowLength = 20
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = fGraficoIndicadores.qIndicadores
            SeriesColor = clBlue
            Title = 'Meta'
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Meta'
          end
        end
      end
      object QRLabel1: TQRLabel
        Left = 0
        Top = 16
        Width = 737
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          42.333333333333340000
          1949.979166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
  end
end
