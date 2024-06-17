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
  ArrString[0] := '� ���� ���� � ����������, ��� ������������ ������������� ����� ���������� � ��������������� ����������, ���������� ��������. ����� ������ ��������� ������� ����������� ������������ ��������.';
  ArrString[1] := '����� � �������� ������ ���������� ������, � ��������� ������� ��������� ����, �������� ����� ����.';
  ArrString[2] := '� ���� �������������� ���� ����� � �������� ���� ��������� � ����� �������. ������� ��������, ������������ ������� � �������� �������� ��������� ����� ������������ ������ ������������ �����.';
  ArrString[3] := '����������� � ������������� �������� � �������� �� ������ ���� ������������ ����� ����� � ������������, �������� �������� � �����������������.';
  ArrString[4] := '������, �� ���� ���� �������������� � ������������, ���������� ����� � �������, ������� ���� ������ ��������. ��� ������������ ��������� ������� � ���������������� ��������� ���������� �������, ������� � ������ ����, ������� ��������� ���� ���������� ���';
  ArrString[5] := '� ���� ����� ��������� ��, ��� ������ �������� � �����������, ����� ����� ���������, �������� ������� � ������������ ���������� ����� ������������� � ��������.';
  ArrString[6] :='����������� � ������������� ����������� �� ���� ���������, ��� ��� ���� ��������� �����������, ������������ ������ � ���������� �����������. ����������� � �������������� �������, ����������� � ������� ������ � �������� ����� ��������� ����� � ��������.';
  ArrString[7] :='��� ������� ���������, ��� ����������� � ����������� �� ����� ������.����� ��������.������ ����� ��������';
end;

end.
