unit StringGridF1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
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
var
  Col, Row: integer; // Col – колонка (столбец), Row - строка
begin
  StringGrid1.ColCount := 11;
  StringGrid1.RowCount := 11;
  for Col := 1 to StringGrid1.ColCount - 2 do
    for Row := 1 to StringGrid1.RowCount - 2 do
      StringGrid1.Cells[Col, Row] :=
        ' ( ' + IntToStr(Col) + ' , ' + IntToStr(Row) + ' ) ';

  for col := 0 to StringGrid1.ColCount - 2 do
    StringGrid1.Cells[Col, 0] := IntToStr(Col);
  for row := 0 to StringGrid1.RowCount - 2 do
    StringGrid1.Cells[0, Row] := IntToStr(Row);

  StringGrid1.Width := StringGrid1.DefaultColWidth * StringGrid1.ColCount +
    StringGrid1.GridLineWidth * (StringGrid1.ColCount + 1) - 9;
  StringGrid1.Height := StringGrid1.DefaultRowHeight * StringGrid1.RowCount +
    StringGrid1.GridLineWidth * (StringGrid1.RowCount + 1) - 9;
  Form1.Height := StringGrid1.Height + 80;
  Form1.Width := StringGrid1.Width + 15;

   for Col := 1 to StringGrid1.ColCount - 2 do
    for Row := 1 to StringGrid1.RowCount - 2 do
      StringGrid1.Cells[Col, Row] := IntToStr(Random(10));
end;

procedure TForm1.Button1Click(Sender: TObject);
var sum, col, row : integer;
begin
    for Col := StringGrid1.Selection.Left to StringGrid1.Selection.Right - 1 do
    for Row := StringGrid1.Selection.Top to StringGrid1.Selection.Bottom - 1 do
      sum += StrToInt(StringGrid1.Cells[Col, Row]);
    StringGrid1.Cells[StringGrid1.ColCount - 1, StringGrid1.RowCount - 1] := IntToStr(sum);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

end;

procedure TForm1.StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  Label1.Caption := ' Лев.верх. ( ' + IntToStr(StringGrid1.Selection.Left) +
    ' , ' + IntToStr(StringGrid1.Selection.Top) + ' ) – Прав.ниж.. ( ' +
    IntToStr(StringGrid1.Selection.Right) + ' , ' +
    IntToStr(StringGrid1.Selection.Bottom) + ' )';
end;

end.
