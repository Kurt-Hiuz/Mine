program Task1;

uses math, crt;

var n, i, k, c: integer;
  sum, x: real;

begin
  sum := 0;
  writeln('¬ведите количество операций в последовательности 1');
  read(n);
  clrscr;
  writeln('¬ведите число x');
  read(x);
  clrscr;
  for i := 1 to n do
  sum += power(x, i)/power(sin(x), i);
  writeln('—умма = ', sum:1:5);
  readkey();
  clrscr;

  sum := 0;
  writeln('¬ведите количество операций в последовательости 2');
  read(n);
  clrscr;
  for i:= 1 to n do
  sum += 1/i * (i+1);

  writeln('—умма = ', sum:1:5);
  readkey;
  clrscr;

  sum := 0;
  writeln('¬ведите количество операций  последовательности 3');
  read(n);
  clrscr;
  for i := 1 to n do begin
  for k := 1 to i do
  c *= k;

  sum += 1/c;
  end;
  writeln('—умма = ', sum:1:8);
  readkey;

end.

