unit LastRoundOne;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls,Video,UserSave,EcpMenu;

type
  TForm13 = class(TForm)
    Location: TImage;
    cross: TImage;
    Train: TImage;
    eggs: TImage;
    Calendar: TImage;
    Shake: TImage;
    Camera: TImage;
    Monro: TImage;
    Memo1: TMemo;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure CheckAndRemoveItem(ItemIndex: Integer);
    procedure UpdateItemList;
    procedure CameraClick(Sender: TObject);
    procedure crossClick(Sender: TObject);
    procedure eggsClick(Sender: TObject);
    procedure CalendarClick(Sender: TObject);
    procedure ShakeClick(Sender: TObject);
    procedure TrainClick(Sender: TObject);
    procedure MonroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FoundItems: TStringList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;
  ImagePath: string;
  AppPath: string;
implementation

{$R *.dfm}

procedure TForm13.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  index:=4;
  Memo1.Lines.Add('Список поиска');
  Memo1.Lines.Add('1: Поезд');
  Memo1.Lines.Add('2: Крестик');
  Memo1.Lines.Add('3: Фото Монро');
  Memo1.Lines.Add('4: Яйцо Фаберже');
  Memo1.Lines.Add('5: Камера');
  Memo1.Lines.Add('6: Змея');
  Memo1.Lines.Add('7: Старый календарь');

  FoundItems := TStringList.Create;
  for i := 1 to Memo1.Lines.Count - 1 do
  begin
    FoundItems.AddObject(Memo1.Lines[i], TObject(i - 1));
  end;
end;





procedure TForm13.CheckAndRemoveItem(ItemIndex: Integer);
begin
  if (ItemIndex >= 0) and (ItemIndex < FoundItems.Count) then
  begin
    Memo1.Lines.Delete(ItemIndex + 1);
    FoundItems.Delete(ItemIndex);
  end;
end;




procedure TForm13.UpdateItemList;
var
  i: Integer;
begin
  Memo1.Clear;
  Memo1.Lines.Add('Список поиска');
  for i := 0 to FoundItems.Count - 1 do
  begin
    Memo1.Lines.Add(FoundItems[i]);
  end;

  if FoundItems.Count = 0 then
  begin
      ShowMessage('Все предметы найдены!');
      Form15.WindowState := wsMaximized;
      Form15.BorderStyle := bsNone;
      Form15.BorderIcons := [];
      Form15.EndGame.Top:=0;
      Form15.EndGame.Left:=0;
      Form15.Left := 0;
      Form15.Top := 0;
      Memo1.Lines.Clear;
      Form15.ShowModal;

  end;
end;



procedure TForm13.MonroClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Monro.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('3: Фото Монро');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm13.ShakeClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Shake.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('6: Змея');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;



procedure TForm13.TrainClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Train.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('1: Поезд');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm13.Button1Click(Sender: TObject);
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

procedure TForm13.CalendarClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Calendar.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('7: Старый календарь');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm13.CameraClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Camera.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('5: Камера');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm13.crossClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  cross.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('2: Крестик');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm13.eggsClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  eggs.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('4: Яйцо Фаберже');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

end.
