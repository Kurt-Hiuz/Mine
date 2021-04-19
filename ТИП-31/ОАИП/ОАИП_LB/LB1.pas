program LB1;
uses math, crt;

var k: integer;
  a, s, x: real;

begin
  writeln('Введите число для подстановки в арифметическую прогрессию');
  read(x);
  clrscr;
  s := 0;
  a := x;
  k := 2;
  repeat
    a *= x;
    s += a + 1/ ln(k);
    k += 1;
  until k > 9;
  writeln('Сумма прогрессии равна ', s:1:8);
  readkey;
end.

