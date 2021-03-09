unit ClassInteger;

interface

Uses
  System.SysUtils, System.Classes;

Type

  TInteger = Class(TObject)

  private
    FAssigned: Boolean;
    FValue: Integer;
    function getValue: Integer;
    procedure setValue(const Value: Integer);
    function getAssigned: Boolean;
    procedure setAssigned(const Value: Boolean);

  public
    property Assigned: Boolean read getAssigned write setAssigned;
    property Value: Integer read getValue write setValue;
  published
  end;

implementation

{ TInteger }

function TInteger.getAssigned: Boolean;
begin
  result := FAssigned;
end;

function TInteger.getValue: Integer;
begin
  result := FValue;
end;

procedure TInteger.setAssigned(const Value: Boolean);
begin
  FAssigned := Value;

end;

procedure TInteger.setValue(const Value: Integer);
begin
  FValue := Value;
  Assigned := true;

end;

end.
