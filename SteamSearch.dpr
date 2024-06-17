program SteamSearch;

{$R *.dres}

uses
  Vcl.Forms,
  StartGame in 'StartGame.pas' {Form3},
  Prolog1 in 'Prolog1.pas' {Form1},
  StudyGame in 'StudyGame.pas' {Form5},
  Prolog2 in 'Prolog2.pas' {Form6},
  FirsstRound in 'FirsstRound.pas' {Form7},
  Prolog3 in 'Prolog3.pas' {Form8},
  RoundTwo in 'RoundTwo.pas' {Form9},
  StartWindow in 'StartWindow.pas' {Form11},
  UserSave in 'UserSave.pas',
  PrologFinaly in 'PrologFinaly.pas' {Form12},
  LastRoundOne in 'LastRoundOne.pas' {Form13},
  Video in 'Video.pas' {Form15},
  EcpMenu in 'EcpMenu.pas' {Form14};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm14, Form14);
  Application.Run;
end.
