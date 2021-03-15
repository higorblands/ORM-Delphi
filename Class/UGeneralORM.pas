unit UGeneralORM;

interface

uses
  System.SysUtils, System.Classes, System.UITypes;

Type
  Table = class // Table
  private
    FName: string;
    function getTableName: String;
    procedure setTableName(const Value: String);
  public
    constructor Create(aName: string);
    property Name: string read getTableName write setTableName;
  end;

  Field = class // Field ( Table )
  private
    FName: string;
  public
    Constructor Create(aName: string);
    property Name: string read FName;
  end;

implementation

{ Table }

constructor Table.Create(aName: string);
begin
  FName := aName;
end;

function Table.getTableName: String;
begin
  Result := FName;
end;

procedure Table.setTableName(const Value: String);
begin
  FName := Value;
end;

{ Field }

constructor Field.Create(aName: string);
begin
  FName := aName;
end;

end.
