program str;
uses crt;

var n,s,o : string[20];
  r : string[80];
  l, i, g : integer;

begin
 g := 0;
 writeln('������� ��� (������ ��������)');
 read(n);
 clrscr;

 writeln('������� ������� (������ ��������)');
 readln;
 read(s);
 clrscr;

 writeln('������� �������� (������ ��������)');
 readln;
 read(o);
 clrscr;

 r := n + ' ' + s + ' ' + o;
 writeln('������������, ', r, '!');
 r := s + ' ' + n + ' ' + o;
 writeln('��� ��� ����� ��� ', r, '?');

 l := ord(r[0]);
 writeln('����� ������� ����� ��� ����� ��������: ', l - 2);
 for i := 1 to l do begin
   case r[i] of
   'w','e','y','u','i','o','a',
   'W','E','Y','U','I','O','A': g += 1;
 end;
 end;
 writeln;
 writeln('������� ����: ', g);
 readkey;
end.

