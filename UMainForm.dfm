object FMain: TFMain
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'Main'
  ClientHeight = 276
  ClientWidth = 448
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
    Width = 448
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
  object edtIdCurso: TEdit
    Left = 88
    Top = 134
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    TextHint = 'ID Curso'
  end
  object edtCurso: TEdit
    Left = 223
    Top = 134
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Nome do curso'
  end
  object btAdd: TButton
    Left = 88
    Top = 181
    Width = 256
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 3
    OnClick = btAddClick
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=DbStu'
      'User_Name=sa'
      'Password=admserver01'
      'Server=localhost'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 256
    Top = 8
  end
  object FDQListagem: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from CursosCadastro')
    Left = 328
    Top = 8
  end
  object DataSource: TDataSource
    DataSet = FDQListagem
    Left = 392
    Top = 8
  end
  object FDQComandos: TFDQuery
    Connection = FDConnection
    Left = 328
    Top = 64
  end
end
