program Task1;

uses math, crt;

var n, i, k, c: integer;
  sum, x: real;

begin
  sum := 0;
  writeln('������� ���������� �������� � ������������������ 1');
  read(n);
  clrscr;
  writeln('������� ����� x');
  read(x);
  clrscr;
  for i := 1 to n do
  sum += power(x, i)/power(sin(x), i);
  writeln('����� = ', sum:1:5);
  readkey();
  clrscr;

  sum := 0;
  writeln('������� ���������� �������� � ����������������� 2');
  read(n);
  clrscr;
  for i:= 1 to n do
  sum += 1/i * (i+1);

  writeln('����� = ', sum:1:5);
  readkey;
  clrscr;

  sum := 0;
  writeln('������� ���������� ��������  ������������������ 3');
  read(n);
  clrscr;
  for i := 1 to n do begin
  for k := 1 to i do
  c *= k;

  sum += 1/c;
  end;
  writeln('����� = ', sum:1:8);
  readkey;

end.

