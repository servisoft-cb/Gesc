object fConsMovAtividade: TfConsMovAtividade
  Left = 164
  Top = 129
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Mov. Atividade'
  ClientHeight = 506
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 73
    Width = 787
    Height = 360
    TabStop = False
    Align = alClient
    Ctl3D = False
    DataSource = dsqConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    OnFilterChanged = SMDBGrid1FilterChanged
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 11
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nummov'
        Title.Caption = 'C'#243'digo'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'atividade'
        Title.Caption = 'Atividade'
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliente'
        Title.Caption = 'Cliente'
        Width = 177
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'dtpedido'
        Title.Alignment = taCenter
        Title.Caption = 'Data Pedido'
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'dtprazo'
        Title.Alignment = taCenter
        Title.Caption = 'Data Prazo'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Title.Caption = 'Respons'#225'vel'
        Width = 138
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'dtconclusao'
        Title.Caption = 'Data Conclus'#227'o'
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'hrconclusao'
        Title.Caption = 'Hora Conclus'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'qtddiasatraso'
        Title.Caption = 'Qtd. Dias Atraso  '
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'atendente'
        Title.Caption = 'Atendente'
        Width = 142
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 73
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 31
      Width = 83
      Height = 13
      Caption = 'Dt.Pedido Inicial: '
    end
    object Label2: TLabel
      Left = 194
      Top = 31
      Width = 22
      Height = 13
      Caption = 'Final'
    end
    object Label3: TLabel
      Left = 10
      Top = 53
      Width = 77
      Height = 13
      Caption = 'Dt.Prazo Inicial: '
    end
    object Label4: TLabel
      Left = 194
      Top = 53
      Width = 22
      Height = 13
      Caption = 'Final'
    end
    object Label5: TLabel
      Left = 340
      Top = 31
      Width = 97
      Height = 13
      Caption = 'Dt.Conclus'#227'o Inicial:'
    end
    object Label6: TLabel
      Left = 558
      Top = 31
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object Label7: TLabel
      Left = 42
      Top = 9
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label8: TLabel
      Left = 372
      Top = 9
      Width = 65
      Height = 13
      Caption = 'Respons'#225'vel:'
    end
    object BitBtn1: TBitBtn
      Left = 710
      Top = 36
      Width = 75
      Height = 28
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object DateEdit1: TDateEdit
      Left = 89
      Top = 23
      Width = 97
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 218
      Top = 23
      Width = 97
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 709
      Top = 4
      Width = 75
      Height = 28
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object DateEdit3: TDateEdit
      Left = 89
      Top = 45
      Width = 97
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 4
    end
    object DateEdit4: TDateEdit
      Left = 218
      Top = 45
      Width = 97
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 5
    end
    object DateEdit5: TDateEdit
      Left = 438
      Top = 23
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 6
    end
    object DateEdit6: TDateEdit
      Left = 587
      Top = 23
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 7
    end
    object ComboBox1: TComboBox
      Left = 89
      Top = 1
      Width = 226
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 8
      Text = 'Pendente'
      Items.Strings = (
        'Pendente'
        'Conclu'#237'do'
        'Ambos')
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 438
      Top = 1
      Width = 249
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM2.dsPessoa2
      ParentCtl3D = False
      TabOrder = 9
      OnEnter = RxDBLookupCombo1Enter
    end
    object ProgressBar1: TProgressBar
      Left = 439
      Top = 48
      Width = 245
      Height = 17
      TabOrder = 10
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 433
    Width = 787
    Height = 73
    Align = alBottom
    TabOrder = 2
    object Shape1: TShape
      Left = 8
      Top = 16
      Width = 24
      Height = 17
      Brush.Color = clYellow
    end
    object Label9: TLabel
      Left = 50
      Top = 20
      Width = 48
      Height = 13
      Caption = 'N'#227'o Lidas'
    end
    object Shape2: TShape
      Left = 200
      Top = 16
      Width = 23
      Height = 17
      Brush.Color = clTeal
    end
    object Label10: TLabel
      Left = 242
      Top = 20
      Width = 93
      Height = 13
      Caption = 'Conclu'#237'da no prazo'
    end
    object Shape3: TShape
      Left = 344
      Top = 16
      Width = 23
      Height = 17
      Brush.Color = clRed
    end
    object Label11: TLabel
      Left = 402
      Top = 20
      Width = 213
      Height = 13
      Caption = 'Conclu'#237'da em atraso, ou pendente em atraso'
    end
    object Label12: TLabel
      Left = 32
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 225
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 368
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 384
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape4: TShape
      Left = 104
      Top = 16
      Width = 23
      Height = 17
    end
    object Label16: TLabel
      Left = 146
      Top = 20
      Width = 46
      Height = 13
      Caption = 'Pendente'
    end
    object Label17: TLabel
      Left = 128
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn3: TBitBtn
      Left = 666
      Top = 4
      Width = 101
      Height = 29
      Caption = 'Incluir Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object StaticText1: TStaticText
      Left = 3
      Top = 48
      Width = 782
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Duplo clique para ler ou alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object qConsulta: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'select m.nummov'
      #9#9',m.dtpedido'
      #9#9',m.dtprazo'
      #9#9',m.dtconclusao'
      #9#9',m.hrconclusao'
      #9#9',m.qtddiasatraso'
      #9#9',m.obs'
      #9#9',a.nome  atividade'
      #9#9',p1.nome cliente'
      #9#9',p2.nome atendente'
      #9#9',p3.nome responsavel'
      '    ,m.HoraPedido'
      '    ,m.HoraPrazo'
      '    ,m.Lida'
      '  from dbmovatividade m'
      #9#9',dbatividade a '
      #9#9',dbpessoa p1'
      #9#9',dbpessoa p2'
      #9#9',dbpessoa p3'
      'where m.codatividade   = a.codigo '
      '  and m.codcliente     = p1.codigo'
      '  and m.codatendente   = p2.codigo'
      '  and m.codresponsavel = p3.codigo'
      ' '
      ' ')
    Left = 336
    Top = 200
    object qConsultanummov: TIntegerField
      FieldName = 'nummov'
      Origin = 'TABELAS."dbMovAtividade.DB".NumMov'
    end
    object qConsultadtpedido: TDateField
      FieldName = 'dtpedido'
      Origin = 'TABELAS."dbMovAtividade.DB".DtPedido'
    end
    object qConsultadtprazo: TDateField
      FieldName = 'dtprazo'
      Origin = 'TABELAS."dbMovAtividade.DB".DtPrazo'
    end
    object qConsultadtconclusao: TDateField
      FieldName = 'dtconclusao'
      Origin = 'TABELAS."dbMovAtividade.DB".DtConclusao'
    end
    object qConsultahrconclusao: TTimeField
      FieldName = 'hrconclusao'
      Origin = 'TABELAS."dbMovAtividade.DB".HrConclusao'
    end
    object qConsultaqtddiasatraso: TIntegerField
      FieldName = 'qtddiasatraso'
      Origin = 'TABELAS."dbMovAtividade.DB".QtdDiasAtraso'
    end
    object qConsultaobs: TMemoField
      FieldName = 'obs'
      Origin = 'TABELAS."dbMovAtividade.DB".Obs'
      BlobType = ftMemo
      Size = 1
    end
    object qConsultaatividade: TStringField
      FieldName = 'atividade'
      Origin = 'TABELAS."dbAtividade.DB".Nome'
      Size = 40
    end
    object qConsultacliente: TStringField
      FieldName = 'cliente'
      Origin = 'TABELAS."dbPessoa.DB".Nome'
      Size = 50
    end
    object qConsultaatendente: TStringField
      FieldName = 'atendente'
      Origin = 'TABELAS."dbPessoa.DB".Nome'
      Size = 50
    end
    object qConsultaresponsavel: TStringField
      FieldName = 'responsavel'
      Origin = 'TABELAS."dbPessoa.DB".Nome'
      Size = 50
    end
    object qConsultaHoraPedido: TTimeField
      FieldName = 'HoraPedido'
      Origin = 'TABELAS."dbMovAtividade.DB".HoraPedido'
    end
    object qConsultaHoraPrazo: TTimeField
      FieldName = 'HoraPrazo'
      Origin = 'TABELAS."dbMovAtividade.DB".HoraPrazo'
    end
    object qConsultaLida: TBooleanField
      FieldName = 'Lida'
      Origin = 'TABELAS."dbMovAtividade.DB".Lida'
    end
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 368
    Top = 200
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = DM2.dsPessoa2
    Filter.Strings = (
      'Funcionario = True')
    Left = 520
    Top = 64
  end
end
