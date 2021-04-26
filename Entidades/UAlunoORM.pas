unit UAlunoORM;

interface

uses
  UGeneralORM, UTypeDataFieldORM, System.SysUtils, System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.DB;

Type
  TAluno = class(TORM)

  private
    FId_Aluno: TIntegerFieldORM;
    FNome_Aluno: TStringFieldORM;
    FCurso: TStringFieldORM;
    FTurno: TStringFieldORM;
    FPeriodo: TIntegerFieldORM;
    FData_Ingresso: TDateFieldORM;
    FSituacao: TStringFieldORM;
    FCadeirante: TBooleanFieldORM;
    FObservacao: TStringFieldORM;
    FData_Hora_Inclusao: TDateTimeFieldORM;
    FUsuario_Inclusao: TStringFieldORM;
    FData_Hora_Alteracao: TDateTimeFieldORM;
    FUsuario_alteracao: TStringFieldORM;

    function getID_Aluno: TIntegerFieldORM;
    procedure setID_Aluno(const Value: TIntegerFieldORM);
    function getNome_Aluno: TStringFieldORM;
    procedure setNome_Aluno(const Value: TStringFieldORM);
    function getCurso: TStringFieldORM;
    procedure setCurso(const Value: TStringFieldORM);
    function getTurno: TStringFieldORM;
    procedure setTurno(const Value: TStringFieldORM);
    function getPeriodo: TIntegerFieldORM;
    procedure setPeriodo(const Value: TIntegerFieldORM);
    function getData_Ingresso: TDateFieldORM;
    procedure setData_Ingresso(const Value: TDateFieldORM);
    function getSituacao: TStringFieldORM;
    procedure setSituacao(const Value: TStringFieldORM);
    function getCadeirante: TBooleanFieldORM;
    procedure setCadeirante(const Value: TBooleanFieldORM);
    function getObservacao: TStringFieldORM;
    procedure setObservacao(const Value: TStringFieldORM);
    function getData_Hora_Inclusao: TDateTimeFieldORM;
    procedure setData_Hora_Inclusao(const Value: TDateTimeFieldORM);
    function getUsuario_Inclusao: TStringFieldORM;
    procedure setUsuario_Inclusao(const Value: TStringFieldORM);
    function getData_Hora_Alteracao: TDateTimeFieldORM;
    procedure setData_Hora_Alteracao(const Value: TDateTimeFieldORM);
    function getUsuario_Alteracao: TStringFieldORM;
    procedure setUsuario_alteracao(const Value: TStringFieldORM);
    procedure ColumnsPrepareSQL;
    procedure ValuesPrepareSQL;

  public
  var
    sValuesBD: System.String;
    sColumnsBD: System.String;
    sUpdateBDTxT: System.String;
    FORMMSG: String;
    FOK: Boolean;

    property ID_Aluno: TIntegerFieldORM read getID_Aluno write setID_Aluno;
    property Nome_Aluno: TStringFieldORM read getNome_Aluno write setNome_Aluno;
    property Curso: TStringFieldORM read getCurso write setCurso;
    property Turno: TStringFieldORM read getTurno write setTurno;
    property Periodo: TIntegerFieldORM read getPeriodo write setPeriodo;
    property Data_Ingresso: TDateFieldORM read getData_Ingresso
      write setData_Ingresso;
    property Situacao: TStringFieldORM read getSituacao write setSituacao;
    property Cadeirante: TBooleanFieldORM read getCadeirante
      write setCadeirante;
    property Observacao: TStringFieldORM read getObservacao write setObservacao;
    property Data_Hora_Inclusao: TDateTimeFieldORM read getData_Hora_Inclusao
      write setData_Hora_Inclusao;
    property Usuario_Inclusao: TStringFieldORM read getUsuario_Inclusao
      write setUsuario_Inclusao;
    property Data_Hora_Alteracao: TDateTimeFieldORM read getData_Hora_Alteracao
      write setData_Hora_Alteracao;
    property Usuario_Alteracao: TStringFieldORM read getUsuario_Alteracao
      write setUsuario_alteracao;

    function FieldNotNull: TBooleanFieldORM;
    function ValidationPK: TBooleanFieldORM;
    function PrepareSQL: TSQLSyntaxResult;
    Procedure PrepareReadSQL(ID: Integer);
    Procedure DataLoadSQL;
    function PrepareSQLUpdate(ID: Integer): String;
    function Insert: TBooleanField;
    function Read(ID: Integer): Boolean;
    function Delete: Boolean;
    function Update: Boolean;

    constructor Create;

  end;

