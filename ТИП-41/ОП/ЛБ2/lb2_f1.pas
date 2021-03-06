unit LB2_F1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function CheckData(comboBox: TComboBox; path: string): boolean;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

uses LB2_F2;

{$R *.lfm}

{ TForm1 }

function TForm1.CheckData(comboBox: TComboBox; path: string): boolean;
begin
  comboBox.Enabled := FileExists(path);
  if not comboBox.Enabled then
    Form1.Label3.Caption :=
      'Похоже, некоторые данные отсутствуют. Вы можете добавить их с помощью вкладки "Редактирование" ниже.';
  CheckData := comboBox.Enabled;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CreateDir('Files');
  if not CheckData(ComboBox1, 'Files/Countries.txt') then
    ComboBox1.Items.SaveToFile('Files/Countries.txt')
  else
    ComboBox1.Items.LoadFromFile('Files/Countries.txt');

  ComboBox1.ItemIndex := 0;

  if ComboBox1.Items.Count = 0 then
    ComboBox1.Enabled := False;

  CheckData(ComboBox2, 'Files/' + ComboBox1.Text + '.txt');
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.Show;
  Form1.Hide;
end;

end.
