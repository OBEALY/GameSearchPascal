unit RoundTwo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage,PrologFinaly,UserSave,EcpMenu;

type
  TForm9 = class(TForm)
    LocationTwo: TImage;
    Button1: TButton;
    BloodFinger: TImage;
    Photo: TImage;
    Slenderman: TImage;
    Cow: TImage;
    Umbrella: TImage;
    Glass: TImage;
    Beatlez: TImage;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure BloodFingerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckAndRemoveItem(ItemIndex: Integer);
    procedure UpdateItemList;
    procedure UmbrellaClick(Sender: TObject);
    procedure CowClick(Sender: TObject);
    procedure BeatlezClick(Sender: TObject);
    procedure SlendermanClick(Sender: TObject);
    procedure GlassClick(Sender: TObject);
  private
      FoundItems: TStringList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  ImagePath: string;
  AppPath: string;

implementation

{$R *.dfm}

procedure TForm9.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  index:=3;
  Memo1.Lines.Add('Список поиска');
  Memo1.Lines.Add('1: Слендермен');
  Memo1.Lines.Add('2: Ворона');
  Memo1.Lines.Add('3: Плакат битлз');
  Memo1.Lines.Add('4: Логотип Амбреллы');
  Memo1.Lines.Add('5: Очки');
  Memo1.Lines.Add('6: Рука');

  FoundItems := TStringList.Create;
  for i := 1 to Memo1.Lines.Count - 1 do
  begin
    FoundItems.AddObject(Memo1.Lines[i], TObject(i - 1));
  end;
end;



procedure TForm9.CheckAndRemoveItem(ItemIndex: Integer);
begin
  if (ItemIndex >= 0) and (ItemIndex < FoundItems.Count) then
  begin
    Memo1.Lines.Delete(ItemIndex + 1);
    FoundItems.Delete(ItemIndex);
  end;
end;



procedure TForm9.UpdateItemList;
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
      Form12.WindowState := wsMaximized;
      Form12.BorderStyle := bsNone;
      Form12.BorderIcons := [];
      Form12.Left := 0;
      Form12.Top := 0;
      Form12.DIKIIFKEX.Left:=0;
      Form12.DIKIIFKEX.Top:=0;
      Memo1.Lines.Clear;
      Form12.ShowModal;
  end;
end;



procedure TForm9.BloodFingerClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  BloodFinger.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('6: Рука');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm9.UmbrellaClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Umbrella.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('4: Логотип Амбреллы');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;


procedure TForm9.CowClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Cow.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('2: Ворона');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;


procedure TForm9.BeatlezClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Beatlez.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('3: Плакат битлз');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm9.SlendermanClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Slenderman.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('1: Слендермен');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;

procedure TForm9.GlassClick(Sender: TObject);
var
  ItemIndex: Integer;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath := AppPath + 'Image\Zvezd.png';
  Glass.Picture.LoadFromFile(ImagePath);

  ItemIndex := FoundItems.IndexOf('5: Очки');
  CheckAndRemoveItem(ItemIndex);
  UpdateItemList;
end;


procedure TForm9.Button1Click(Sender: TObject);
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
