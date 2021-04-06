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
    function ToSQL: String;
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
    function ToSQL: String;
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
    function ToSQL: String;
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
    Function ToSQL: String;
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
    Function ToSQL: String;
  end;

Type
  TFloatFieldORM = Class // Float
  private
    vFloat: Currency;
    FAssigned: Boolean;
    Procedure SETvFloat(const Value: Currency);
    Function GETvFloat: Currency;
  Public
    Property Value: Currency read GETvFloat write SETvFloat;
    Function ToSQL: String;
  End;

implementation

{ TInteger }

function TIntegerFieldORM.GETvDataValue: Integer;
begin
  result := vDataValue;
end;

procedure TIntegerFieldORM.SETvDataValue(const Value: Integer);
begin
  vDataValue := Value;
  FAssigned := True;
end;

function TIntegerFieldORM.ToSQL: String;
begin
  result := IntToStr(Value);
end;

{ TString }

function TStringFieldORM.getLength: Integer;
begin
  result := FLength;
end;

function TStringFieldORM.GETvString: String;
begin
  result := vString;
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

function TStringFieldORM.ToSQL: String;
begin
  result := QuotedStr(Value);
end;

{ TDateTime }
function TDateFieldORM.GETvData: TDate;
begin
  result := vDate;
end;

procedure TDateFieldORM.SETvDate(const Value: TDate);
begin
  vDate := Value;
  FAssigned := True;
end;

function TDateFieldORM.ToSQL: String;
begin
  result := QuotedStr(FormatDateTime('YYYY-MM-DD', Value));
end;

{ TBoolean }

function TBooleanFieldORM.GETvBoolean: Boolean;
begin
  result := vBoolean;
end;

procedure TBooleanFieldORM.SETvBoolean(const Value: Boolean);
begin
  vBoolean := Value;
  FAssigned := True;
end;

function TBooleanFieldORM.ToSQL: String;
begin
  if Value = True then
  begin
    result := '1';
  end
  Else
  begin
    result := '0';
  end;

end;

{ TDateWithoutTime }

function TDateTimeFieldORM.GETvDateTime: TDateTime;
begin
  result := vDateTime;
end;

procedure TDateTimeFieldORM.SETvDateTime(const Value: TDateTime);
begin
  vDateTime := Value;
  FAssigned := True;
end;

function TDateTimeFieldORM.ToSQL: String;
begin
  result := QuotedStr(FormatDateTime('YYYY-MM-DD HH:NN:SS', Value));
end;

{ TFloatFieldORM }

function TFloatFieldORM.GETvFloat: Currency;
begin
  result := vFloat;
end;

procedure TFloatFieldORM.SETvFloat(const Value: Currency);
begin
  vFloat := Value;
  FAssigned := True;
end;

function TFloatFieldORM.ToSQL: String;
var
  FomartSQL: TFormatSettings;
begin
  FomartSQL.DecimalSeparator := '.';
  FomartSQL.ThousandSeparator := ',';
  result := CurrToStr(Value, FomartSQL);
end;

end.
