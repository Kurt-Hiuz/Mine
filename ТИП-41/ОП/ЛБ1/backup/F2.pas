unit F2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  f1, f3;

type

  { TForm2 }

  TForm2 = class(TForm)
    Bevel1: TBevel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure Edit2KeyPress(Sender: TObject; var Key: char);
    procedure Edit3KeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button3Click(Sender: TObject);
var
  m, n, c, resultL, resultM: real;
  s1, s2: string[9];
  code: integer;
begin
  label6.Font.color := clBlack;

  val(edit1.Text, m, code);
  val(edit2.Text, n, code);
  val(edit3.Text, c, code);

  if n = 0 then
  begin
    label6.Font.color := clRed;
    label6.Caption :=
      'N не может быть равен 0';
  end
  else
  begin
    resultL := m * n * c - sqrt(abs(m / n));
    resultM := sqr(sin(resultL)) + (0.3 * abs(resultL));

    str(resultL: 5: 4, s1);
    str(resultM: 5: 4, s2);

    label6.Font.Color := clGreen;
    label6.Caption := 'L = ' + s1 + '   M = ' + s2;
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  f3.Form3.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  f1.Form1.Show;
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: char);
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

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: char);
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

procedure TForm2.Edit3KeyPress(Sender: TObject; var Key: char);
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
    chr(13): button3.SetFocus;
    else
      Key := chr(0);
  end;
 end;

end.
