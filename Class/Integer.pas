unit Integer;

interface

Uses
  StrUtils, System.SysUtils, System.Classes;

Type
  TInteger = Class
  private
    vInteger: Integer;

    Function GETvInteger: Integer;
    Procedure SETvInteger(Number: Integer);

  Public
    Property Text: Integer read GETvInteger write SETvInteger;

  end;

implementation

{ CInteger }

function TInteger.GETvInteger: Integer;
begin
  Result := vInteger;
end;

procedure TInteger.SETvInteger(Number: Integer);
begin
  if assigned(Number) then
  begin
    vInteger := Number;
  end;

end;

end.
