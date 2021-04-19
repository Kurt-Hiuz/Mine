unit FirstAppPas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1PressKey(Sender: TObject; var Key: char);
    procedure Edit2PressKey(Sender: TObject; var Key: char);
    procedure Edit3PressKey(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  d, a, b, c, x1, x2: real;
  s1, s2: string[7];
  code: integer;
begin
  label9.Font.color := clBlack;

  d := 0;
  x1 := 0;
  x2 := 0;

  val(edit1.Text, a, code);
  val(edit2.Text, b, code);
  val(edit3.Text, c, code);

  if a = 0 then
  begin
    label9.Caption :=
      'Программа не создана для решения линейных уравнений (А равен нулю).';
    label9.Font.color := clRed;
  end
  else
  begin

    d := b * b - 4 * a * c;
    if d > 0 then
    begin
      x1 := (-b + sqrt(d)) / (2 * a);
      x2 := (-b - sqrt(d)) / (2 * a);
      str(x1: 7: 3, s1);
      str(x2: 7: 3, s2);
      label9.Caption := 'Уравнение имеет 2 корня:' + chr(13) +
        'X1 = ' + s1 + chr(13) + 'X2 = ' + s2;
    end
    else if d = 0 then
    begin
      x1 := -b / (2 * a);
      str(x1: 7: 3, s1);
      label9.Caption := 'Уравнение имеет 1 корень:' + chr(13) + 'X = ' + s1;
    end
    else
    begin
      label9.Caption := 'Уравнение не имеет корней.';
    end;
  end;
end;

procedure TForm1.Edit1PressKey(Sender: TObject; var Key: char);
begin
  case Key of
    '0'..'9', chr(8): ;
    '.':
      if not (pos('.', edit1.Text) <> 0) then
        Key := '.'
      else
        Key := chr(0);
    ',':
      if not (pos('.', edit1.Text) <> 0) then
        Key := '.'
      else
        Key := chr(0);
    '-':
      if edit1.Text = '' then
        Key := '-'
      else
        Key := chr(0);
    chr(13): edit2.SetFocus;
    else
      Key := chr(0);
  end;
end;

procedure TForm1.Edit2PressKey(Sender: TObject; var Key: char);
begin
  case Key of
    '0'..'9', chr(8): ;
    '.':
      if not (pos('.', edit2.Text) <> 0) then
        Key := '.'
      else
        Key := chr(0);
    ',':
      if not (pos('.', edit2.Text) <> 0) then
        Key := '.'
      else
        Key := chr(0);
    '-':
      if edit2.Text = '' then
        Key := '-'
      else
        Key := chr(0);
    chr(13): edit3.SetFocus;
    else
      Key := chr(0);
  end;
end;

procedure TForm1.Edit3PressKey(Sender: TObject; var Key: char);
begin
  case Key of
    '0'..'9', chr(8): ;
    '.':
      if not (pos('.', edit3.Text) <> 0) then
        Key := '.'
      else
        Key := chr(0);
    ',':
      if not (pos('.', edit3.Text) <> 0) then
        Key := '.'
      else
        Key := chr(0);
    '-':
      if edit3.Text = '' then
        Key := '-'
      else
        Key := chr(0);
    chr(13): button1.SetFocus;
    else
      Key := chr(0);
  end;
end;

end.
