unit Final;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFinaly = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure InitializeArray;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Finaly: TFinaly;
  ArrString: array of string;
  FlagString: Integer;
implementation

{$R *.dfm}

procedure TFinaly.FormCreate(Sender: TObject);
begin
  FlagString := 0;
  InitializeArray;
end;


procedure TFinaly.Image2Click(Sender: TObject);
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

    end;
end;

procedure TFinaly.InitializeArray;
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
