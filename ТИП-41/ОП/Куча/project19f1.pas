unit Project19F1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, project19f2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  state: integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  i: integer;
  s, s2: string;
  f : boolean;
begin
  label2.Font.Color := clred;
  if not state = 3 then
    Label2.Caption :=
      'Следуйте подсказкам для правилього добавления оценок'
  else
  if not (Edit1.Text = '') then
  begin
    i := 0;
      while i <= ListBox1.Items.Count - 1 do begin
      s := copy(edit1.Text, 0, length(edit1.Text) - 2);
      s2 := copy(ListBox1.Items[i], 0, length(ListBox1.Items[i]) - 2);
      if s2 = s then
      begin
        f := true;
        ListBox1.Items.Delete(i);
      end;
      i += 1;
      end;
  label2.Font.Color := clGreen;
  Label2.Caption :=
    'Успешно добавлено';
  if f then

  ListBox1.Items.Add(Edit1.Text);
  ListBox1.Items.SaveToFile('Records.txt');
  end;
  end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  project19f2.Form2.Show;

  ListBox1.DeleteSelected();

  ListBox1.Items.SaveToFile('Records.txt');
  Label2.Caption :=
    'Записи успешно удалены';
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  case Key of
    '2'..'5': if (state = 1) or (state = 3) then
      begin
        key := chr(0);
      end
      else
        state := 3;
    ' ': if (state = 1) then
        state := 2
      else
        key := chr(0);
    chr(63): if not (state = 1) then
        key := chr(0);
    chr(8): if edit1.Text = '' then
        key := chr(0)
      else if Edit1.Text[Edit1.GetTextLen - 1] = ' ' then
        state := 2
      else
        state := 1;
    else
      key := chr(0);
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  state := 1;
  if FileExists('Records.txt') then
    ListBox1.Items.LoadFromFile('Records.txt')
  else
    ListBox1.Items.SaveToFile('Records.txt');
end;

end.
