program str;
uses crt;

var n,s,o : string[20];
  r : string[80];
  l, i, g : integer;

begin
 g := 0;
 writeln('Введите имя (Только латиница)');
 read(n);
 clrscr;

 writeln('Введите фамилию (Только латиница)');
 readln;
 read(s);
 clrscr;

 writeln('Введите отчество (Только латиница)');
 readln;
 read(o);
 clrscr;

 r := n + ' ' + s + ' ' + o;
 writeln('Приветствуем, ', r, '!');
 r := s + ' ' + n + ' ' + o;
 writeln('Или мне звать вас ', r, '?');

 l := ord(r[0]);
 writeln('Длина полного имени без учета пробелов: ', l - 2);
 for i := 1 to l do begin
   case r[i] of
   'w','e','y','u','i','o','a',
   'W','E','Y','U','I','O','A': g += 1;
 end;
 end;
 writeln;
 writeln('Гласных букв: ', g);
 readkey;
end.

