program sI;
uses crt;
  var n, x, i: integer;
begin
  writeln('Vvedite chislo n v formule s = 1+2+3+...+n');
  read(n);
  clrscr;
  for i:= 1 to n do
  x += i;
  writeln('sum = ', x);
  readkey();
end.

