unit FormMenuPrincipalUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFormMenuPrincipal = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuPrincipal: TFormMenuPrincipal;

implementation

{$R *.dfm}

procedure TFormMenuPrincipal.FormShow(Sender: TObject);
begin
  FormMenuPrincipal.WindowState:=wsMaximized;
end;


Initialization
 RegisterClass(TFormMenuPrincipal);

Finalization
 UnRegisterClass(TFormMenuPrincipal);

end.
