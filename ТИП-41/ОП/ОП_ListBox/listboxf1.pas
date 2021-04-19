unit ListBoxF1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    ListBox1: TListBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}



{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  ListBox1.Items.LoadFromFile('ListDoc.txt');
  ListBox1.ItemIndex := 0;
  ComboBox1.Items.Add('Поэты');
  ComboBox1.Items.Add('Композиторы');
  ComboBox1.Items.Add('Писатели');
  ComboBox1.ItemIndex := 0;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

  Memo1.Lines.Add(ListBox1.Items[ListBox1.ItemIndex]);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  NewItem: string;
begin
  NewItem := InputBox('Добавление нового человека','Введите имя.','');
  if not (NewItem = '') then
    ListBox1.Items.Add(NewItem);
  ListBox1.Items.SaveToFile('ListDoc.txt');
end;

procedure TForm1.Button3Click(Sender: TObject);
var i: integer;
begin
  for i := ListBox1.Items.Count - 1 downto 0 do
    ListBox1.Items.Delete(i);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

end.
