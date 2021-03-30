unit UTypeDataFieldORM; // Class para tratar tipos de dados //

interface

Uses
  StrUtils, System.SysUtils, System.Classes, System.UITypes;

Type

  TIntegerFieldORM = Class // Integer
  private
    vDataValue: Integer;
    FAssigned: Boolean;
    Procedure SETvDataValue(const Value: Integer);
    Function GETvDataValue: Integer;
  Public
    Property Value: Integer read GETvDataValue write SETvDataValue;
  end;

Type
  TStringFieldORM = Class // String
  Private
    vString: String;
    FAssigned: Boolean;
    FLength: Integer;
    Procedure SETvString(const Value: String);
    Function GETvString: String;
    function getLength: Integer;
    procedure setLength(const Value: Integer);
  Public
    Property Value: String read GETvString write SETvString;
    property Length: Integer read getLength write setLength;
  end;

Type

  TDateFieldORM = class // Date
  private
    vDate: TDate;
    FAssigned: Boolean;
    Procedure SETvDate(const Value: TDate);
    Function GETvData: TDate;
  Public
    Property Value: TDate read GETvData write SETvDate;
  end;

Type
  TDateTimeFieldORM = class // DateTime
  private
    vDateTime: TDateTime;
    FAssigned: Boolean;
    procedure SETvDateTime(const Value: TDateTime);
    Function GETvDateTime: TDateTime;
  public
    Property Value: TDateTime read GETvDateTime write SETvDateTime;
  End;

Type
  TBooleanFieldORM = Class // Boolean
  private
    vBoolean: Boolean;
    FAssigned: Boolean;
    procedure SETvBoolean(const Value: Boolean);
    Function GETvBoolean: Boolean;
  public
    property Value: Boolean read GETvBoolean write SETvBoolean;
  end;

implementation

{ TInteger }

function TIntegerFieldORM.GETvDataValue: Integer;
begin
  Result := vDataValue;
end;

procedure TIntegerFieldORM.SETvDataValue(const Value: Integer);
begin
  vDataValue := Value;
  FAssigned := True;
end;

{ TString }

function TStringFieldORM.getLength: Integer;
begin
  Result := FLength;
end;

function TStringFieldORM.GETvString: String;
begin
  Result := vString;
end;

procedure TStringFieldORM.setLength(const Value: Integer);
begin
  FLength := Value;
end;

procedure TStringFieldORM.SETvString(const Value: String);
begin
  vString := Value;
  FAssigned := True;
end;

{ TDateTime }
function TDateFieldORM.GETvData: TDate;
begin
  Result := vDate;
end;

procedure TDateFieldORM.SETvDate(const Value: TDate);
begin
  vDate := Value;
  FAssigned := True;
end;

{ TBoolean }

function TBooleanFieldORM.GETvBoolean: Boolean;
begin
  Result := vBoolean;
end;

procedure TBooleanFieldORM.SETvBoolean(const Value: Boolean);
begin
  vBoolean := Value;
  FAssigned := True;
end;

{ TDateWithoutTime }

function TDateTimeFieldORM.GETvDateTime: TDateTime;
begin
  Result := vDateTime;
end;

procedure TDateTimeFieldORM.SETvDateTime(const Value: TDateTime);
begin
  vDateTime := Value;
  FAssigned := True;
end;

end.
