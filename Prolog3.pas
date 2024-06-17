unit Prolog3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls,RoundTwo;

type
  TForm8 = class(TForm)
    Prolog: TImage;
    Memo1: TMemo;
    Image2: TImage;
    procedure InitializeArray;
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  ArrString: array of string;
  FlagString: Integer;

implementation

{$R *.dfm}

procedure TForm8.FormCreate(Sender: TObject);
begin
  FlagString := 0;
  InitializeArray;
end;

procedure TForm8.Image2Click(Sender: TObject);
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
    Form9 := TForm9.Create(Application);
    Form9.WindowState := wsMaximized;
    Form9.BorderStyle := bsNone;
    Form9.BorderIcons := [];
    Form9.Left := 0;
    Form9.Top := 0;
    Form9.LocationTwo.Top := 0;
    Form9.LocationTwo.Left := 0;
    Form9.ShowModal;
    end;
end;


procedure TForm8.InitializeArray;
begin
  SetLength(ArrString, 5);
  ArrString[0] := '������ � ���� � ���� �� ����� ��� ������� �������� ������� �� ������ ����� ���� ������ ������� ���� ���� � �� ������� � ����� ����� ���� �����';
  ArrString[1] := '��� ������ �� ���-�� ������� ���� ������ ��� ��� ����� �������� ����� ����� �������� � �� ������������� ����';
  ArrString[2] := '����� ��� ���� �����-�� ������� �� ���,� ���� ������ � ����� ��� ��������� "C����� ����"';
  ArrString[3] := '��� ��� ���� ������ ���������� ���� ���� ����� ��� �� ����...';
  ArrString[4] := '����� ����..���� ���������';
end;

end.