implementation

{ TAluno }

function TAluno.getNome_Aluno: TStringFieldORM;
begin
  Result := FNome_Aluno;
end;

function TAluno.getObservacao: TStringFieldORM;
begin
  Result := FObservacao;
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

function TAluno.Insert: TBooleanField;
begin
  if FieldNotNull.Assigned then
  begin
    PrepareSQL;
    with QueryORM.SQL do
    begin
      Clear;
      Add('INSERT INTO Aluno (' + sColumnsBD + ')' + ' VALUES(' +
        sValuesBD + ');');
    end;

    QueryORM.ExecSQL;
    QueryORM.Close;
  end;

end;



function TAluno.Read(ID: Integer): Boolean;
begin
  FORMMSG := '';
  if ValidationPK.Assigned then
  begin
    PrepareReadSQL(ID);
    QueryORM.Open;

    if QueryORM.RowsAffected = 0 then
    begin
      FORMMSG := 'ID Aluno não encontrado, 0 linhas afetadas.';
    end
    else
    begin
      DataLoadSQL;
    end;
  end
  else
  begin
    FORMMSG :=
      'ID Aluno inválido ou não encontrado, favor digitar um ID válido';
  end;
  if FORMMSG <> '' then
  begin
    Result := False;
  end
  else
  begin
    Result := True;
    FORMMSG := 'Operação realizada com sucesso !';
  end;

  QueryORM.Close;
end;

procedure TAluno.setCadeirante(const Value: TBooleanFieldORM);
begin
  FCadeirante := Value;
end;

procedure TAluno.setCurso(const Value: TStringFieldORM);
begin
  FCurso := Value;
end;

procedure TAluno.setData_Hora_Alteracao(const Value: TDateTimeFieldORM);
begin
  FData_Hora_Alteracao := Value;
end;

procedure TAluno.setData_Hora_Inclusao(const Value: TDateTimeFieldORM);
begin
  FData_Hora_Inclusao := Value;
end;

procedure TAluno.setData_Ingresso(const Value: TDateFieldORM);
begin
  FData_Ingresso := Value;
end;

procedure TAluno.setID_Aluno(const Value: TIntegerFieldORM);
begin
  FId_Aluno := Value;
end;

procedure TAluno.setNome_Aluno(const Value: TStringFieldORM);
begin
  FNome_Aluno := Value;
end;

procedure TAluno.setObservacao(const Value: TStringFieldORM);
begin
  FObservacao := Value;
end;

procedure TAluno.setPeriodo(const Value: TIntegerFieldORM);
begin
  FPeriodo := Value;
end;

procedure TAluno.setSituacao(const Value: TStringFieldORM);
begin
  FSituacao := Value;
end;

procedure TAluno.setTurno(const Value: TStringFieldORM);
begin
  FTurno := Value;
end;

procedure TAluno.setUsuario_alteracao(const Value: TStringFieldORM);
begin
  FUsuario_alteracao := Value;
end;

procedure TAluno.setUsuario_Inclusao(const Value: TStringFieldORM);
begin
  FUsuario_Inclusao := Value;
end;

