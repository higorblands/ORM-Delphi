unit UController;

interface

uses
  UAlunoORM, System.SysUtils, System.Classes, System.UITypes,
  FireDAC.Stan.Error, Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef;

Type
  TController = Class

  public
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
    Query: TFDQuery;
    conn: TFDconnection;
    function Insert: String;
  End;

implementation

{ TController }

function TController.Insert: String;
var
  Aluno: TAluno;
begin
  Aluno := TAluno.Create;
  Aluno.conn := conn;
  Aluno.QueryORM := Query;
  Aluno.ID_Aluno.Value := FId_Aluno;
  Aluno.Nome_Aluno.Value := FNome_Aluno;
  Aluno.Curso.Value := FCurso;
  Aluno.Turno.Value := FTurno;
  Aluno.Periodo.Value := FPeriodo;
  Aluno.Data_Ingresso.Value := FData_Ingresso;
  Aluno.Situacao.Value := FSituacao;
  Aluno.Cadeirante.Value := FCadeirante;
  Aluno.Observacao.Value := FObservacao;
  Aluno.Data_Hora_Inclusao.Value := FData_Hora_Inclusao;
  Aluno.Usuario_Inclusao.Value := FUsuario_Inclusao;
  Aluno.Data_Hora_Alteracao.Value := FData_Hora_Alteracao;
  Aluno.Usuario_Alteracao.Value := FUsuario_alteracao;
  Aluno.Insert;

  Result := Aluno.FORMMSG;

  Aluno.Free;
end;

end.
