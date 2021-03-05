unit Stringy;

interface

uses
  StrUtils, System.SysUtils, System.Classes;

Type
  TStringy = Class

  private
    stText: String;

    Function GETstText: String;
    Procedure SETstText(Word: String);
    function Numero(ATecla: Char; AFloat: Boolean = False): Char;
    function IsNumeric(AValor: String; AFloat: Boolean = False): Boolean;

  Public
    Property Text: String read GETstText write SETstText;
  end;

implementation

{ TStringy }

function TStringy.GETstText: String;
begin
  Result := stText;
end;

function TStringy.IsNumeric(AValor: String; AFloat: Boolean): Boolean;
begin
  var
    Cont: Integer;
  begin
    Result := False;

    if (Trim(AValor) = '') then
      Exit;

    for Cont := 1 to Length(AValor) do
    begin
      if (Numero(AValor[Cont], AFloat) = #0) then
        Exit;
    end;

    Result := True;
  end;

  function TStringy.Numero(ATecla: Char; AFloat: Boolean): Char;
  begin
    Result := #0;

    if AFloat then
      if ATecla in [',', '.'] then
        Result := ATecla;

    if ATecla in ['0' .. '9', #8] then
      Result := ATecla;
  end;

  procedure TStringy.SETstText(Word: String);
  begin
    if (IsNumeric) then
    begin
      stText := Word;
    end;
  end;

end.
