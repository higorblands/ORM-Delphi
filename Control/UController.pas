unit UController;

interface

uses
  UTypeDataFieldORM, UAlunoORM, System.SysUtils, System.Classes, System.UITypes,
  FireDAC.Stan.Error, Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef;

Type
  TController = Class
  private

    function getID_Aluno: Integer;
    procedure setID_Aluno(const Value: Integer);
    function getNome_Aluno: String;
    procedure setNome_Aluno(const Value: String);
    function getCurso: String;
    procedure setCurso(const Value: String);
    function getTurno: String;
    procedure setTurno(const Value: String);
    function getPeriodo: Integer;
    procedure setPeriodo(const Value: Integer);
    function getData_Ingresso: TDate;
    procedure setData_Ingresso(const Value: TDate);
    function getSituacao: String;
    procedure setSituacao(const Value: String);
    function getCadeirante: Boolean;
    procedure setCadeirante(const Value: Boolean);
    function getObservacao: String;
    procedure setObservacao(const Value: String);
    function getData_Hora_Inclusao: TDateTime;
    procedure setData_Hora_Inclusao(const Value: TDateTime);
    function getUsuario_Inclusao: String;
    procedure setUsuario_Inclusao(const Value: String);
    function getData_Hora_Alteracao: TDateTime;
    procedure setData_Hora_Alteracao(const Value: TDateTime);
    function getUsuario_Alteracao: String;
    procedure setUsuario_alteracao(const Value: String);

  public
  var
    Aluno: TAluno;

    Query: TFDQuery;
    conn: TFDconnection;
    FORMMSG: String;
    function Insert: String;

    property ID_Aluno: Integer read getID_Aluno write setID_Aluno;
    property Nome_Aluno: String read getNome_Aluno write setNome_Aluno;
    property Curso: String read getCurso write setCurso;
    property Turno: String read getTurno write setTurno;
    property Periodo: Integer read getPeriodo write setPeriodo;
    property Data_Ingresso: TDate read getData_Ingresso write setData_Ingresso;
    property Situacao: String read getSituacao write setSituacao;
    property Cadeirante: Boolean read getCadeirante write setCadeirante;
    property Observacao: String read getObservacao write setObservacao;
    property Data_Hora_Inclusao: TDateTime read getData_Hora_Inclusao
      write setData_Hora_Inclusao;
    property Usuario_Inclusao: String read getUsuario_Inclusao
      write setUsuario_Inclusao;
    property Data_Hora_Alteracao: TDateTime read getData_Hora_Alteracao
      write setData_Hora_Alteracao;
    property Usuario_Alteracao: String read getUsuario_Alteracao
      write setUsuario_alteracao;

    constructor create; reintroduce;

  End;

implementation

{ TController }

constructor TController.create;
begin
  inherited;
  Aluno := TAluno.create;
end;

function TController.getCadeirante: Boolean;
begin
  Result := Aluno.Cadeirante.Value;
end;

function TController.getCurso: String;
begin
  Result := Aluno.Curso.Value;
end;

function TController.getData_Hora_Alteracao: TDateTime;
begin
  Result := Aluno.Data_Hora_Alteracao.Value;
end;

function TController.getData_Hora_Inclusao: TDateTime;
begin
  Result := Aluno.Data_Hora_Inclusao.Value;
end;

function TController.getData_Ingresso: TDate;
begin
  Result := Aluno.Data_Ingresso.Value;
end;

function TController.getID_Aluno: Integer;
begin
  Result := Aluno.ID_Aluno.Value;

end;

function TController.getNome_Aluno: String;
begin
  Result := Aluno.Nome_Aluno.Value;
end;

function TController.getObservacao: String;
begin
  Result := Aluno.Observacao.Value;
end;

function TController.getPeriodo: Integer;
begin
  Result := Aluno.Periodo.Value;
end;

function TController.getSituacao: String;
begin
  Result := Aluno.Situacao.Value;
end;

function TController.getTurno: String;
begin
  Result := Aluno.Turno.Value;
end;

function TController.getUsuario_Alteracao: String;
begin
  Result := Aluno.Usuario_Alteracao.Value;
end;

function TController.getUsuario_Inclusao: String;
begin
  Result := Aluno.Usuario_Inclusao.Value;
end;

function TController.Insert: String;

begin
  if Aluno.FieldNotNull.Assigned then
  begin
    Aluno.PrepareSQL;
    with Query.SQL do
    begin
      Clear;
      Add('INSERT INTO Aluno (' + Aluno.sColumnsBD + ')' + ' VALUES(' +
        Aluno.sValuesBD + ');');
    end;
    Query.SQL.SaveToFile('D:\Rewards2.txt');

    // Query.ExecSQL;
    Query.Close;
    FORMMSG := Aluno.FORMMSG;
  end;

end;

procedure TController.setCadeirante(const Value: Boolean);
begin
  Aluno.Cadeirante.Value := Value;

end;

procedure TController.setCurso(const Value: String);
begin
  Aluno.Curso.Value := Value;
end;

procedure TController.setData_Hora_Alteracao(const Value: TDateTime);
begin
  Aluno.Data_Hora_Alteracao.Value := Value;
end;

procedure TController.setData_Hora_Inclusao(const Value: TDateTime);
begin
  Aluno.Data_Hora_Inclusao.Value := Value;
end;

procedure TController.setData_Ingresso(const Value: TDate);
begin
  Aluno.Data_Ingresso.Value := Value;
end;

procedure TController.setID_Aluno(const Value: Integer);
begin

  Aluno.ID_Aluno.Value := Value;
end;

procedure TController.setNome_Aluno(const Value: String);
begin
  Aluno.Nome_Aluno.Value := Value;
end;

procedure TController.setObservacao(const Value: String);
begin
  Aluno.Observacao.Value := Value;
end;

procedure TController.setPeriodo(const Value: Integer);
begin
  Aluno.Periodo.Value := Value;
end;

procedure TController.setSituacao(const Value: String);
begin
  Aluno.Situacao.Value := Value;
end;

procedure TController.setTurno(const Value: String);
begin
  Aluno.Turno.Value := Value;
end;

procedure TController.setUsuario_alteracao(const Value: String);
begin
  Aluno.Usuario_Alteracao.Value := Value;
end;

procedure TController.setUsuario_Inclusao(const Value: String);
begin
  Aluno.Usuario_Inclusao.Value := Value;
end;

end.