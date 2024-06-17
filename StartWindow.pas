unit StartWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls,UserSave, Vcl.Imaging.jpeg,Prolog1;

type
  TForm11 = class(TForm)
    Edit1: TEdit;
    Fone: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
var
  Name: string;
begin
  Name := Edit1.Text; // Добавьте точку с запятой в конце строки
  AddUser(Name, 2); // Используйте переменную Name при вызове AddUser

    Form1 := TForm1.Create(Application);
  try
    Form1.WindowState := wsMaximized;
    Form1.BorderStyle := bsNone;
    Form1.BorderIcons := [];
    Form1.History.Top:=0;
    Form1.History.Left:=0;
    Form1.Left := 0;
    Form1.Top := 0;
    Form1.ShowModal;
  finally
    Form1.Free;
  end;


end;

end.
