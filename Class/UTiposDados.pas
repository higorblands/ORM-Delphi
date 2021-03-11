unit UTiposDados; // Class para tratar tipos de dados //

interface

Uses
  StrUtils, System.SysUtils, System.Classes, System.UITypes;

var
  FAssigned: Boolean;

Type
  TIntegerPlusPlus = Class // Integer
  private
    vDataValue: Integer;
    Procedure SETvDataValue(const Value: Integer);
  Public
    Property Value: Integer read vDataValue write SETvDataValue;
  end;

Type
  TString = Class // String
  Private
    vString: String;
    Procedure SETvString(const Value: String);
  Public
    Property Value: String read vString write SETvString;
  end;

Type

  TDate = class(TDateTime) // DateTime
  private
    vDateTime: TDate;
    Procedure SETvDateTime(const Value: TDateTime);
  Public
    Property Value: TDateTime read vDateTime write SETvDateTime;
  end;

Type
  TDateWithoutTime = class(TDateTime) // Date
  private
    vDate: TDateWithoutTime;
    procedure SETvDate(const Value: TDateTime);
  public
    Property Value: TDateTime read vDate write SETvDate;
  End;

Type
  TBoolean = Class // Boolean
  private
    vBoolean: Boolean;
    procedure SETvBoolean(const Value: Boolean);
  public
    property Value: Boolean read vBoolean write SETvBoolean;
  end;

implementation

{ TInteger }

procedure TIntegerPlusPlus.SETvDataValue(const Value: Integer);
begin
  FAssigned := False;
  if ((vDataValue <> Value)) then
  begin
    vDataValue := Value;
    FAssigned := True;
  end;
end;

{ TString }

procedure TString.SETvString(const Value: String);
begin
  FAssigned := False;
  if (vString <> Value) then
  begin
    vString := Value;
    FAssigned := True;
  end;
end;

{ TDateTime }
procedure TDate.SETvDateTime(const Value: TDateTime);
begin
  FAssigned := False;
  if (vDateTime <> Value) then
  begin
    vDateTime := Value;
    FAssigned := True;
  end;
end;

{ TBoolean }

procedure TBoolean.SETvBoolean(const Value: Boolean);
begin
  FAssigned := False;
  if (vBoolean <> Value) then
  begin
    vBoolean := Value;
    FAssigned := True;
  end;

end;

{ TDateWithoutTime }

procedure TDateWithoutTime.SETvDate(const Value: TDateTime);
begin
  FAssigned := False;
  if (vDate <> Value) then
  begin
    vDate := Value;
    FAssigned := True;
  end;
end;

end.

