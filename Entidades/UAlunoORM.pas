{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
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
    FTableName: TNameTable;
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
    FError: string;
    FErrorLog: string;

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
    Procedure bdcall;

  public
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
    Property Error: string read FError;
    Property ErrorLog: String read FErrorLog;

    function filter: TSQLSyntaxResult;
    function List: TBooleanFieldORM;
    function Insert: TBooleanFieldORM;
    // function Delete: TBooleanFieldORM; override;
    // function Update: TBooleanFieldORM; override;

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

function TAluno.Insert: TBooleanFieldORM;

begin
  filter;
  List;
  // Tentativa Funcionando
  { Add('INSERT INTO Aluno (id_aluno,nome_aluno,curso,turno,periodo,data_ingresso,situacao,cadeirante,observacao,data_hora_inclusao,usuario_inclusao,data_hora_alteracao,usuario_alteracao)');
    Add('VALUES (' + ID_Aluno.ToSQL + ',' + Nome_Aluno.ToSQL + ',' + Curso.ToSQL +
    ',' + Turno.ToSQL + ',' + Periodo.ToSQL + ',' + Data_Ingresso.ToSQL + ',' +
    Situacao.ToSQL + ',' + Cadeirante.ToSQL + ',' + Observacao.ToSQL + ',' +
    Data_Hora_Inclusao.ToSQL + ',' + Usuario_Inclusao.ToSQL + ',' +
    Data_Hora_Alteracao.ToSQL + ',' + Usuario_Alteracao.ToSQL + ');');
    QueryORM.SQL.SaveToFile('d:\test.txt'); }
  QueryORM.ExecSQL;

end;

function TAluno.List: TBooleanFieldORM;
begin

  with QueryORM.SQL do
  begin
    Clear;
    Add('select * from Aluno');
  end;
  QueryORM.Open;

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

{ TAluno }

procedure TAluno.bdcall;

begin
  with QueryORM.SQL do
  begin
    Clear;
    Add('INSERT INTO Aluno (');

    with ID_Aluno.ToSQL do
    begin
      if OK then
      begin
        Add(SQLTxT);
      end;
      with Nome_Aluno.ToSQL do
      begin
        if OK then
        begin
          Add(SQLTxT);
        end;
      end;
      with Curso.ToSQL do
      begin
        if OK then
        begin
          Add(SQLTxT);
        end;
      end;
      with Turno.ToSQL do
      begin
        if OK then
          Add(SQLTxT);
      end;
      with Periodo.ToSQL do
      begin
        if OK then
          Add(SQLTxT);
      end;
      with Data_Ingresso.ToSQL do
      begin
        if OK then
        begin
          Add(SQLTxT);
        end;
      end;
      with Situacao.ToSQL do
      begin
        if OK then
        begin
          Add(SQLTxT + ',');
        end;
      end;
      with Cadeirante.ToSQL do
      begin
        if OK then
        begin
          Add(SQLTxT + ',');
        end;
      end;
      with Observacao.ToSQL do
      begin
        if OK then
        bEGin
          Add(SQLTxT + ',');
        end;
      end;
      with Data_Hora_Inclusao.ToSQL do
      begin
        if OK then
        begin
          Add(SQLTxT + ',');
        end;
      end;
      with Usuario_Inclusao.ToSQL do
      begin
        if OK then
        begin
          Add(SQLTxT + ',');
        end;
      end;
      with Data_Hora_Alteracao.ToSQL do
      Begin
        if OK then
        begin
          Add(SQLTxT + ',');
        end;
      End;
      with Usuario_Alteracao.ToSQL do
      begin
        if OK then
        bEGIN
          Add(SQLTxT + ',');
        end;
      end;
    end;

  end;

end;

constructor TAluno.Create;
begin
  inherited;
  FTableName := TNameTable.Create;
  FTableName.TableName := 'aluno';
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
{
  function TAluno.Delete: TBooleanFieldORM;
  begin

  end; }

function TAluno.filter: TSQLSyntaxResult;
begin
  { with QueryORM.SQL do
    begin
    Clear;
    with ID_Aluno.ToSQL do
    begin
    if OK then
    begin
    Add('INSERT INTO Aluno (');
    Add(Curso);
    end;
    with Nome_Aluno.ToSQL do
    begin
    if OK then
    begin
    Add(SQLTxT);
    end;

    end;

    end;
    end; }
  bdcall;
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
