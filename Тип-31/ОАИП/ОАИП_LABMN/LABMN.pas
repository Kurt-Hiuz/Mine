program LABMN;

uses crt;

var
  str: string[100];
  i: integer;
  c: char;
  
  mn: set of char;

begin
  repeat
  textcolor(black); textbackground(lightgray); clrscr;
  mn := [];
  writeln('Введите строку для анализа (максимальный размер - 100 символов):');
  textcolor(green); read(str); textcolor(black);
  readln;
  clrscr;
  
  for i := 1 to ord(str[0]) do
    mn := mn + [str[i]];
  
  mn *= ['A'..'z', 'А'..'я', '0'..'5'];
  
  if mn = [] then
    writeln('Введена пустая строка или в ней не используется латиница, кирилица или цифры от 0 до 5')
  else begin
    writeln('Буквы, использованные в тексте:');
    for c := 'A' to 'z' do
      if c in mn then write(c);
    for c := 'А' to 'я' do
      if c in mn then write(c);
    
    writeln;
    writeln('Цифры от 0 до 5, использованные в тексте:');
    for c := '0' to '5' do
      if c in mn then write(c);
  
  end;
  
  writeln;
  writeln('Для завершения программы нажмите 0, другие клавиши для повтора.');
  c := readkey;
  until (c = '0');
end.