program LB2;

uses crt;

var x, s, a: real;
  k: integer;

begin
  writeln('������� ����� ��� ����������� � �������������� ����������');
  read(x);
  clrscr;
  s := 1;
  k:= 10;
  repeat
    s *= (x+k)/k;
    k += 1;
  until k > 15;
  writeln('������������ ������ ���������� ����� ', s:1:4);
  readkey;
end.

