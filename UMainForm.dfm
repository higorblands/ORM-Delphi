object FMain: TFMain
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'Main'
  ClientHeight = 478
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 792
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
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = btAddClick
  end
  object edtID_Aluno: TEdit
    Left = 24
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'ID Aluno'
  end
  object edtNome_Aluno: TEdit
    Left = 24
    Top = 203
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Nome Aluno'
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
    Left = 736
    Top = 264
  end
  object FDQAluno: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Aluno')
    Left = 736
    Top = 320
  end
  object DataSource: TDataSource
    DataSet = FDQAluno
    Left = 736
    Top = 376
  end
  object FDQComandos: TFDQuery
    Connection = FDConnection1
    Left = 736
    Top = 432
  end
end
