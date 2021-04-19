program SimonyanLB2Arr;
uses crt;

type arr = array [1..15, 1..15] of integer;

var n,m,i,k,row,min: integer;
  Y : arr;

begin
textcolor(black); textbackground(white); clrscr;
repeat
writeln('������� ���������� �������� � ������� (�� 1 �� 15 ������������)');
read(n);
clrscr;
until (n > 0) and (n < 16);
repeat
writeln('������� ���������� ����� � ������� (�� 1 �� 15 ������������)');
read(m);
clrscr;
until (m > 0) and (m < 16);

for k := 1 to m do
  for i := 1 to n do begin
  writeln('������� ������� ������� Y[', i, ',', k, ']');
  read(Y[i,k]);
  clrscr;
  end;

min := abs(Y[1,1]);
row := 1;

k := 1;
repeat
i := 1;
repeat
  if abs(min) > abs(Y[i,k]) then begin
    min := Y[i,k];
    row := k;
  end;
  i += 1;
  until i > n;
  k += 1;
until k > m;

for k := 1 to m do begin
for i := 1 to n do
  write(Y[i,k]:5);
writeln;
end;
writeln;
write('����������� �� ������ ����� ', min);
writeln(' ��������� � ', row, ' ����.');
readkey;
end.

