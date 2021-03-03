program ORM;

uses
  Vcl.Forms,
  UMainForm in 'UMainForm.pas' {FMain},
  UORM in 'UORM.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
