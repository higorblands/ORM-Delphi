object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 477
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 422
    ActivePage = TabSheetCadastro
    Align = alClient
    TabOrder = 1
    object TabSheetListagem: TTabSheet
      Caption = 'Listagem'
      ImageIndex = 1
      object GroupBoxListagem: TGroupBox
        Left = 0
        Top = -6
        Width = 776
        Height = 98
        TabOrder = 0
        object LID: TLabel
          Left = 246
          Top = 16
          Width = 18
          Height = 13
          Caption = 'ID: '
        end
        object LNome: TLabel
          Left = 305
          Top = 16
          Width = 34
          Height = 13
          Caption = 'Nome: '
        end
        object LCurso: TLabel
          Left = 464
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Curso: '
        end
        object LPeriodo: TLabel
          Left = 624
          Top = 16
          Width = 43
          Height = 13
          Caption = 'Per'#237'odo: '
        end
        object LSituacao: TLabel
          Left = 698
          Top = 16
          Width = 48
          Height = 13
          Caption = 'Situa'#231#227'o: '
        end
        object edtFiltroID: TEdit
          Left = 263
          Top = 13
          Width = 37
          Height = 21
          NumbersOnly = True
          TabOrder = 0
        end
        object edtFiltroNome: TEdit
          Left = 337
          Top = 13
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object edtFiltroCurso: TEdit
          Left = 497
          Top = 13
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object edtFiltroPeriodo: TEdit
          Left = 667
          Top = 13
          Width = 25
          Height = 21
          NumbersOnly = True
          TabOrder = 3
        end
        object edtFiltroSituacao: TEdit
          Left = 748
          Top = 13
          Width = 25
          Height = 21
          MaxLength = 1
          TabOrder = 4
        end
        object btnDetalhes: TButton
          Left = 84
          Top = 16
          Width = 75
          Height = 79
          Caption = 'Detalhes'
          TabOrder = 5
          OnClick = btnDetalhesClick
        end
        object btnFiltrar: TButton
          Left = 3
          Top = 16
          Width = 75
          Height = 79
          Caption = 'Filtrar'
          TabOrder = 6
          OnClick = btnFiltrarClick
        end
        object btnLimpar: TButton
          Left = 165
          Top = 16
          Width = 75
          Height = 79
          Caption = 'Limpar'
          TabOrder = 7
          OnClick = btnLimparClick
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 98
        Width = 773
        Height = 295
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
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
      object MemoObservacao: TMemo
        Left = 342
        Top = 160
        Width = 226
        Height = 48
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
      object ComboBoxCadeirante: TComboBox
        Left = 72
        Top = 167
        Width = 121
        Height = 21
        Style = csDropDownList
        TabOrder = 9
        Items.Strings = (
          'Indefinido'
          'Cadeirante'
          'N'#227'o-cadeirante')
      end
      object DateTimePickerIngresso: TDateTimePicker
        Left = 72
        Top = 194
        Width = 121
        Height = 20
        Date = 44225.618625092590000000
        Time = 44225.618625092590000000
        TabOrder = 10
      end
      object DateTimePickerInclusao: TDateTimePicker
        Left = 447
        Top = 78
        Width = 121
        Height = 20
        Date = 44225.618625092590000000
        Time = 44225.618625092590000000
        TabOrder = 11
      end
      object DateTimePickerAlteracao: TDateTimePicker
        Left = 447
        Top = 104
        Width = 121
        Height = 20
        Date = 44225.618625092590000000
        Time = 44225.618625092590000000
        TabOrder = 12
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 422
    Width = 784
    Height = 55
    Align = alBottom
    TabOrder = 0
    object btnIncluir: TButton
      Left = 1
      Top = 1
      Width = 51
      Height = 53
      Align = alLeft
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TButton
      Left = 151
      Top = 1
      Width = 50
      Height = 53
      Align = alLeft
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnSalvar: TButton
      Left = 52
      Top = 1
      Width = 50
      Height = 53
      Align = alLeft
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 102
      Top = 1
      Width = 49
      Height = 53
      Align = alLeft
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnExcluir: TButton
      Left = 201
      Top = 1
      Width = 51
      Height = 53
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 4
      OnClick = btnExcluirClick
    end
    object btnCadastroVoltar: TButton
      Left = 729
      Top = 2
      Width = 51
      Height = 51
      Caption = 'Voltar'
      TabOrder = 5
      OnClick = btnCadastroVoltarClick
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
