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

  Public
    Property Text: String read GETstText write SETstText;
  end;

implementation

{ TStringy }

function TStringy.GETstText: String;
begin
  Result := stText;
end;

procedure TStringy.SETstText(Word: String);
begin
  if (Word <> '') then
  begin
    stText := Word;
  end
  Else
  Begin
    Exit;
  End;

end;

end.
