unit EcpMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls,UserSave;

type
  TForm14 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;
  AppPath:string;

implementation

{$R *.dfm}

procedure TForm14.Image2Click(Sender: TObject);
var
  Name: string;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  Name := Edit1.Text;

  if Name <> '' then
  begin
    AddOrUpdateUser(Name,index);
    SaveToFile(AppPath + 'User\UserList.txt');
    Application.Terminate;
  end
  else
  begin
    ShowMessage('¬ведите им€ пользовател€.');
    Edit1.SetFocus;
  end;
end;

procedure TForm14.Image3Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TForm14.Image4Click(Sender: TObject);
begin
Close;
end;

end.
