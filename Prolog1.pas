unit Prolog1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls,StudyGame;

type
  TForm1 = class(TForm)
    History: TImage;
    Memo1: TMemo;
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
    procedure InitializeArray;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ArrString: array of string;
  FlagString: Integer;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FlagString := 0;
  InitializeArray;
end;


procedure TForm1.Image1Click(Sender: TObject);
begin
  if FlagString < Length(ArrString) then
  begin
    Inc(FlagString);
    if FlagString <= 8 then
    begin
      Memo1.Lines.Text := ArrString[FlagString-1]
    end;
  end
    else
    begin
      Close;
      Form5 := TForm5.Create(Application);
      Form5.WindowState := wsMaximized;
      Form5.BorderStyle := bsNone;
      Form5.BorderIcons := [];
      Form5.Left := 0;
      Form5.Top := 0;
      Form5.GameFirst.Top := 0;
      Form5.GameFirst.Left := 0;
      Memo1.Lines.Clear;
      Form5.ShowModal;
    end;
end;

procedure TForm1.InitializeArray;
begin
  SetLength(ArrString, 8);
  ArrString[0] := '¬ мире пара и механизмов, где элегантность викторианской эпохи сочетаетс€ с технологическим прогрессом, расцветает стимпанк. ”зкие улочки опытивших городов наполн€ютс€ неверо€тными машинами.';
  ArrString[1] := 'р€дом с которыми растут украшенные топол€, а воздушные корабли заполн€ют небо, создава€ клубы пара.';
  ArrString[2] := '¬ этом фантастическом мире науки и фантазии люди стрем€тс€ к новым высотам. Ќаучные открыти€, механические протезы и стильные атрибуты стимпанка стали неотъемлемой частью повседневной жизни.';
  ArrString[3] := 'јвантюристы в бронированных панцир€х и костюмах из медных труб путешествуют через врем€ и пространство, воплоща€ смелость и изобретательность.';
  ArrString[4] := 'ќднако, за всей этой грандиозностью и великолепием, скрываютс€ тайны и загадки, которые ждут своего открыти€. ѕод поверхностью блест€щих фасадов и технологического прогресса скрываютс€ интриги, секреты и темные силы, готовые разрушить этот уникальный мир';
  ArrString[5] := '¬ этой эпохе стимпанка те, кто готовы рискнуть и исследовать, могут найти сокровища, раскрыть загадки и восстановить равновесие между человечеством и машинами.';
  ArrString[6] :='ќтправьтесь в увлекательное путешествие по миру стимпанка, где вас ждут необычные изобретени€, механические чудеса и эпохальные приключени€. ¬стретьтесь с эксцентричными геро€ми, столкнитесь с темными силами и откройте новые горизонты науки и фантазии.';
  ArrString[7] :='Ёто истори€ стимпанка, где возможности и воображение не знают границ.”дачи странник.—ейчас будет обучение';
end;

end.
