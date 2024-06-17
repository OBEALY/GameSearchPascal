unit PrologFinaly;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls,LastRoundOne;

type
  TForm12 = class(TForm)
    DIKIIFKEX: TImage;
    Memo1: TMemo;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure InitializeArray;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  ArrString: array of string;
  FlagString: Integer;

implementation

{$R *.dfm}

procedure TForm12.FormCreate(Sender: TObject);
begin
 FlagString := 0;
 InitializeArray;
end;


procedure TForm12.Image1Click(Sender: TObject);
begin
  if FlagString < Length(ArrString) then
  begin
    Inc(FlagString);
    if FlagString < 6 then
    begin
      Memo1.Lines.Text := ArrString[FlagString-1]
    end;
  end
  else
  begin

  Form13 := TForm13.Create(Application);
  Form13.WindowState := wsMaximized;
  Form13.BorderStyle := bsNone;
  Form13.BorderIcons := [];
  Form13.Left := 0;
  Form13.Top := 0;
  Form13.Location.Top := 0;
  Form13.Location.Left := 0;
  Memo1.Lines.Clear;
  Form13.ShowModal;
  Close;
  end;

end;

procedure TForm12.InitializeArray;
begin
  SetLength(ArrString, 5);
  ArrString[0] := '“ы большой молодец,что смог тихо выполнить задачу,но теперь нас ждет финал...';
  ArrString[1] := '¬идишь этот корабль он доставит теб€ в самое пекло';
  ArrString[2] := 'ѕока ты будешь выполн€ть свою мисиию мы постараемс€ тебе помочь';
  ArrString[3] := 'ѕора.Ѕереги себ€';
  ArrString[4] := '”видимс€ после того как режим упадет...';
end;

end.
