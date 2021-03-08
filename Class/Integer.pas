unit Integer;

interface

Uses
  StrUtils, System.SysUtils, System.Classes;

Type
  TInteger = Class
  Protected
    FAssigned: Boolean;
  private
    vInteger: Integer;
    Function GETvInteger: Integer;
    Procedure SETvInteger(Value: Integer);
  Public
    Property Number: Integer read GETvInteger write SETvInteger;
  end;

implementation

{ CInteger }
function TInteger.GETvInteger: Integer;
begin
  Result := vInteger;
end;

procedure TInteger.SETvInteger(Value: Integer);
begin
  if (Trim(Value) <> '') then
  begin
    vInteger := Value;
    FAssigned := True;
  end;
end;

end.