function TAluno.Update: Boolean;
begin
  FORMMSG := '';
  QueryORM.SQL.Clear;
  QueryORM.SQL.Add(PrepareSQLUpdate(ID_Aluno.Value));
  QueryORM.ExecSQL;
  if QueryORM.RowsAffected = 0 then
  begin
    FORMMSG := 'ID Aluno não encontrado, 0 linhas afetadas.';
  end;

  if FORMMSG <> '' then
  begin
    Result := False;
  end
  else
  begin
    Result := True;
    FORMMSG := 'Operação realizada com sucesso !';
  end;
  QueryORM.SQL.SaveToFile('d:\Reward2.txt');
  QueryORM.SQL.Clear;
  QueryORM.Close;

end;

procedure TAluno.ValuesPrepareSQL;
begin
  sValuesBD := '';
  with ID_Aluno.ToSQL do
  begin
    if OK then
    begin
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  end;
  with Nome_Aluno.ToSQL do
  begin
    if OK then
    begin
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  end;
  with Curso.ToSQL do
  begin
    if OK then
    begin
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  end;
  with Turno.ToSQL do
  begin
    if OK then
      sValuesBD := sValuesBD + SQLTxT + ',';
  end;
  with Periodo.ToSQL do
  begin
    if OK then
    begin
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  end;
  with Data_Ingresso.ToSQL do
  begin
    if OK then
    begin
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  end;
  with Situacao.ToSQL do
  begin
    if OK then
    begin
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  end;
  with Cadeirante.ToSQL do
  begin
    if OK then
    begin
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  end;
  with Observacao.ToSQL do
  begin
    if OK then
    bEGin
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  end;
  with Data_Hora_Inclusao.ToSQL do
  begin
    if OK then
    begin
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  end;
  with Usuario_Inclusao.ToSQL do
  begin
    if OK then
    begin
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  end;
  with Data_Hora_Alteracao.ToSQL do
  Begin
    if OK then
    begin
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  End;
  with Usuario_Alteracao.ToSQL DO
  begin
    if OK then
    bEGIN
      sValuesBD := sValuesBD + SQLTxT + ',';
    end;
  end;
  sValuesBD := Copy(sValuesBD, 1, Length(sValuesBD) - 1);
end;

{ TAluno }

procedure TAluno.ColumnsPrepareSQL;
begin
  sColumnsBD := '';
  if ID_Aluno.Assigned then
  begin
    sColumnsBD := 'ID_Aluno,';
  end;
  if Nome_Aluno.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Nome_Aluno,';
  end;
  if Curso.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Curso,';
  end;
  if Turno.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Turno,';
  end;
  if Periodo.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Periodo,';
  end;

  if Data_Ingresso.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Data_Ingresso,';
  end;
  if Situacao.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Situacao,';
  end;
  if Cadeirante.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Cadeirante,';
  end;
  if Observacao.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Observacao,';
  end;

  if Data_Hora_Inclusao.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Data_Hora_Inclusao,';
  end;
  if Usuario_Inclusao.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Usuario_Inclusao,';
  end;
  if Data_Hora_Alteracao.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Data_Hora_Alteracao,';
  end;
  if Usuario_Alteracao.Assigned then
  begin
    sColumnsBD := sColumnsBD + 'Usuario_Alteracao,';
  end;
  sColumnsBD := Copy(sColumnsBD, 1, Length(sColumnsBD) - 1);
end;

constructor TAluno.Create;
begin
  inherited;
  FId_Aluno := TIntegerFieldORM.Create;
  FPeriodo := TIntegerFieldORM.Create;
  FNome_Aluno := TStringFieldORM.Create;
  FNome_Aluno.Length := 200;
  FCurso := TStringFieldORM.Create;
  FCurso.Length := 50;
  FObservacao := TStringFieldORM.Create;
  FObservacao.Length := 16;
  FUsuario_Inclusao := TStringFieldORM.Create;
  FUsuario_Inclusao.Length := 25;
  FUsuario_alteracao := TStringFieldORM.Create;
  FUsuario_alteracao.Length := 25;
  FTurno := TStringFieldORM.Create;
  FSituacao := TStringFieldORM.Create;
  FCadeirante := TBooleanFieldORM.Create;
  FData_Hora_Inclusao := TDateTimeFieldORM.Create;
  FUsuario_Inclusao := TStringFieldORM.Create;
  FData_Hora_Alteracao := TDateTimeFieldORM.Create;
  FData_Ingresso := TDateFieldORM.Create;

