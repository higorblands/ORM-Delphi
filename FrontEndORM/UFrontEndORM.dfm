object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheetCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 22
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
        Height = 18
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
        Width = 99
        Height = 17
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
      object EditDataHoraAltecacao: TEdit
        Left = 447
        Top = 103
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object EditDataHoraInclusao: TEdit
        Left = 447
        Top = 78
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object EditIdAluno: TEdit
        Left = 72
        Top = 24
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 4
      end
      object EditNomeAluno: TEdit
        Left = 72
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object EditPeriodo: TEdit
        Left = 72
        Top = 96
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 6
      end
      object EditSituacao: TEdit
        Left = 72
        Top = 143
        Width = 121
        Height = 21
        MaxLength = 1
        TabOrder = 7
      end
      object EditTurno: TEdit
        Left = 72
        Top = 120
        Width = 121
        Height = 21
        MaxLength = 1
        TabOrder = 8
      end
      object EditUsuarioAlteracao: TEdit
        Left = 447
        Top = 51
        Width = 121
        Height = 21
        TabOrder = 9
      end
      object EditUsuarioInclusao: TEdit
        Left = 447
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 10
      end
      object ButCadastroVoltar: TButton
        Left = 422
        Top = 233
        Width = 75
        Height = 17
        Caption = 'Voltar'
        TabOrder = 11
      end
      object ComboBoxCadeirante: TComboBox
        Left = 72
        Top = 167
        Width = 121
        Height = 21
        Style = csDropDownList
        TabOrder = 12
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
        TabOrder = 13
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Listagem'
      ImageIndex = 1
      ExplicitLeft = 60
      ExplicitTop = 28
      ExplicitWidth = 593
      ExplicitHeight = 285
      object GroupBoxListagem: TGroupBox
        Left = 0
        Top = 0
        Width = 602
        Height = 98
        Align = alTop
        TabOrder = 0
        ExplicitLeft = -4
        ExplicitWidth = 606
        object Label12: TLabel
          Left = 54
          Top = 25
          Width = 18
          Height = 13
          Caption = 'ID: '
        end
        object Label13: TLabel
          Left = 144
          Top = 25
          Width = 34
          Height = 13
          Caption = 'Nome: '
        end
        object EditFiltroId: TEdit
          Left = 78
          Top = 22
          Width = 37
          Height = 21
          NumbersOnly = True
          TabOrder = 0
        end
        object EditFiltroNome: TEdit
          Left = 184
          Top = 22
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
          object ButDetalhes: TButton
            Left = 220
            Top = 5
            Width = 75
            Height = 25
            Caption = 'Detalhes'
            TabOrder = 1
          end
          object ButFiltrar: TButton
            Left = 82
            Top = 5
            Width = 75
            Height = 25
            Caption = 'Filtrar'
            TabOrder = 0
          end
          object ButLimparFiltros: TButton
            AlignWithMargins = True
            Left = 361
            Top = 5
            Width = 75
            Height = 25
            Caption = 'Limpar'
            TabOrder = 2
          end
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
        ExplicitWidth = 577
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 351
    Width = 610
    Height = 55
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = 353
    ExplicitWidth = 588
    object Button1: TButton
      Left = 89
      Top = 16
      Width = 49
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 160
      Top = 16
      Width = 50
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 232
      Top = 16
      Width = 50
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 307
      Top = 16
      Width = 49
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
    end
    object Button5: TButton
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
    Left = 284
    Top = 264
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from aluno')
    Left = 324
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 540
    Top = 304
  end
end
