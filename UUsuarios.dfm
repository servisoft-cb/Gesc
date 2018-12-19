object fUsuarios: TfUsuarios
  Left = 57
  Top = 32
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 487
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 487
    Align = alClient
    Enabled = False
    TabOrder = 0
    object Label3: TLabel
      Left = 6
      Top = 8
      Width = 66
      Height = 19
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 578
      Height = 62
      Align = alTop
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 0
      object Label1: TLabel
        Left = 212
        Top = 8
        Width = 80
        Height = 16
        Caption = 'Funcion'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 17
        Top = 31
        Width = 55
        Height = 19
        Caption = 'Senha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 6
        Top = 7
        Width = 66
        Height = 19
        Caption = 'Usu'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit1: TDBEdit
        Left = 75
        Top = 6
        Width = 120
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Usuario'
        DataSource = DM1.dsUsuario
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 75
        Top = 29
        Width = 55
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Senha'
        DataSource = DM1.dsUsuario
        PasswordChar = '*'
        TabOrder = 1
        OnKeyDown = DBEdit2KeyDown
      end
      object Panel3: TPanel
        Left = 454
        Top = 35
        Width = 121
        Height = 24
        TabOrder = 3
        object DBCheckBox1: TDBCheckBox
          Left = 13
          Top = 3
          Width = 97
          Height = 17
          Caption = 'Administrador'
          DataField = 'Administrador'
          DataSource = DM1.dsUsuario
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 293
        Top = 4
        Width = 281
        Height = 21
        DropDownCount = 8
        DataField = 'CodPessoa'
        DataSource = DM1.dsUsuario
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsPessoa
        TabOrder = 2
      end
    end
    object PageControl1: TPageControl
      Left = 8
      Top = 71
      Width = 564
      Height = 371
      ActivePage = TabSheet1
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Manuten'#231#227'o'
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 556
          Height = 342
          BevelOuter = bvLowered
          TabOrder = 0
          object Bevel1: TBevel
            Left = 278
            Top = 1
            Width = 2
            Height = 340
            Shape = bsLeftLine
          end
          object Bevel2: TBevel
            Left = 251
            Top = 2
            Width = 25
            Height = 338
          end
          object Bevel3: TBevel
            Left = 528
            Top = 4
            Width = 25
            Height = 336
          end
          object DBCheckBox27: TDBCheckBox
            Left = 13
            Top = 26
            Width = 236
            Height = 17
            Caption = 'Cadastro de Clientes........................................'
            DataField = 'Pessoa'
            DataSource = DM1.dsUsuario
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox27Click
          end
          object BitBtn7: TBitBtn
            Left = 254
            Top = 26
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn7Click
          end
          object DBCheckBox2: TDBCheckBox
            Left = 13
            Top = 62
            Width = 236
            Height = 17
            Caption = 'Cadastro Setor.................................................'
            DataField = 'Setor'
            DataSource = DM1.dsUsuario
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox2Click
          end
          object BitBtn8: TBitBtn
            Left = 254
            Top = 63
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BitBtn8Click
          end
          object DBCheckBox3: TDBCheckBox
            Left = 13
            Top = 82
            Width = 236
            Height = 17
            Caption = 'Cadastro do Processo......................................'
            DataField = 'Processo'
            DataSource = DM1.dsUsuario
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox3Click
          end
          object BitBtn9: TBitBtn
            Left = 254
            Top = 84
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = BitBtn9Click
          end
          object DBCheckBox4: TDBCheckBox
            Left = 13
            Top = 102
            Width = 236
            Height = 17
            Caption = 'Cadastro da A'#231#227'o............................................'
            DataField = 'Acao'
            DataSource = DM1.dsUsuario
            TabOrder = 6
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox4Click
          end
          object BitBtn10: TBitBtn
            Left = 254
            Top = 104
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BitBtn10Click
          end
          object DBCheckBox5: TDBCheckBox
            Left = 13
            Top = 122
            Width = 236
            Height = 17
            Caption = 'Movimento da A'#231#227'o.........................................'
            DataField = 'MovAcao'
            DataSource = DM1.dsUsuario
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox5Click
          end
          object BitBtn11: TBitBtn
            Left = 254
            Top = 124
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            OnClick = BitBtn11Click
          end
          object DBCheckBox6: TDBCheckBox
            Left = 13
            Top = 143
            Width = 236
            Height = 17
            Caption = 'Movimento dos Processos...............................'
            DataField = 'MovProcesso'
            DataSource = DM1.dsUsuario
            TabOrder = 10
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox6Click
          end
          object BitBtn12: TBitBtn
            Left = 254
            Top = 145
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            OnClick = BitBtn12Click
          end
          object DBCheckBox7: TDBCheckBox
            Left = 13
            Top = 166
            Width = 236
            Height = 17
            Caption = 
              'Objetivo........................................................' +
              '....'
            DataField = 'Objetivo'
            DataSource = DM1.dsUsuario
            TabOrder = 12
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox7Click
          end
          object BitBtn13: TBitBtn
            Left = 254
            Top = 168
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
            OnClick = BitBtn13Click
          end
          object DBCheckBox8: TDBCheckBox
            Left = 13
            Top = 189
            Width = 236
            Height = 17
            Caption = 
              'Atividade.......................................................' +
              '...'
            DataField = 'Atividade'
            DataSource = DM1.dsUsuario
            TabOrder = 14
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox8Click
          end
          object BitBtn14: TBitBtn
            Left = 254
            Top = 191
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
            OnClick = BitBtn14Click
          end
          object DBCheckBox9: TDBCheckBox
            Left = 13
            Top = 210
            Width = 236
            Height = 17
            Caption = 'Movimento das Atividades...............................'
            DataField = 'MovAtividade'
            DataSource = DM1.dsUsuario
            TabOrder = 16
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox9Click
          end
          object BitBtn15: TBitBtn
            Left = 254
            Top = 213
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
            OnClick = BitBtn15Click
          end
          object DBCheckBox10: TDBCheckBox
            Left = 13
            Top = 231
            Width = 236
            Height = 17
            Caption = 'Movimento dos Objetivos.................................'
            DataField = 'MovObjetivo'
            DataSource = DM1.dsUsuario
            TabOrder = 18
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox10Click
          end
          object BitBtn16: TBitBtn
            Left = 254
            Top = 235
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
            OnClick = BitBtn16Click
          end
          object DBCheckBox11: TDBCheckBox
            Left = 13
            Top = 44
            Width = 236
            Height = 17
            Caption = 'Cadastro de Funcion'#225'rios.................................'
            DataField = 'Funcionario'
            DataSource = DM1.dsUsuario
            TabOrder = 20
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox27Click
          end
          object BitBtn17: TBitBtn
            Left = 254
            Top = 44
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 21
            OnClick = BitBtn7Click
          end
          object DBCheckBox12: TDBCheckBox
            Left = 13
            Top = 6
            Width = 236
            Height = 17
            Caption = 
              'Agenda..........................................................' +
              '..'
            DataField = 'Agenda'
            DataSource = DM1.dsUsuario
            TabOrder = 22
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox12Click
          end
          object BitBtn18: TBitBtn
            Left = 254
            Top = 6
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 23
            OnClick = BitBtn18Click
          end
          object DBCheckBox13: TDBCheckBox
            Left = 13
            Top = 252
            Width = 236
            Height = 17
            Caption = 
              'Perspectiva.....................................................' +
              '.'
            DataField = 'Perspectiva'
            DataSource = DM1.dsUsuario
            TabOrder = 24
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox13Click
          end
          object BitBtn19: TBitBtn
            Left = 254
            Top = 256
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 25
            OnClick = BitBtn19Click
          end
          object DBCheckBox14: TDBCheckBox
            Left = 13
            Top = 275
            Width = 236
            Height = 17
            Caption = 'Fato/Causa/A'#231#227'o............................................'
            DataField = 'Fato'
            DataSource = DM1.dsUsuario
            TabOrder = 26
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox14Click
          end
          object BitBtn20: TBitBtn
            Left = 254
            Top = 279
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 27
            OnClick = BitBtn20Click
          end
          object DBCheckBox15: TDBCheckBox
            Left = 13
            Top = 296
            Width = 236
            Height = 17
            Caption = 'Registro de id'#233'ias  criativas..............................'
            DataField = 'Ideias'
            DataSource = DM1.dsUsuario
            TabOrder = 28
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox15Click
          end
          object BitBtn21: TBitBtn
            Left = 254
            Top = 300
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 29
            OnClick = BitBtn21Click
          end
          object DBCheckBox16: TDBCheckBox
            Left = 13
            Top = 317
            Width = 236
            Height = 17
            Caption = 
              'Indicadores.....................................................' +
              '.'
            DataField = 'Indicadores'
            DataSource = DM1.dsUsuario
            TabOrder = 30
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox16Click
          end
          object BitBtn22: TBitBtn
            Left = 254
            Top = 321
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 31
            OnClick = BitBtn22Click
          end
          object DBCheckBox17: TDBCheckBox
            Left = 290
            Top = 6
            Width = 236
            Height = 17
            Caption = 
              'Feriados........................................................' +
              '..'
            DataField = 'Feriados'
            DataSource = DM1.dsUsuario
            TabOrder = 32
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox17Click
          end
          object BitBtn23: TBitBtn
            Left = 531
            Top = 6
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 33
            OnClick = BitBtn23Click
          end
          object DBCheckBox18: TDBCheckBox
            Left = 290
            Top = 25
            Width = 236
            Height = 17
            Caption = 'Controle de Visitas...........................................'
            DataField = 'ConsVisita'
            DataSource = DM1.dsUsuario
            TabOrder = 34
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox18Click
          end
          object BitBtn24: TBitBtn
            Left = 531
            Top = 25
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 35
            OnClick = BitBtn24Click
          end
          object DBCheckBox19: TDBCheckBox
            Left = 290
            Top = 44
            Width = 236
            Height = 17
            Caption = 'Tipo Processo.................................................'
            DataField = 'TipoProcesso'
            DataSource = DM1.dsUsuario
            TabOrder = 36
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox19Click
          end
          object BitBtn25: TBitBtn
            Left = 531
            Top = 44
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 37
            OnClick = BitBtn25Click
          end
          object DBCheckBox20: TDBCheckBox
            Left = 290
            Top = 63
            Width = 236
            Height = 17
            Caption = 'Processo Geral................................................'
            DataField = 'ProcessoGeral'
            DataSource = DM1.dsUsuario
            TabOrder = 38
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox20Click
          end
          object BitBtn26: TBitBtn
            Left = 531
            Top = 63
            Width = 18
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 39
            OnClick = BitBtn26Click
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 451
    Width = 572
    Height = 33
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 4
      Top = 4
      Width = 128
      Height = 25
      DataSource = DM1.dsUsuario
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Hints.Strings = (
        'Vai para o primeiro usu'#225'rio'
        'Volta para o usu'#225'rio anterior'
        'Vai para o pr'#243'ximo usu'#225'rio'
        'Vai para o '#250'ltimo usu'#225'rio')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 132
      Top = 4
      Width = 72
      Height = 25
      Hint = 'Insere um novo usu'#225'rio'
      Caption = '&Inserir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn2Click
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
    object BitBtn3: TBitBtn
      Left = 204
      Top = 4
      Width = 72
      Height = 25
      Hint = 'Altera o usu'#225'rio especificado'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 276
      Top = 4
      Width = 72
      Height = 25
      Hint = 'Exclui o usu'#225'rio selecionado'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object BitBtn5: TBitBtn
      Left = 348
      Top = 4
      Width = 74
      Height = 25
      Hint = 'Cancela a altera'#231#227'o ou inclus'#227'o do usu'#225'rio'
      Caption = 'Ca&ncelar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn5Click
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000C40E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080808080808080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080FFFFFF008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800000FF0000
        800000808080800080800080800080800080800080800000FF80808000808000
        8080008080008080008080008080008080008080808080808080FFFFFF008080
        008080008080008080008080008080FFFFFF0080800080800080800080800080
        800080800080800000FF00008000008000008080808000808000808000808000
        00FF000080000080808080008080008080008080008080008080008080808080
        FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
        FF0080800080800080800080800080800080800000FF00008000008000008000
        00808080800080800000FF000080000080000080000080808080008080008080
        008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
        FF808080008080008080808080FFFFFF00808000808000808000808000808000
        80800000FF000080000080000080000080808080000080000080000080000080
        000080808080008080008080008080008080008080808080FFFFFF0080800080
        80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
        80800080800080800080800080800080800000FF000080000080000080000080
        0000800000800000800000808080800080800080800080800080800080800080
        80008080808080FFFFFF00808000808000808080808000808000808000808000
        8080FFFFFF808080008080008080008080008080008080008080008080008080
        0000FF0000800000800000800000800000800000808080800080800080800080
        80008080008080008080008080008080008080808080FFFFFF00808000808000
        8080008080008080008080FFFFFF808080008080008080008080008080008080
        0080800080800080800080800080800000800000800000800000800000808080
        8000808000808000808000808000808000808000808000808000808000808000
        8080808080FFFFFF008080008080008080008080008080808080008080008080
        0080800080800080800080800080800080800080800080800080800000FF0000
        8000008000008000008080808000808000808000808000808000808000808000
        8080008080008080008080008080008080808080FFFFFF008080008080008080
        8080800080800080800080800080800080800080800080800080800080800080
        800080800000FF00008000008000008000008000008080808000808000808000
        8080008080008080008080008080008080008080008080008080008080808080
        008080008080008080008080808080FFFFFF0080800080800080800080800080
        800080800080800080800080800000FF00008000008000008080808000008000
        0080000080808080008080008080008080008080008080008080008080008080
        008080008080808080008080008080008080008080008080808080FFFFFF0080
        800080800080800080800080800080800080800080800000FF00008000008000
        00808080800080800000FF000080000080000080808080008080008080008080
        008080008080008080008080008080808080008080008080008080808080FFFF
        FF008080008080808080FFFFFF00808000808000808000808000808000808000
        80800000FF0000800000808080800080800080800080800000FF000080000080
        000080808080008080008080008080008080008080008080808080FFFFFF0080
        80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
        80800080800080800080800080800080800000FF000080008080008080008080
        0080800080800000FF0000800000800000800080800080800080800080800080
        80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
        8080008080808080FFFFFF008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800000FF0000800000FF0080
        8000808000808000808000808000808000808080808080808000808000808000
        8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080808080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 422
      Top = 4
      Width = 74
      Height = 25
      Hint = 'Confirma a altera'#231#227'o ou inclus'#227'o'
      Caption = '&Confirmar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn1Click
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000C40E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8080000080000000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808080000000800000800080000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        8080800080800080808080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800000800000
        8000800000008080008080008080008080008080008080008080008080008080
        0080800080800080808080800080800080800080800080808080800080800080
        8000808000808000808000808000808000808000808000808000808080000000
        8000008000008000008000008000008000800000008080008080008080008080
        0080800080800080800080800080800080808080800080800080800080800080
        8000808000808080808080808000808000808000808000808000808000808000
        808000808080000000800000800000800000FF00008000008000008000008000
        8000000080800080800080800080800080800080800080800080808080800080
        8000808000808080808000808000808000808000808080808000808000808000
        808000808000808000808000808000808000800000800000800000FF00008080
        00FF000080000080000080008000000080800080800080800080800080800080
        8000808000808080808000808000808080808000808080808000808000808000
        808080808000808000808000808000808000808000808000808000808000FF00
        00800000FF0000808000808000808000FF000080000080000080008000000080
        8000808000808000808000808000808000808080808000808080808000808000
        8080008080808080008080008080008080808080008080008080008080008080
        00808000808000808000808000FF0000808000808000808000808000808000FF
        0000800000800000800080000000808000808000808000808000808000808000
        8080808080008080008080008080008080008080808080008080008080008080
        8080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000FF0000800000800000800080000000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080808080800080800080800080808080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000FF0000
        8000008000008000800000008080008080008080008080008080008080008080
        0080800080800080800080800080800080808080800080800080800080808080
        8000808000808000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8080808000808000808000808080808000808000808000808000808000808000
        808000808000808000808000808000808000808000808000808000FF00008000
        0080000080008000000080800080800080800080800080800080800080800080
        8000808000808000808000808000808080808000808000808000808080808000
        8080008080008080008080008080008080008080008080008080008080008080
        00808000808000808000FF000080000080008000000080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808080
        8080008080008080808080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080808080FFFFFF808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000FF0000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080808080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
    end
    object BitBtn6: TBitBtn
      Left = 496
      Top = 4
      Width = 73
      Height = 25
      Hint = 'Fecha a janela atual'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BitBtn6Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
        038383838383830E603800000000380E660033333330830E660333333330000E
        660333330030330E660333330E00330E660300000EE0330E06030EEEEEE6030E
        660300000E60330E660333330600330E660333330030330E6603333333303330
        E6033333333033330E0333333330000000033333333333333333}
    end
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = DM1.dsPessoa
    Filter.Strings = (
      'Funcionario = True')
    Left = 404
    Top = 31
  end
end
