program Rect;

uses crt;

var a,b,x,y, n: integer;
  r: char;

begin
  n := 0;
  textbackground(white);
  textcolor(black);
  clrscr;
  writeln('Input size of rectangle (height and width)');
  read(a, b);
  repeat
  clrscr;
  writeln('Input coordinates (x, y)');
  read(x, y);
  clrscr;
  if (x < b) or (x < 0) or (y < a) or (y < 0) then begin
  writeln('Point is in the rectangle');
  n += 1;
  end
  else if (x = b) or (y = a) then
  writeln('Point is on the border of rectangle')
  else
    writeln('Point is not in the rectangle');
  writeln();
  writeln('Point was in the rectangle ', n, ' times');
  writeln('Input new point? press y if yes');
  r:= readkey();
  until not (r = 'y');
end.

