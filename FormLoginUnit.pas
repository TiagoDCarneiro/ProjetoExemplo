unit FormLoginUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TFormLogin = class(TForm)
    btnOk: TButton;
    Label1: TLabel;
    procedure btnOkClick(Sender: TObject);
  private
    procedure CriaPacote(Pacote:String);
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

procedure TFormLogin.CriaPacote(Pacote:String);
var  APackage : array of Cardinal;
     vArquivo    : String;
    _hnd: THandle;
begin
 SetLength(APackage, 0);
 vArquivo:='C:\Users\Tiago\Desktop\Exemplo\' + Pacote + '.BPL';

 if FileExists(vArquivo) then
   begin
     SetLength(APackage, Length(APackage) + 1);
     APackage[Length(APackage)-1] := LoadPackage(vArquivo);
   end
 else ShowMessage('Package n?o encontrado (' + ExtractFilePath(Application.ExeName)+ Pacote + '.bpl');
end;

procedure AbreFormulario(ClasseForm:String);
var  APersistentClass: TPersistentClass;
     AForm           : TForm;
begin
 APersistentClass := GetClass(ClasseForm);
 if APersistentClass = nil
   then ShowMessage('Formulario n?o localizado!')
 else
   begin
     AForm := TComponentClass(APersistentClass).Create(Application) as TForm;
     AForm.ShowModal;
   end;
end;


procedure TFormLogin.btnOkClick(Sender: TObject);
begin
  CriaPacote('MenuSistema');
  AbreFormulario('TFormMenuPrincipal');
end;

end.

