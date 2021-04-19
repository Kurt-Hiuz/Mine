unit project19f2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 2 to 5 do
    ComboBox1.Items.Add(i.ToString());
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
var
  i: integer;
  s: string;
begin
  ListBox1.Items.LoadFromFile('Records.txt');
  for i := ListBox1.Items.Count - 1 downto 0 do
  begin
    s := ListBox1.Items[i];
    label2.Caption:= s.Remove(0, s.Length - 3);
    if not (s[2] = ComboBox1.Text) then
      ListBox1.Items.Delete(i);
  end;
end;

end.
