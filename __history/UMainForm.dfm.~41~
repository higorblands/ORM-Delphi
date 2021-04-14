object FMain: TFMain
  Left = 343
  Top = 321
  Align = alCustom
  BiDiMode = bdRightToLeftNoAlign
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
  ParentBiDiMode = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
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
    Left = 40
    Top = 177
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = btAddClick
  end
  object btList: TButton
    Left = 40
    Top = 272
    Width = 75
    Height = 25
    Caption = 'List'
    TabOrder = 2
    OnClick = btListClick
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
    Connection = FDConnection1
    SQL.Strings = (
      '')
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
