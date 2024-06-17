unit FirsstRound;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.jpeg,Prolog3,UserSave,EcpMenu;

type
  TForm7 = class(TForm)
    Location2: TImage;
    Button1: TButton;
    Fish: TImage;
    Lamp: TImage;
    Neck: TImage;
    Clock: TImage;
    Sword: TImage;
    Be: TImage;
    Buterflyu: TImage;
    Radio: TImage;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure BeClick(Sender: TObject);
    procedure RadioClick(Sender: TObject);
    procedure FishClick(Sender: TObject);
    procedure LampClick(Sender: TObject);
    procedure ClockClick(Sender: TObject);
    procedure NeckClick(Sender: TObject);
    procedure SwordClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButerflyuClick(Sender: TObject);
  private
    FoundItems: TStringList;
    procedure CheckAndRemoveItem(ItemIndex: Integer);
    procedure UpdateItemList;
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  ImagePath: string;
  AppPath: string;

implementation

{$R *.dfm}

procedure TForm7.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  index:=2;
  Memo1.Lines.Add('������ ������');
  Memo1.Lines.Add('1: �����');
  Memo1.Lines.Add('2: �����');
  Memo1.Lines.Add('3: ����');
  Memo1.Lines.Add('4: ����');
  Memo1.Lines.Add('5: ����');
  Memo1.Lines.Add('6: �������');
  Memo1.Lines.Add('7: ����');
  Memo1.Lines.Add('8: ����');

  FoundItems := TStringList.Create;
  for i := 1 to Memo1.Lines.Count - 1 do
  begin
    FoundItems.AddObject(Memo1.Lines[i], TObject(i - 1));
  end;
end;

procedure TForm7.CheckAndRemoveItem(ItemIndex: Integer);
begin
  if (ItemIndex >= 0) and (ItemIndex < FoundItems.Count) then
  begin
    Memo1.Lines.Delete(ItemIndex + 1);
    FoundItems.Delete(ItemIndex);
  end;
end;

procedure TForm7.UpdateItemList;
var
  i: Integer;
begin
  Memo1.Clear;
  Memo1.Lines.Add('������ ������');
  for i := 0 to FoundItems.Count - 1 do
  begin
    Memo1.Lines.Add(FoundItems[i]);
  end;

  if FoundItems.Count = 0 then
  begin
    ShowMessage('��� �������� �������!');
      Form8 := TForm8.Create(Application);
      Form8.WindowState := wsMaximized;
      Form8.BorderStyle := bsNone;
      Form8.BorderIcons := [];
      Form8.Left := 0;
      Form8.Top := 0;
      Form8.Prolog.Top := 0;
      Form8.Prolog.Left := 0;
      Memo1.Lines.Clear;
      Form8.ShowModal;
  end;
end;

procedure TForm7.FishClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Fish.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('3: ����');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm7.LampClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Lamp.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('1: �����');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm7.ClockClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Clock.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('4: ����');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm7.NeckClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Neck.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('8: ����');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm7.SwordClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Sword.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('5: ����');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm7.BeClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Be.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('7: ����');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm7.ButerflyuClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Buterflyu.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('6: �������');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;


procedure TForm7.RadioClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Radio.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('2: �����');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
    Form14 := TForm14.Create(Application);
    Form14.WindowState := wsMaximized;
    Form14.BorderStyle := bsNone;
    Form14.BorderIcons := [];
    Form14.Left := 0;
    Form14.Top := 0;
    Form14.Image1.Top := 0;
    Form14.Image1.Left := 0;
    Form14.ShowModal;
end;

end.