end;

procedure TAluno.DataLoadSQL;
begin

  FId_Aluno.Value := QueryORM.FieldByName('ID_Aluno').AsInteger;
  FNome_Aluno.Value := QueryORM.FieldByName('Nome_Aluno').AsString;
  FCurso.Value := QueryORM.FieldByName('Curso').AsString;
  FTurno.Value := QueryORM.FieldByName('Turno').AsString;
  FPeriodo.Value := QueryORM.FieldByName('Periodo').AsInteger;
  FData_Ingresso.Value := QueryORM.FieldByName('Data_Ingresso').AsDateTime;
  FSituacao.Value := QueryORM.FieldByName('Situacao').AsString;
  FCadeirante.Value := QueryORM.FieldByName('Cadeirante').AsBoolean;
  FObservacao.Value := QueryORM.FieldByName('Observacao').AsString;
  FData_Hora_Inclusao.Value := QueryORM.FieldByName('Data_Hora_Inclusao')
    .AsDateTime;
  FUsuario_Inclusao.Value := QueryORM.FieldByName('Usuario_Inclusao').AsString;
  FData_Hora_Alteracao.Value := QueryORM.FieldByName('Data_Hora_Alteracao')
    .AsDateTime;
  FUsuario_alteracao.Value := QueryORM.FieldByName('Usuario_Alteracao')
    .AsString;
end;

function TAluno.Delete: Boolean;
begin
  FORMMSG := '';
  if ID_Aluno.Assigned then
  begin
    with QueryORM.SQL do
    begin
      Clear;
      Add('DELETE FROM Aluno Where ID_Aluno = ' +
        IntToStr(ID_Aluno.Value) + ';');
    end;
    QueryORM.ExecSQL;
    if QueryORM.RowsAffected = 0 then
    begin
      FORMMSG := 'ID Aluno não encontrado, 0 linhas afetadas.';
    end;
  end
  else
  begin
    FORMMSG :=
      'ID Aluno inválido ou não encontrado, favor digitar um ID válido';
  end;
  if FORMMSG <> '' then
  begin
    Result := False;
  end
  else
  begin
    Result := True;
    FORMMSG := 'Operação realizada com sucesso !';
  end;
  QueryORM.Close;
end;

function TAluno.FieldNotNull: TBooleanFieldORM;
begin
  Result := TBooleanFieldORM.Create;
  FORMMSG := '';
  if ID_Aluno.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'ID Aluno não foi preenchido, campo obrigatório. ' + #13#10;
  end;
  if Nome_Aluno.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'Nome Aluno não foi preenchido, campo obrigatório. ' + #13#10;
  end;
  if Curso.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'Curso não foi preenchido, campo obrigatório. ' + #13#10;
  end;
  if Turno.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'Turno não foi preenchido, campo obrigatório. ' + #13#10;
  end;
  if Periodo.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'Periodo não foi preenchido, campo obrigatório. ' + #13#10;
  end;
  if Data_Ingresso.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'Data ingresso não foi preenchido, campo obrigatório. ' + #13#10;
  end;
  if Situacao.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'Situacao não foi preenchido, campo obrigatório. ' + #13#10;
  end;
  if Data_Hora_Inclusao.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'Data hora inclusao não foi preenchido, campo obrigatório. ' + #13#10;
  end;
  if Usuario_Inclusao.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'Usuario inclusao não foi preenchido, campo obrigatório. ' + #13#10;
  end;
  if Data_Hora_Alteracao.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'Data hora alteracao não foi preenchido, campo obrigatório. ' + #13#10;
  end;
  if Usuario_Alteracao.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'Usuario alteracao não foi preenchido, campo obrigatório. ' + #13#10;
  end;
  if FORMMSG <> '' then
  begin
    Result.FAssigned := False;
  end
  else
  begin
    Result.FAssigned := True;
    FORMMSG := 'Operação realizada com sucesso !';
  end;
