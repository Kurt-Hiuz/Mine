program sim1n;
uses crt;
  var n, i: integer;
    s: real;
begin
  textbackground(white); textcolor(black);
  clrscr();
  s := 0;
  read(n);
  for i:= 1 to n do
    s += 1/i;
  clrscr;
  writeln(s:0:5);
  readkey();
end.

