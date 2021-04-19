program LB3;

uses crt;

var a, n: integer;
  s: real;

begin
  s := 1;
  a := 0;
  repeat
  CLRSCR;
  writeln('Введите число n в формуле. Данная формула предполагает,');
  writeln('что n должен быть больше или равен 3');
  read(n);
  clrscr;
  until n >= 3;
  a := sqr(n) - 8;
  repeat
  s *= a;
  a -= 1;
  until a < 2;
  writeln('Результат равен ', s:1:0);
  readkey;
end.