end;

function TAluno.ValidationPK: TBooleanFieldORM;
begin
  Result := TBooleanFieldORM.Create;
  FORMMSG := '';
  if ID_Aluno.Assigned then
  begin
    Result.FAssigned := True;
  end
  else
  begin
    FORMMSG := FORMMSG +
      'ID Aluno não foi preenchido, campo obrigatório para realizar uma alteração. '
      + #13#10;
  end;
end;

Procedure TAluno.PrepareReadSQL(ID: Integer);
begin

  with QueryORM.SQL do
  begin
    Clear;
    Add('SELECT * FROM Aluno Where ID_Aluno = ' + IntToStr(ID) + ';');

  end;

end;

function TAluno.PrepareSQL: TSQLSyntaxResult;

begin
  ColumnsPrepareSQL;
  ValuesPrepareSQL;
end;

function TAluno.PrepareSQLUpdate(ID: Integer): String;
begin

  if not ValidationPK.Assigned then
  begin
    FORMMSG :=
      'ID Aluno inválido ou não encontrado, favor digitar um ID válido';
  end;

  if ID_Aluno.Assigned then
  begin
    with ID_Aluno.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := ' ID_Aluno' + ' = ' + SQLTxT + ',';
      end;
    end;
  end;
  if Nome_Aluno.Assigned then
  begin
    with Nome_Aluno.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Nome_Aluno ' + ' = ' + SQLTxT + ',';
      end;
    end;

  end;
  if Curso.Assigned then
  begin
    with Curso.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Curso' + ' = ' + SQLTxT + ',';
      end;
    end;
  end;
  if Turno.Assigned then
  begin
    with Turno.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Turno' + ' = ' + SQLTxT + ',';
      end;
    end;
  end;
  if Periodo.Assigned then
  begin
    with Periodo.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Periodo' + ' = ' + SQLTxT + ',';
      end;
    end;
  end;
  if Data_Ingresso.Assigned then
  begin
    with Data_Ingresso.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Data_Ingresso' + ' = ' + SQLTxT + ',';
      end;
    end;
  end;
  if Situacao.Assigned then
  begin
    with Situacao.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Situacao' + ' = ' + SQLTxT + ',';
      end;
    end;
  end;
  if Cadeirante.Assigned then
  begin
    with Cadeirante.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Cadeirante' + ' = ' + SQLTxT + ',';
      end;
    end;
  end;
  if Observacao.Assigned then
  begin
    with Observacao.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Observacao' + ' = ' + SQLTxT + ',';
      end;
    end;
  end;
  if Data_Hora_Inclusao.Assigned then
  begin
    with Data_Hora_Inclusao.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Data_Hora_Inclusao' + ' = ' +
          SQLTxT + ',';
      end;
    end;
  end;
  if Usuario_Inclusao.Assigned then
  begin
    with Usuario_Inclusao.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Usuario_Inclusao' + ' = ' +
          SQLTxT + ',';
      end;
    end;
  end;
  if Data_Hora_Alteracao.Assigned then
  begin
    with Data_Hora_Alteracao.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Data_Hora_Alteracao' + ' = ' +
          SQLTxT + ',';
      end;
    end;
  end;
  if Usuario_Alteracao.Assigned then
  begin
    with Usuario_Alteracao.ToSQL do
    begin
      if OK then
      begin
        sUpdateBDTxT := sUpdateBDTxT + ' Usuario_Alteracao' + ' = ' +
          SQLTxT + ',';
      end;
    end;
  end;
  sUpdateBDTxT := Copy(sUpdateBDTxT, 1, Length(sUpdateBDTxT) - 1);
  sUpdateBDTxT := ('Update Aluno SET ' + sUpdateBDTxT + ' WHERE ID_Aluno = ' +
    IntToStr(ID) + ';');

  Result := sUpdateBDTxT;
end;

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
