program Exemplo;

uses
  Vcl.Forms,
  FormLoginUnit in 'FormLoginUnit.pas' {FormLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.Run;
end.
