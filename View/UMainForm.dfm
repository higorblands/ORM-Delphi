object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 406
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 610
    Height = 351
    ActivePage = TabSheetCadastro
    Align = alClient
    TabOrder = 1
    object TabSheetListagem: TTabSheet
      Caption = 'Listagem'
      ImageIndex = 1
      object GroupBoxListagem: TGroupBox
        Left = 0
        Top = 0
        Width = 602
        Height = 98
        Align = alTop
        TabOrder = 0
        object LID: TLabel
          Left = 14
          Top = 22
          Width = 18
          Height = 13
          Caption = 'ID: '
        end
        object LNome: TLabel
          Left = 84
          Top = 22
          Width = 34
          Height = 13
          Caption = 'Nome: '
        end
        object LCurso: TLabel
          Left = 259
          Top = 22
          Width = 35
          Height = 13
          Caption = 'Curso: '
        end
        object LPeriodo: TLabel
          Left = 428
          Top = 22
          Width = 43
          Height = 13
          Caption = 'Per'#237'odo: '
        end
        object LSituacao: TLabel
          Left = 506
          Top = 22
          Width = 48
          Height = 13
          Caption = 'Situa'#231#227'o: '
        end
        object edtFiltroID: TEdit
          Left = 38
          Top = 19
          Width = 37
          Height = 21
          NumbersOnly = True
          TabOrder = 0
        end
        object edtFiltroNome: TEdit
          Left = 124
          Top = 19
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Panel1: TPanel
          Left = -4
          Top = 57
          Width = 757
          Height = 41
          TabOrder = 2
          object btnDetalhes: TButton
            Left = 188
            Top = 5
            Width = 75
            Height = 25
            Caption = 'Detalhes'
            TabOrder = 1
          end
          object btnFiltrar: TButton
            Left = 82
            Top = 5
            Width = 75
            Height = 25
            Caption = 'Filtrar'
            TabOrder = 0
          end
          object btnLimpar: TButton
            AlignWithMargins = True
            Left = 297
            Top = 5
            Width = 75
            Height = 25
            Caption = 'Limpar'
            TabOrder = 2
          end
        end
        object edtFiltroCurso: TEdit
          Left = 293
          Top = 19
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object edtFiltroPeriodo: TEdit
          Left = 470
          Top = 19
          Width = 25
          Height = 21
          NumbersOnly = True
          TabOrder = 4
        end
        object edtFiltroSituacao: TEdit
          Left = 553
          Top = 19
          Width = 25
          Height = 21
          MaxLength = 1
          TabOrder = 5
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 104
        Width = 601
        Height = 253
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Painel: TPanel
        Left = 0
        Top = 276
        Width = 602
        Height = 47
        Align = alBottom
        TabOrder = 2
      end
    end
    object TabSheetCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 3
        Top = 27
        Width = 40
        Height = 13
        Caption = 'Id Aluno'
      end
      object Label10: TLabel
        Left = 342
        Top = 27
        Width = 77
        Height = 13
        Caption = 'Usuario inclus'#227'o'
      end
      object Label11: TLabel
        Left = 342
        Top = 51
        Width = 84
        Height = 13
        Caption = 'Usuario altera'#231#227'o'
      end
      object Label17: TLabel
        Left = 342
        Top = 81
        Width = 93
        Height = 13
        Caption = 'Data/Hora Inclus'#227'o'
      end
      object Label18: TLabel
        Left = 342
        Top = 106
        Width = 99
        Height = 13
        Caption = 'Data/Hora Altera'#231#227'o'
      end
      object Label19: TLabel
        Left = 342
        Top = 137
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
      end
      object Label2: TLabel
        Left = 3
        Top = 51
        Width = 57
        Height = 13
        Caption = 'Nome Aluno'
      end
      object Label3: TLabel
        Left = 3
        Top = 75
        Width = 28
        Height = 13
        Caption = 'Curso'
      end
      object Label4: TLabel
        Left = 3
        Top = 123
        Width = 28
        Height = 13
        Caption = 'Turno'
      end
      object Label5: TLabel
        Left = 3
        Top = 99
        Width = 36
        Height = 13
        Caption = 'Per'#237'odo'
      end
      object Label6: TLabel
        Left = 1
        Top = 195
        Width = 68
        Height = 13
        Caption = 'Data Ingresso'
      end
      object Label7: TLabel
        Left = 3
        Top = 146
        Width = 41
        Height = 13
        Caption = 'Situa'#231#227'o'
      end
      object Label8: TLabel
        Left = 0
        Top = 170
        Width = 53
        Height = 13
        Caption = 'Cadeirante'
      end
      object Label9: TLabel
        Left = 414
        Top = 214
        Width = 95
        Height = 13
        Caption = 'Voltar para listagem'
      end
      object MemoObservacao: TMemo
        Left = 342
        Top = 160
        Width = 226
        Height = 48
        Lines.Strings = (
          '')
        TabOrder = 0
      end
      object EditCurso: TEdit
        Left = 72
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object EditIdAluno: TEdit
        Left = 72
        Top = 24
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 2
      end
      object EditNomeAluno: TEdit
        Left = 72
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object EditPeriodo: TEdit
        Left = 72
        Top = 96
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 4
      end
      object EditSituacao: TEdit
        Left = 72
        Top = 143
        Width = 121
        Height = 21
        MaxLength = 1
        TabOrder = 5
      end
      object EditTurno: TEdit
        Left = 72
        Top = 120
        Width = 121
        Height = 21
        MaxLength = 1
        TabOrder = 6
      end
      object EditUsuarioAlteracao: TEdit
        Left = 447
        Top = 51
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object EditUsuarioInclusao: TEdit
        Left = 447
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 8
      end
      object btnCadastroVoltar: TButton
        Left = 422
        Top = 233
        Width = 75
        Height = 17
        Caption = 'Voltar'
        TabOrder = 9
        OnClick = btnCadastroVoltarClick
      end
      object ComboBoxCadeirante: TComboBox
        Left = 72
        Top = 167
        Width = 121
        Height = 21
        Style = csDropDownList
        TabOrder = 10
        Items.Strings = (
          'True')
      end
      object DateTimePickerIngresso: TDateTimePicker
        Left = 72
        Top = 194
        Width = 121
        Height = 20
        Date = 44225.618625092590000000
        Time = 44225.618625092590000000
        TabOrder = 11
      end
      object DateTimePickerInclusao: TDateTimePicker
        Left = 447
        Top = 78
        Width = 121
        Height = 20
        Date = 44225.618625092590000000
        Time = 44225.618625092590000000
        TabOrder = 12
      end
      object DateTimePickerAlteracao: TDateTimePicker
        Left = 447
        Top = 104
        Width = 121
        Height = 20
        Date = 44225.618625092590000000
        Time = 44225.618625092590000000
        TabOrder = 13
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 351
    Width = 610
    Height = 55
    Align = alBottom
    TabOrder = 0
    object btnIncluir: TButton
      Left = 88
      Top = 16
      Width = 49
      Height = 26
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TButton
      Left = 160
      Top = 16
      Width = 50
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnSalvar: TButton
      Left = 232
      Top = 16
      Width = 50
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
    end
    object btnCancelar: TButton
      Left = 307
      Top = 16
      Width = 49
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnExcluir: TButton
      Left = 382
      Top = 16
      Width = 51
      Height = 25
      Caption = 'Excluir'
      TabOrder = 4
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=SA'
      'Database=dbAlunos'
      'Password=admserver01'
      'Server=localhost'
      'DriverID=MSSQL')
    Connected = True
    Left = 404
    Top = 304
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from aluno')
    Left = 476
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 540
    Top = 304
  end
end