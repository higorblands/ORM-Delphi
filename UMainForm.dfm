object FMain: TFMain
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'Main'
  ClientHeight = 376
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object LData_Ingresso: TLabel
    Left = 24
    Top = 172
    Width = 81
    Height = 13
    Caption = 'Data de ingresso'
  end
  object LData_Hora_Inclusao: TLabel
    Left = 532
    Top = 172
    Width = 113
    Height = 13
    Caption = 'Data e hora da inclusao'
  end
  object LData_Hora_Alteracao: TLabel
    Left = 151
    Top = 218
    Width = 120
    Height = 13
    Caption = 'Data e hora da altera'#231#227'o'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 744
    Height = 120
    Align = alTop
    DataSource = DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btAdd: TButton
    Left = 24
    Top = 273
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = btAddClick
  end
  object edtID_Aluno: TEdit
    Left = 24
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'ID Aluno'
  end
  object edtNome_Aluno: TEdit
    Left = 151
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Nome Aluno'
  end
  object edtCurso: TEdit
    Left = 278
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'Curso'
  end
  object edtTurno: TEdit
    Left = 405
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 5
    TextHint = 'Turno'
  end
  object edtPeriodo: TEdit
    Left = 532
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 6
    TextHint = 'Periodo'
  end
  object DTPData_Ingresso: TDateTimePicker
    Left = 24
    Top = 191
    Width = 121
    Height = 21
    Date = 44284.361191354170000000
    Time = 44284.361191354170000000
    TabOrder = 7
  end
  object edtSituacao: TEdit
    Left = 151
    Top = 191
    Width = 121
    Height = 21
    TabOrder = 8
    TextHint = 'Situa'#231#227'o'
  end
  object edtObservacao: TEdit
    Left = 405
    Top = 191
    Width = 121
    Height = 21
    TabOrder = 9
    TextHint = 'Observa'#231#227'o'
  end
  object DTPData_Hora_Inclusao: TDateTimePicker
    Left = 532
    Top = 191
    Width = 121
    Height = 21
    Date = 44284.361191354170000000
    Time = 44284.361191354170000000
    TabOrder = 10
  end
  object edtUsuario_Inclusao: TEdit
    Left = 24
    Top = 237
    Width = 121
    Height = 21
    TabOrder = 11
    TextHint = 'Usuario inclus'#227'o'
  end
  object DTPData_Hora_Alteracao: TDateTimePicker
    Left = 151
    Top = 237
    Width = 121
    Height = 21
    Date = 44284.361191354170000000
    Time = 44284.361191354170000000
    TabOrder = 12
  end
  object edtUsuario_Alteracao: TEdit
    Left = 278
    Top = 237
    Width = 121
    Height = 21
    TabOrder = 13
    TextHint = 'Usuario altera'#231#227'o'
  end
  object RadioButton1: TRadioButton
    Left = 528
    Top = 272
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 14
  end
  object ComboBox1: TComboBox
    Left = 508
    Top = 312
    Width = 145
    Height = 21
    TabOrder = 15
    TextHint = 'Cadeirante'
    Items.Strings = (
      'N'#227'o Cadeirante'
      'Cadeirante')
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=dbAlunos'
      'User_Name=sa'
      'Password=admserver01'
      'Server=localhost'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 328
  end
  object FDQAluno: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Aluno')
    Left = 96
    Top = 328
  end
  object DataSource: TDataSource
    DataSet = FDQAluno
    Left = 152
    Top = 328
  end
  object FDQComandos: TFDQuery
    Connection = FDConnection1
    Left = 224
    Top = 328
  end
end
