unit Prolog2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,FirsstRound,
  Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Round2: TImage;
    Memo1: TMemo;
    Image1: TImage;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure InitializeArray;
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  ArrString: array of string;
  FlagString: Integer;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
Close
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  FlagString := 0;
  InitializeArray;
end;


procedure TForm6.Image1Click(Sender: TObject);
begin
  if FlagString < Length(ArrString) then
  begin
    Inc(FlagString);
    if FlagString <= 6 then
    begin
      Memo1.Lines.Text := ArrString[FlagString-1]
    end;
  end
    else
    begin
    Form7 := TForm7.Create(Application);
    Form7.WindowState := wsMaximized;
    Form7.BorderStyle := bsNone;
    Form7.BorderIcons := [];
    Form7.Left := 0;
    Form7.Top := 0;
    Form7.Location2.Top := 0;
    Form7.Location2.Left := 0;
    Form7.ShowModal;
    end;
end;


procedure TForm6.InitializeArray;
begin
  SetLength(ArrString, 6);
  ArrString[0] := 'ѕривет € Ёлли сейчас € быстро введу теб€ в курс дела этого мира';
  ArrString[1] := 'смотр€ на город, который стал моим домом. ¬округ мен€ т€готела атмосфера стимпанка - сочетание механических приспособлений, паровых машин и викторианской элегантности.';
  ArrString[2] := 'Ќо за всей этой красотой и технологическим прогрессом скрывалась темна€ тень преступности. ¬ последнее врем€ происходили странные событи€, которые подталкивали мен€ искать правду и раскрыть тайны, та€щиес€ в темных уголках города.';
  ArrString[3] := ' риминальные группировки начали использовать принципы стимпанка дл€ своих злоде€ний. ћеханические взломщики, использующие паровые устройства, начали проникать в самые надежные хранилища и ограбл€ть их безостановочно. ';
  ArrString[4] := 'Ѕыли созданы паровые ружь€, способные ослабить любую защиту, и механизмы, способные взламывать самые сложные кодовые замки.';
  ArrString[5] := '» теперь они контролируют все что тут есть помоги нам побороть это зло  удачи.';
end;

end.
