program ORM;

uses
  Vcl.Forms,
  UTypeDataFieldORM in 'ORM\UTypeDataFieldORM.pas',
  UGeneralORM in 'ORM\UGeneralORM.pas',
  UAlunoORM in 'Entidades\UAlunoORM.pas',
  UMainForm in 'View\UMainForm.pas',
  UController in 'Control\UController.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TFMain, FMain);
  Application.Run;

end.
