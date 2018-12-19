object fConsMovProcesso: TfConsMovProcesso
  Left = -2
  Top = 112
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Mov. Processo'
  ClientHeight = 467
  ClientWidth = 1011
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
  object Bevel2: TBevel
    Left = 0
    Top = 71
    Width = 775
    Height = 2
    Shape = bsTopLine
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 73
    Width = 1011
    Height = 361
    TabStop = False
    Align = alClient
    DataSource = dsqConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 23
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 10
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'anoref'
        Title.Alignment = taCenter
        Title.Caption = 'Ano'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mesref'
        Title.Alignment = taCenter
        Title.Caption = 'M'#234's'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomesetor'
        Title.Alignment = taCenter
        Title.Caption = 'Setor'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomeprocesso'
        Title.Alignment = taCenter
        Title.Caption = 'Processo'
        Width = 236
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtvencimento'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomecliente'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 243
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtconclusao'
        Title.Alignment = taCenter
        Title.Caption = 'Data Conclus'#227'o'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clDiasAtraso'
        Title.Alignment = taCenter
        Title.Caption = 'Dias Atraso Calculado'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtddiasatrazo'
        Title.Alignment = taCenter
        Title.Caption = 'Dias Atraso'
        Width = 42
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 73
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 515
      Top = 11
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label4: TLabel
      Left = 17
      Top = 11
      Width = 22
      Height = 13
      Caption = 'Ano:'
    end
    object Label2: TLabel
      Left = 797
      Top = 12
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Bevel1: TBevel
      Left = 0
      Top = 31
      Width = 998
      Height = 2
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 105
      Top = 11
      Width = 53
      Height = 13
      Caption = 'M'#234's Inicial:'
    end
    object Label5: TLabel
      Left = 200
      Top = 11
      Width = 48
      Height = 13
      Caption = 'M'#234's Final:'
    end
    object Label6: TLabel
      Left = 305
      Top = 11
      Width = 28
      Height = 13
      Caption = 'Setor:'
    end
    object BitBtn1: TBitBtn
      Left = 526
      Top = 37
      Width = 84
      Height = 28
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 357
      Top = 37
      Width = 84
      Height = 28
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 552
      Top = 5
      Width = 235
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsPessoa
      TabOrder = 4
      OnEnter = RxDBLookupCombo2Enter
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 41
      Top = 5
      Width = 32
      Height = 21
      AutoSize = False
      DisplayFormat = '0000'
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 441
      Top = 37
      Width = 84
      Height = 28
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn3Click
    end
    object ComboBox1: TComboBox
      Left = 844
      Top = 4
      Width = 150
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Pendente'
      Items.Strings = (
        'Pendente'
        'Conclu'#237'do'
        'Ambos')
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 161
      Top = 5
      Width = 32
      Height = 21
      AutoSize = False
      DisplayFormat = '00'
      TabOrder = 1
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 250
      Top = 5
      Width = 32
      Height = 21
      AutoSize = False
      DisplayFormat = '00'
      TabOrder = 2
      OnExit = CurrencyEdit3Exit
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 337
      Top = 5
      Width = 160
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsSetor
      TabOrder = 3
      OnEnter = RxDBLookupCombo1Enter
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 434
    Width = 1011
    Height = 33
    Align = alBottom
    TabOrder = 2
    object Shape1: TShape
      Left = 17
      Top = 8
      Width = 23
      Height = 17
      Brush.Color = clRed
    end
    object Label9: TLabel
      Left = 43
      Top = 12
      Width = 48
      Height = 13
      Caption = 'Em Atraso'
    end
    object Label10: TLabel
      Left = 131
      Top = 12
      Width = 47
      Height = 13
      Caption = 'Concluida'
    end
    object Shape2: TShape
      Left = 105
      Top = 8
      Width = 23
      Height = 17
      Brush.Color = clTeal
    end
    object StaticText1: TStaticText
      Left = 216
      Top = 8
      Width = 161
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = ' F3 = Conclus'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object qConsulta: TQuery
    OnCalcFields = qConsultaCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'select p.nummov'
      #9#9',p.codcliente'
      #9#9',pe.nome nomecliente'
      #9#9',p.mesref'
      #9#9',p.anoref'
      #9#9',s.codsetor'
      #9#9',r.nome nomesetor'
      #9#9',i.codprocesso'
      #9#9',c.nome nomeprocesso'
      '    ,c.diavecto'
      #9#9',i.dtconclusao'
      #9#9',i.dtvencimento'
      #9#9',i.qtddiasatrazo'
      'from dbmovprocesso p'
      #9' ,dbmovprocessosetor s'
      #9' ,dbmovprocessoitens i'
      #9' ,dbpessoa pe'
      #9' ,dbsetor r'
      #9' ,dbprocesso c'
      'where p.nummov      = s.nummov'
      '  and s.nummov      = i.nummov'
      '  and s.codsetor    = i.codsetor'
      '  and p.codcliente  = pe.codigo'
      '  and s.codsetor    = r.codigo'
      '  and i.codprocesso = c.codigo'
      ' ')
    Left = 792
    Top = 187
    object qConsultanummov: TIntegerField
      FieldName = 'nummov'
      Origin = 'TABELAS."dbMovProcesso.DB".NumMov'
    end
    object qConsultacodcliente: TIntegerField
      FieldName = 'codcliente'
      Origin = 'TABELAS."dbMovProcesso.DB".CodCliente'
    end
    object qConsultanomecliente: TStringField
      FieldName = 'nomecliente'
      Origin = 'TABELAS."dbPessoa.DB".Nome'
      Size = 50
    end
    object qConsultamesref: TIntegerField
      FieldName = 'mesref'
      Origin = 'TABELAS."dbMovProcesso.DB".MesRef'
    end
    object qConsultaanoref: TIntegerField
      FieldName = 'anoref'
      Origin = 'TABELAS."dbMovProcesso.DB".AnoRef'
    end
    object qConsultacodsetor: TIntegerField
      FieldName = 'codsetor'
      Origin = 'TABELAS."dbmovprocessosetor.DB".CodSetor'
    end
    object qConsultanomesetor: TStringField
      FieldName = 'nomesetor'
      Origin = 'TABELAS."dbSetor.DB".Nome'
      Size = 40
    end
    object qConsultacodprocesso: TIntegerField
      FieldName = 'codprocesso'
      Origin = 'TABELAS."dbmovprocessoitens.DB".CodProcesso'
    end
    object qConsultanomeprocesso: TStringField
      FieldName = 'nomeprocesso'
      Origin = 'TABELAS."dbProcesso.DB".Nome'
      Size = 50
    end
    object qConsultadiavecto: TIntegerField
      FieldName = 'diavecto'
      Origin = 'TABELAS."dbProcesso.DB".DiaVecto'
    end
    object qConsultadtconclusao: TDateField
      FieldName = 'dtconclusao'
      Origin = 'TABELAS."dbmovprocessoitens.DB".DtConclusao'
    end
    object qConsultadtvencimento: TDateField
      FieldName = 'dtvencimento'
      Origin = 'TABELAS."dbmovprocessoitens.DB".DtVencimento'
    end
    object qConsultaqtddiasatrazo: TIntegerField
      FieldName = 'qtddiasatrazo'
      Origin = 'TABELAS."dbmovprocessoitens.DB".QtdDiasAtrazo'
    end
    object qConsultaclDiasAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'clDiasAtraso'
      Calculated = True
    end
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 820
    Top = 187
  end
  object mSetorProcesso: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Processo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DiaVecto'
        DataType = ftInteger
      end
      item
        Name = 'Mes1'
        DataType = ftFloat
      end
      item
        Name = 'Mes2'
        DataType = ftFloat
      end
      item
        Name = 'Mes3'
        DataType = ftFloat
      end
      item
        Name = 'Mes4'
        DataType = ftFloat
      end
      item
        Name = 'mes5'
        DataType = ftFloat
      end
      item
        Name = 'Mes6'
        DataType = ftFloat
      end
      item
        Name = 'Mes7'
        DataType = ftFloat
      end
      item
        Name = 'Mes8'
        DataType = ftFloat
      end
      item
        Name = 'Mes9'
        DataType = ftFloat
      end
      item
        Name = 'Mes10'
        DataType = ftFloat
      end
      item
        Name = 'Mes11'
        DataType = ftFloat
      end
      item
        Name = 'Mes12'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    MasterFields = 'ID'
    MasterSource = dsSetor
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 862
    Top = 152
    Data = {
      F20000009619E0BD01000000180000000F000000000003000000F20002494404
      000100000000000850726F636573736F01004900000001000557494454480200
      0200320008446961566563746F0400010000000000044D657331080004000000
      0000044D6573320800040000000000044D6573330800040000000000044D6573
      340800040000000000046D6573350800040000000000044D6573360800040000
      000000044D6573370800040000000000044D6573380800040000000000044D65
      73390800040000000000054D657331300800040000000000054D657331310800
      040000000000054D6573313208000400000000000000}
    object mSetorProcessoID: TIntegerField
      FieldName = 'ID'
    end
    object mSetorProcessoProcesso: TStringField
      FieldName = 'Processo'
      Size = 50
    end
    object mSetorProcessoDiaVecto: TIntegerField
      FieldName = 'DiaVecto'
    end
    object mSetorProcessoMes1: TFloatField
      FieldName = 'Mes1'
      DisplayFormat = '###.##'
    end
    object mSetorProcessoMes2: TFloatField
      FieldName = 'Mes2'
      DisplayFormat = '###.##'
    end
    object mSetorProcessoMes3: TFloatField
      FieldName = 'Mes3'
      DisplayFormat = '###.##'
    end
    object mSetorProcessoMes4: TFloatField
      FieldName = 'Mes4'
      DisplayFormat = '###.##'
    end
    object mSetorProcessomes5: TFloatField
      FieldName = 'mes5'
      DisplayFormat = '###.##'
    end
    object mSetorProcessoMes6: TFloatField
      FieldName = 'Mes6'
      DisplayFormat = '###.##'
    end
    object mSetorProcessoMes7: TFloatField
      FieldName = 'Mes7'
      DisplayFormat = '###.##'
    end
    object mSetorProcessoMes8: TFloatField
      FieldName = 'Mes8'
      DisplayFormat = '###.##'
    end
    object mSetorProcessoMes9: TFloatField
      FieldName = 'Mes9'
      DisplayFormat = '###.##'
    end
    object mSetorProcessoMes10: TFloatField
      FieldName = 'Mes10'
      DisplayFormat = '###.##'
    end
    object mSetorProcessoMes11: TFloatField
      FieldName = 'Mes11'
      DisplayFormat = '###.##'
    end
    object mSetorProcessoMes12: TFloatField
      FieldName = 'Mes12'
      DisplayFormat = '###.##'
    end
  end
  object dsSetorProcesso: TDataSource
    DataSet = mSetorProcesso
    Left = 890
    Top = 152
  end
  object mSetor: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Ano'
        DataType = ftInteger
      end
      item
        Name = 'Setor'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    Params = <>
    StoreDefs = True
    Left = 791
    Top = 152
    Data = {
      4B0000009619E0BD0100000018000000030000000000030000004B0002494404
      0001000000000003416E6F0400010000000000055365746F7201004900000001
      000557494454480200020032000000}
    object mSetorID: TIntegerField
      FieldName = 'ID'
    end
    object mSetorAno: TIntegerField
      FieldName = 'Ano'
    end
    object mSetorSetor: TStringField
      FieldName = 'Setor'
      Size = 50
    end
  end
  object dsSetor: TDataSource
    DataSet = mSetor
    Left = 819
    Top = 152
  end
  object dsSetorResponsavel: TDataSource
    DataSet = mSetorResponsavel
    Left = 964
    Top = 152
  end
  object mSetorResponsavel: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Responsavel'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    MasterFields = 'ID'
    MasterSource = dsSetor
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 936
    Top = 152
    Data = {
      450000009619E0BD010000001800000002000000000003000000450002494404
      000100000000000B526573706F6E736176656C01004900000001000557494454
      480200020032000000}
    object mSetorResponsavelID: TIntegerField
      FieldName = 'ID'
    end
    object mSetorResponsavelResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
  end
  object qPrazo: TQuery
    DatabaseName = 'Tabelas'
    Left = 862
    Top = 187
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = DM2.dsPessoa2
    Filter.Strings = (
      '(Funcionario = True) and (DtDemissao is Null)')
    Left = 936
    Top = 187
  end
end
