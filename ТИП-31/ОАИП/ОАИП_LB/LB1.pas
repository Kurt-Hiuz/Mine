program LB1;
uses math, crt;

var k: integer;
  a, s, x: real;

begin
  writeln('������� ����� ��� ����������� � �������������� ����������');
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
  writeln('����� ���������� ����� ', s:1:8);
  readkey;
end.

