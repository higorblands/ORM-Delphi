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
  TController = Class(TObject)
  private
    FId_Aluno: Integer;
    FNome_Aluno: String;
    FCurso: String;
    FTurno: String;
    FPeriodo: Integer;
    FData_Ingresso: TDateTime;
    FSituacao: String;
    FCadeirante: Boolean;
    FObservacao: String;
    FData_Hora_Inclusao: TDateTime;
    FUsuario_Inclusao: String;
    FData_Hora_Alteracao: TDateTime;
    FUsuario_alteracao: String;

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
    function getData_Ingresso: TDateTime;
    procedure setData_Ingresso(const Value: TDateTime);
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

    Query: TFDQuery;
    conn: TFDconnection;
    FORMMSG: String;
    function Insert: String;

    property ID_Aluno: Integer read getID_Aluno write setID_Aluno;
    property Nome_Aluno: String read getNome_Aluno write setNome_Aluno;
    property Curso: String read getCurso write setCurso;
    property Turno: String read getTurno write setTurno;
    property Periodo: Integer read getPeriodo write setPeriodo;
    property Data_Ingresso: TDateTime read getData_Ingresso
      write setData_Ingresso;
    property Situacao: String read getSituacao write setSituacao;
    property Cadeirante: Boolean read getCadeirante
      write setCadeirante;
    property Observacao: String read getObservacao write setObservacao;
    property Data_Hora_Inclusao: TDateTime read getData_Hora_Inclusao
      write setData_Hora_Inclusao;
    property Usuario_Inclusao: String read getUsuario_Inclusao
      write setUsuario_Inclusao;
    property Data_Hora_Alteracao: TDateTime read getData_Hora_Alteracao
      write setData_Hora_Alteracao;
    property Usuario_Alteracao: String read getUsuario_Alteracao
      write setUsuario_alteracao;


  End;

implementation

{ TController }


function TController.getCadeirante: Boolean;
begin
  Result := FCadeirante;
end;

function TController.getCurso: String;
begin
  Result := FCurso;
end;

function TController.getData_Hora_Alteracao: TDateTime;
begin
  Result := FData_Hora_Alteracao;
end;

function TController.getData_Hora_Inclusao: TDateTime;
begin
  Result := FData_Hora_Inclusao;
end;

function TController.getData_Ingresso: TDateTime;
begin
  Result := FData_Ingresso;
end;

function TController.getID_Aluno: INTEGER;
begin
  Result := FId_Aluno;
end;

function TController.getNome_Aluno: String;
begin
  Result := FNome_Aluno;
end;

function TController.getObservacao: String;
begin
  Result := FObservacao;
end;

function TController.getPeriodo: Integer;
begin
  Result := FPeriodo;
end;

function TController.getSituacao: String;
begin
  Result := FSituacao;
end;

function TController.getTurno: String;
begin
  Result := FTurno;
end;

function TController.getUsuario_Alteracao: String;
begin
  Result := FUsuario_alteracao;
end;

function TController.getUsuario_Inclusao: String;
begin
  Result := FUsuario_Inclusao;
end;

function TController.Insert: String;
var
  Aluno: TAluno;
begin

    Aluno := TAluno.Create;
    Aluno.conn := conn;
    Aluno.QueryORM := Query;
    Aluno.ID_Aluno.Value := ID_Aluno;
    Aluno.Nome_Aluno.Value := Nome_Aluno;
    Aluno.Curso.Value := Curso;
    Aluno.Turno.Value := Turno;
    Aluno.Periodo.Value := Periodo;
    Aluno.Data_Ingresso.Value := Data_Ingresso;
    Aluno.Situacao.Value := Situacao;
    Aluno.Cadeirante.Value := Cadeirante;
    Aluno.Observacao.Value := Observacao;
    Aluno.Data_Hora_Inclusao.Value := Data_Hora_Inclusao;
    Aluno.Usuario_Inclusao.Value := Usuario_Inclusao;
    Aluno.Data_Hora_Alteracao.Value := Data_Hora_Alteracao;
    Aluno.Usuario_Alteracao.Value := Usuario_Alteracao;
    Aluno.Insert;
    Result := Aluno.FORMMSG;
    Aluno.Free;



end;

procedure TController.setCadeirante(const Value: Boolean);
begin
  FCadeirante := Value;

end;

procedure TController.setCurso(const Value: String);
begin
  FCurso := Value;
end;

procedure TController.setData_Hora_Alteracao(const Value: TDateTime);
begin
  FData_Hora_Alteracao := Value;
end;

procedure TController.setData_Hora_Inclusao(const Value: TDateTime);
begin
  FData_Hora_Inclusao := Value;
end;

procedure TController.setData_Ingresso(const Value: TDateTime);
begin
  FData_Ingresso := Value;
end;

procedure TController.setID_Aluno(const Value: Integer);
begin
  FId_Aluno := Value;
end;

procedure TController.setNome_Aluno(const Value: String);
begin
  FNome_Aluno := Value;
end;

procedure TController.setObservacao(const Value: String);
begin
  FObservacao := Value;
end;

procedure TController.setPeriodo(const Value: Integer);
begin
  FPeriodo := Value;
end;

procedure TController.setSituacao(const Value: String);
begin
  FSituacao := Value;
end;

procedure TController.setTurno(const Value: String);
begin
  FTurno := Value;
end;

procedure TController.setUsuario_alteracao(const Value: String);
begin
  FUsuario_alteracao := Value;
end;

procedure TController.setUsuario_Inclusao(const Value: String);
begin
  FUsuario_Inclusao := Value;
end;

end.
