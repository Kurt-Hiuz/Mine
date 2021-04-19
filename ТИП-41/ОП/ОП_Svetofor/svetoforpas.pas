unit SvetoforPas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    procedure CirclesLeave(Sender: TObject);
    procedure CircleEnter1(Sender: TObject);
    procedure CircleEnter2(Sender: TObject);
    procedure ircleEnter3(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CircleEnter1(Sender: TObject);
begin
  Shape1.brush.Color := clRed;
  Shape2.brush.Color := clMedGray;
  shape3.brush.Color := clMedGray;
end;

procedure TForm1.CirclesLeave(Sender: TObject);
begin
  Shape1.brush.Color := clMedGray;
  Shape2.brush.Color := clMedGray;
  shape3.brush.Color := clMedGray;
end;

procedure TForm1.CircleEnter2(Sender: TObject);
begin
  Shape1.brush.Color := clMedGray;
  Shape2.brush.Color := clYellow;
  shape3.brush.Color := clMedGray;
end;

procedure TForm1.ircleEnter3(Sender: TObject);
begin
  Shape1.brush.Color := clMedGray;
  Shape2.brush.Color := clMedGray;
  Shape3.brush.Color := clGreen;
end;

end.

