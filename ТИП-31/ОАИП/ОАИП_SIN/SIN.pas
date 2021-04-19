program SIN;
uses crt;

var x: real;

begin
  textbackground(white); textcolor(black); clrscr;
  x := -2;
  writeln('____________');
  writeln(/
  while x <= 2 do begin
    writeln('| ', x:5:2, ' | ',  sin(x):5:2, ' |');
    x += 0.5;
  end;
  readkey();
end.

