unit UTypeDataFieldORM; // Class para tratar tipos de dados //

interface

Uses
  StrUtils, System.SysUtils, System.Classes, System.UITypes;

Type
  TSQLSyntaxResult = Class
  Private
    FOK: Boolean;
    FSQLTxT: String;
    FErrorMSG: String;
  Public
    Property OK: Boolean read FOK;
    Property SQLTxT: String read FSQLTxT;
    Property ErrorMSG: String read FErrorMSG;
  End;

Type

  TIntegerFieldORM = Class // Integer
  private
    FAssigned: Boolean;
    vDataValue: Integer;
    Procedure SETvDataValue(const Value: Integer);
    Function GETvDataValue: Integer;
  Public
    constructor Create; reintroduce;
    Property Assigned: Boolean read FAssigned;
    Property Value: Integer read GETvDataValue write SETvDataValue;
    function ToSQL: TSQLSyntaxResult;
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
    constructor Create; reintroduce;
    Property Assigned: Boolean read FAssigned;
    Property Value: String read GETvString write SETvString;
    property Length: Integer read getLength write setLength;
    Function ToSQL: TSQLSyntaxResult;

  end;

Type

  TDateFieldORM = class // Date
  private
    vDate: TDate;
    FAssigned: Boolean;
    Procedure SETvDate(const Value: TDate);
    Function GETvData: TDate;
  Public
    constructor Create; reintroduce;
    Property Assigned: Boolean read FAssigned;
    Property Value: TDate read GETvData write SETvDate;
    function ToSQL: TSQLSyntaxResult;
  end;

Type
  TDateTimeFieldORM = class // DateTime
  private
    vDateTime: TDateTime;
    FAssigned: Boolean;
    procedure SETvDateTime(const Value: TDateTime);
    Function GETvDateTime: TDateTime;
  public
    constructor Create; reintroduce;
    Property Assigned: Boolean read FAssigned;
    Property Value: TDateTime read GETvDateTime write SETvDateTime;
    Function ToSQL: TSQLSyntaxResult;
  End;

Type
  TBooleanFieldORM = Class // Boolean
  private
    vBoolean: Boolean;

    procedure SETvBoolean(const Value: Boolean);
    Function GETvBoolean: Boolean;
  public
    FAssigned: Boolean;
    constructor Create; reintroduce;
    Property Assigned: Boolean read FAssigned;
    property Value: Boolean read GETvBoolean write SETvBoolean;
    Function ToSQL: TSQLSyntaxResult;
  end;

Type
  TFloatFieldORM = Class // Float
  private
    vFloat: Currency;
    FAssigned: Boolean;
    Procedure SETvFloat(const Value: Currency);
    Function GETvFloat: Currency;
  Public
    constructor Create; reintroduce;
    Property Assigned: Boolean read FAssigned;
    Property Value: Currency read GETvFloat write SETvFloat;
    Function ToSQL: TSQLSyntaxResult;
  End;

implementation

{ TInteger }

constructor TIntegerFieldORM.Create;
begin
  inherited;
  vDataValue := 0;
  FAssigned := false;
end;

function TIntegerFieldORM.GETvDataValue: Integer;
begin
  Result := vDataValue;
end;

procedure TIntegerFieldORM.SETvDataValue(const Value: Integer);
begin

  vDataValue := Value;
  FAssigned := True;
end;

function TIntegerFieldORM.ToSQL: TSQLSyntaxResult;
begin
  Result := TSQLSyntaxResult.Create;
  if Assigned then
  begin
    Result.FOK := True;
    Result.FSQLTxT := IntToStr(Value);
  end
  else
  begin
    Result.FOK := false;
    Result.FErrorMSG := 'Field empty.';
  end;
  Free;
end;

{ TString }

constructor TStringFieldORM.Create;
begin
  inherited;
  vString := '';
  FAssigned := false;
end;

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

function TStringFieldORM.ToSQL: TSQLSyntaxResult;
begin

  Result := TSQLSyntaxResult.Create;
  if Assigned then
  begin
    Result.FOK := True;
    Result.FSQLTxT := QuotedStr(Value);
  end
  else
  begin
    Result.FOK := false;
    Result.FErrorMSG := 'Field empty.';
  end;
  Free;
end;

{ TDateTime }
constructor TDateFieldORM.Create;
begin
  inherited;
  vDate := 0;
  FAssigned := false;
end;

function TDateFieldORM.GETvData: TDate;
begin
  Result := vDate;
end;

procedure TDateFieldORM.SETvDate(const Value: TDate);
begin
  vDate := Value;
  FAssigned := True;
end;

function TDateFieldORM.ToSQL: TSQLSyntaxResult;
begin
  Result := TSQLSyntaxResult.Create;
  if Assigned then
  begin
    Result.FOK := True;
    Result.FSQLTxT := QuotedStr(FormatDateTime('YYYY-MM-DD', Value));
  end
  else
  begin
    Result.FOK := false;
    Result.FErrorMSG := 'Field empty.';
  end;
  Free;
end;

{ TBoolean }

constructor TBooleanFieldORM.Create;
begin
  inherited;
  vBoolean := false;
  FAssigned := false;

end;

function TBooleanFieldORM.GETvBoolean: Boolean;
begin
  Result := vBoolean;
end;

procedure TBooleanFieldORM.SETvBoolean(const Value: Boolean);
begin
  vBoolean := Value;
  FAssigned := True;

end;

function TBooleanFieldORM.ToSQL: TSQLSyntaxResult;
begin
  Result := TSQLSyntaxResult.Create;
  if Assigned then
  begin
    Result.FOK := True;
    Result.FSQLTxT := BoolToStr(Value);
  end
  else
  begin
    Result.FOK := false;
    Result.FErrorMSG := 'Field empty.';
  end;
  Free;

end;

constructor TDateTimeFieldORM.Create;
begin
  inherited;
  vDateTime := 0;
  FAssigned := false;
end;

function TDateTimeFieldORM.GETvDateTime: TDateTime;
begin
  Result := vDateTime;
end;

procedure TDateTimeFieldORM.SETvDateTime(const Value: TDateTime);
begin
  vDateTime := Value;
  FAssigned := True;
end;

function TDateTimeFieldORM.ToSQL: TSQLSyntaxResult;
begin
  Result := TSQLSyntaxResult.Create;
  if Assigned then
  begin
    Result.FOK := True;
    Result.FSQLTxT := QuotedStr(FormatDateTime('YYYY-MM-DD HH:NN:SS', Value));
  end
  else
  begin
    Result.FOK := false;
    Result.FErrorMSG := 'Field empty.';
  end;
  Free;
end;

{ TFloatFieldORM }

constructor TFloatFieldORM.Create;
begin
  inherited;
  vFloat := 0.0;
  FAssigned := false;
end;

function TFloatFieldORM.GETvFloat: Currency;
begin
  Result := vFloat;
end;

procedure TFloatFieldORM.SETvFloat(const Value: Currency);
begin
  vFloat := Value;
  FAssigned := True;
end;

function TFloatFieldORM.ToSQL: TSQLSyntaxResult;
var
  FomartSQL: TFormatSettings;
begin
  FomartSQL.DecimalSeparator := '.';
  FomartSQL.ThousandSeparator := ',';
  Result := TSQLSyntaxResult.Create;
  if Assigned then
  begin
    Result.FOK := True;
    Result.FSQLTxT := CurrToStr(Value, FomartSQL);
  end
  else
  begin
    Result.FOK := false;
    Result.FErrorMSG := 'Field empty.';
  end;
  Free;
end;

end.
