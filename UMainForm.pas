unit UMainForm;

interface

uses
  UGeneralORM, UAlunoORM,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFMain = class(TForm)
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    FDQAluno: TFDQuery;
    DataSource: TDataSource;
    btAdd: TButton;
    FDQComandos: TFDQuery;
    btList: TButton;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button3: TButton;
    procedure btAddClick(Sender: TObject);
    procedure btListClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
    procedure fakeList;
  public
    { Public declarations }

  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.btAddClick(Sender: TObject);
var
  Aluno: TAluno;
begin

  Aluno := TAluno.Create;
  Aluno.conn := FDConnection1;
  Aluno.QueryORM := FDQAluno;
  Aluno.ID_Aluno.Value := 34;
  Aluno.Nome_Aluno.Value := 'Higor';
  Aluno.Curso.Value := 'ADS';
  Aluno.Turno.Value := 'N';
  Aluno.Periodo.Value := 2;
  Aluno.Data_Ingresso.Value := now;
  Aluno.Situacao.Value := 'R';
  Aluno.Cadeirante.Value := False;
  Aluno.Observacao.Value := 'Aluno bom e novo';
  Aluno.Data_Hora_Inclusao.Value := now;
  Aluno.Usuario_Inclusao.Value := 'Admin';
  Aluno.Data_Hora_Alteracao.Value := now;
  Aluno.Usuario_Alteracao.Value := 'Andriws';
  Aluno.Insert;
  fakeList;
  ShowMessage(Aluno.FORMMSG);

  Aluno.Free;

end;

procedure TFMain.btListClick(Sender: TObject); // TESTE
var
  Aluno: TAluno;
begin
  Aluno := TAluno.Create;
  Aluno.conn := FDConnection1;
  Aluno.QueryORM := FDQAluno;
  Aluno.ID_Aluno.Value := 34;
  Aluno.Read(Aluno.ID_Aluno.Value);
  fakeList;
  ShowMessage(Aluno.FORMMSG);
  Aluno.Free;

end;

procedure TFMain.Button1Click(Sender: TObject);
var
  Aluno: TAluno;
begin
  Aluno := TAluno.Create;
  Aluno.conn := FDConnection1;
  Aluno.QueryORM := FDQAluno;
  Aluno.ID_Aluno.Value := 4;
  Aluno.Nome_Aluno.Value := 'Angelo';
  Aluno.Update(Aluno.ID_Aluno.Value);
  fakeList;
  ShowMessage(Aluno.FORMMSG);
  Aluno.Free;

end;

procedure TFMain.Button2Click(Sender: TObject);
var
  Aluno: TAluno;
begin
  Aluno := TAluno.Create;
  Aluno.conn := FDConnection1;
  Aluno.QueryORM := FDQAluno;
  Aluno.ID_Aluno.Value := 4;
  Aluno.Delete;
  fakeList;
  ShowMessage(Aluno.FORMMSG);
  Aluno.Free;
end;

procedure TFMain.Button3Click(Sender: TObject);
begin
  fakeList;
end;

procedure TFMain.fakeList;
begin
  FDQAluno.SQL.Clear;
  FDQAluno.SQL.Add('select * from Aluno');
  FDQAluno.Open;
end;

end.
