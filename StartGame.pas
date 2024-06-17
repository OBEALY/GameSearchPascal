unit StartGame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.MPlayer, Vcl.Imaging.pngimage, Vcl.StdCtrls,System.ImageList,
  Vcl.ImgList,Prolog1,UserSave, Vcl.Grids,StudyGame,FirsstRound,RoundTwo,LastRoundOne;

type
  TForm3 = class(TForm)
    BackGround: TImage;
    MusicPlayer: TMediaPlayer;
    Menu: TImage;
    SoundBox: TImage;
    Exit: TImage;
    Image1: TImage;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure SoundBoxClick(Sender: TObject);
    procedure ExitClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure DisplayUserNames;
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  IsPlaying: Boolean = False;
  AppPath: string;

implementation

{$R *.dfm}


procedure TForm3.ExitClick(Sender: TObject);
begin
 Close;
end;



procedure TForm3.DisplayUserNames;
var
  CurrentNode: PUserNode;
  RowIndex: Integer;
begin
  StringGrid1.RowCount := 1; // Сброс количества строк
  RowIndex := 0;

  CurrentNode := Users.Head;
  while CurrentNode <> nil do
  begin
    Inc(RowIndex);
    StringGrid1.RowCount := RowIndex + 1;
    StringGrid1.Cells[0, RowIndex] := CurrentNode^.Name;

    CurrentNode := CurrentNode^.Next;
  end;
end;


procedure TForm3.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  WindowState := wsMaximized;
  BorderStyle := bsNone;
  BorderIcons := [];
  Form3.Left := 0;
  Form3.Top := 0;
  BackGround.Top := 0;
  BackGround.Left := 0;
  // Изменяем размер формы и ее содержимого
  ScaleBy(Screen.Width, 1920); // Замените 1920 на желаемую высоту формы
  AppPath := ExtractFilePath(ParamStr(0));
  LoadFromFile(AppPath+'User\UserList.txt');
  DisplayUserNames;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin
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


procedure TForm3.SoundBoxClick(Sender: TObject);
var
  ImagePath:string;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  ImagePath:=AppPath+'Sound/on.png';
  if IsPlaying then
  begin
    MusicPlayer.Pause;
    IsPlaying := False;
    SoundBox.Picture.LoadFromFile(AppPath+'Sound\off.png'); // Путь к изображению, когда музыка выключена
  end
  else
  begin
    if not MusicPlayer.FileName.IsEmpty then
    begin
      MusicPlayer.Play;
      IsPlaying := True;
      Sleep(100); // Добавляем задержку в 100 миллисекунд
      SoundBox.Picture.LoadFromFile(ImagePath); // Путь к изображению, когда музыка включена
    end
    else
    begin
      MusicPlayer.FileName := AppPath+'Sound\Sound1.mp3'; // Укажите путь к вашему аудиофайлу
      MusicPlayer.Open;
      MusicPlayer.Play;
      IsPlaying := True;
      SoundBox.Picture.LoadFromFile(ImagePath); // Путь к изображению, когда музыка включена
    end;
  end;
end;
procedure TForm3.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
  var
  index:integer;
  Number:Integer;
  UserName:string;
begin
  if ARow > 0 then
  begin
  UserName := StringGrid1.Cells[ACol, ARow];
  index:=GetUserIndex(UserName);
  if(index=1) then
  begin
    Form5.WindowState := wsMaximized;
    Form5.BorderStyle := bsNone;
    Form5.BorderIcons := [];
    Form5.GameFirst.Top:=0;
    Form5.GameFirst.Left:=0;
    Form5.Left := 0;
    Form5.Top := 0;
    Form5.ShowModal;
  end;

  if(index=2) then
  begin
    Form7.WindowState := wsMaximized;
    Form7.BorderStyle := bsNone;
    Form7.BorderIcons := [];
    Form7.Location2.Top:=0;
    Form7.Location2.Left:=0;
    Form7.Left := 0;
    Form7.Top := 0;
    Form7.ShowModal;
  end;

    if(index=3) then
  begin
    Form9.WindowState := wsMaximized;
    Form9.BorderStyle := bsNone;
    Form9.BorderIcons := [];
    Form9.LocationTwo.Top:=0;
    Form9.LocationTwo.Left:=0;
    Form9.Left := 0;
    Form9.Top := 0;
    Form9.ShowModal;
  end;

    if(index=4) then
  begin
    Form13.WindowState := wsMaximized;
    Form13.BorderStyle := bsNone;
    Form13.BorderIcons := [];
    Form13.Location.Top:=0;
    Form13.Location.Left:=0;
    Form13.Left := 0;
    Form13.Top := 0;
    Form13.ShowModal;
  end;


  end;
end;

end.

