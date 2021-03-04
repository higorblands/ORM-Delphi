unit UORM;

interface

uses
  System.SysUtils, System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

Type

  TCursoSQL = Class(TObject)

  Private
    FDQListagem: TFDQuery;
    FIdCurso: Integer;
    FCurso: String;

    Function getIDCurso: Integer;
    Procedure setIDCurso(Value: Integer);

    Function getDescricao: String;
    Procedure setDescricao(Value: String);

  Protected

  Public
    Conexao: TFDConnection;
    Property IdCurso: Integer Read getIDCurso Write setIDCurso;
    Property Descricao: String Read getDescricao Write setDescricao;

    Function Insert: Boolean;
    Function Delete(Value: Integer): Boolean;
    Function Update(ID: Integer ; Curso : String): Boolean;

  end;

implementation

{ TCursoSQL }

function TCursoSQL.Delete(Value: Integer): Boolean;
begin
  FDQListagem := TFDQuery.Create(nil);
  FDQListagem.Connection := Conexao;
  IdCurso := Value;
  with FDQListagem.SQL do
  begin
    Clear;
    Add('delete from CursosCadastro where IdCurso = ''' + inttoStr(IdCurso)
      + ''' ;');
  end;
  FDQListagem.ExecSQL;

end;

function TCursoSQL.getDescricao: String;
begin
  Result := FCurso;

end;

function TCursoSQL.getIDCurso: Integer;
begin

  Result := FIdCurso;

end;

function TCursoSQL.Insert: Boolean;
begin
  FDQListagem := TFDQuery.Create(nil);
  FDQListagem.Connection := Conexao;

  with FDQListagem.SQL do
  begin
    Clear;
    Add('insert into CursosCadastro (IdCurso,Curso)');
    Add('values (''' + inttoStr(IdCurso) + ''',' + QuotedStr(Descricao) + ')');
  end;
  FDQListagem.ExecSQL;

end;

procedure TCursoSQL.setDescricao(Value: String);
begin
  FCurso := Value;

end;

procedure TCursoSQL.setIDCurso(Value: Integer);
begin

  FIdCurso := Value;

end;

function TCursoSQL.Update(ID: Integer ; Curso : String): Boolean;
begin
  FDQListagem := TFDQuery.Create(nil);
  FDQListagem.Connection := Conexao;
  IdCurso := ID;
  with FDQListagem.SQL do
  begin
    Clear;
  Add('UPDATE CursosCadastro');
  Add('SET IdCurso = '+inttoStr(IdCurso)+'  Curso = '''+Curso+'''');
  Add('WHERE IdCurso = ''' + inttoStr(IdCurso) + '''');
  SaveToFile('D:\X.SQL');
  end;

end;

end.
