program sum135;
uses crt;
var s, x, n: integer;

begin
  textbackground(white); textcolor(black);
  clrscr;
  x:= 1;
  read(n);
  while x <= n do  begin
  s := s + x;
  x += 2;
  end;
  clrscr;
  writeln(s);
  readkey();
end.

