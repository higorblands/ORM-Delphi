unit UAlunoORM;

interface

uses
  UGeneralORM, UTypeDataFieldORM, System.SysUtils, System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

Type
  TAluno = class
  private
    FId_Aluno: TIntegerFieldORM;
    FNome_Aluno: TStringFieldORM;
    FCurso: TStringFieldORM;
    FTurno: TStringFieldORM;
    FPeriodo: TIntegerFieldORM;
    FData_Ingresso: TDateTimeFieldORM;
    FSituacao: TStringFieldORM;
    FCadeirante: TBooleanFieldORM;
    FObservacao: TStringFieldORM;
    FData_Hora_Inclusao: TDateFieldORM;
    FUsuario_Inclusao: TStringFieldORM;
    FData_Hora_Alteracao: TDateFieldORM;
    FUsuario_alteracao: TStringFieldORM;

    function getID_Aluno: TIntegerFieldORM;
    function getNome_Aluno: TStringFieldORM;
    function getCurso: TStringFieldORM;
    function getTurno: TStringFieldORM;
    function getPeriodo: TIntegerFieldORM;
    function getData_Ingresso: TDateFieldORM;
    function getSituacao: TStringFieldORM;
    function getCadeirante: TBooleanFieldORM;
    function getData_Hora_Inclusao: TDateTimeFieldORM;
    function getUsuario_Inclusao: TStringFieldORM;
    function getData_Hora_Alteracao: TDateTimeFieldORM;
    function getUsuario_Alteracao: TStringFieldORM;
  public

    property ID_Aluno: TIntegerFieldORM read getID_Aluno;
    property Nome_Aluno: TStringFieldORM read getNome_Aluno;
    property Curso: TStringFieldORM read getCurso;
    property Turno: TStringFieldORM read getTurno;
    property Periodo: TIntegerFieldORM read getPeriodo;
    property Data_Ingresso: TDateFieldORM read getData_Ingresso;
    property Situacao: TStringFieldORM read getSituacao;
    property Cadeirante: TBooleanFieldORM read getCadeirante;
    property Data_Hora_Inclusao: TStringFieldORM read getData_Hora_Inclusao;
    property Usuario_Inclusao: TStringFieldORM read getUsuario_Inclusao;
    property Data_Hora_Alteracao: TDateTimeFieldORM read getData_Hora_Alteracao;
    property Usuario_Alteracao: TStringFieldORM read getUsuario_Alteracao;

  end;

implementation

{ TAluno }

function TAluno.getNome_Aluno: TStringFieldORM;
begin
  Result := FNome_Aluno;
end;

function TAluno.getPeriodo: TIntegerFieldORM;
begin
  Result := FPeriodo;
end;

function TAluno.getSituacao: TStringFieldORM;
begin
  Result := FSituacao;
end;

function TAluno.getTurno: TStringFieldORM;
begin
  Result := FTurno;
end;

function TAluno.getUsuario_Alteracao: TStringFieldORM;
begin
  Result := FUsuario_alteracao;
end;

function TAluno.getUsuario_Inclusao: TStringFieldORM;
begin
  Result := FUsuario_Inclusao;
end;

{ TAluno }

function TAluno.getCadeirante: TBooleanFieldORM;
begin
  Result := FCadeirante;
end;

function TAluno.getCurso: TStringFieldORM;
begin
  Result := FCurso;
end;

function TAluno.getData_Hora_Alteracao: TDateTimeFieldORM;
begin
  Result := FData_Hora_Alteracao;
end;

function TAluno.getData_Hora_Inclusao: TDateTimeFieldORM;
begin
  Result := FData_Hora_Inclusao;
end;

function TAluno.getData_Ingresso: TDateFieldORM;
begin
  Result := FData_Ingresso;
end;

function TAluno.getID_Aluno: TIntegerFieldORM;
begin
  Result := FId_Aluno;
end;

end.
