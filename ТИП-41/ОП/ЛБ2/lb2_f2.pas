unit LB2_F2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

uses LB2_F1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.Show;
  Form2.Hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  f: boolean;
  i: integer;
begin
  if not (Edit1.Text = '') then begin
  ListBox1.Items.LoadFromFile('Files/Countries.txt');
  for  i := 0 to ListBox1.Items.Count - 1 do
  begin
    if ListBox1.Items[i] = Edit1.Text then
    begin
      f := True;
      Break;
    end;
  end;
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  if not (ComboBox1.Text = '') then
    ListBox1.Items.LoadFromFile('Files/' + ComboBox1.Text + '.txt')
  else
  begin
    Edit1.Text := '';
    Edit1.TextHint := 'Для добавления города выберите страну ниже';
  end;
end;

procedure TForm2.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Form1.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.LoadFromFile('Files/Countries.txt');
  ComboBox1.ItemIndex := 0;

  if ComboBox1.Items.Count = 0 then
    ComboBox1.Enabled := False;

  LB2_F1.Form1.CheckData(ComboBox2, 'Files/' + ComboBox1.Text + '.txt');
end;

end.
