unit UGeneralORM;

interface

uses
  UTypeDataFieldORM, System.SysUtils, System.Classes, System.UITypes,
  FireDAC.Stan.Error, Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef;

Type
  TORM = class

  public
    QueryORM: TFDQuery;
    conn: TFDconnection;

  end;

Type
  TNameTable = Class // String
  Private
    FNameTable: String;
    FAssigned: Boolean;
    function getTableName: String; // Table
    procedure setTableName(const Value: String); // Table
  Public
    property TableName: String read getTableName write setTableName;
  end;

implementation

{ Table }

{
  function TNameTable.Delete: TBooleanFieldORM;
  begin
  QueryORM := TFDQuery.Create(nil);
  QueryORM.connection := conn;
  end; }

function TNameTable.getTableName: String;
begin
  Result := FNameTable;
end;
{
  function TNameTable.Insert: TBooleanFieldORM;
  begin
  QueryORM := TFDQuery.Create(nil);
  QueryORM.connection := conn;
  end; }

procedure TNameTable.setTableName(const Value: String);
begin
  FNameTable := Value;
  FAssigned := True;
end;
{
  function TNameTable.Update: TBooleanFieldORM;
  begin
  QueryORM := TFDQuery.Create(nil);
  QueryORM.connection := conn;
  end; }

end.
