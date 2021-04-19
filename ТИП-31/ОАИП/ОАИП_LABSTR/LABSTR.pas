program LABstr;
uses crt;

var str, strbuf : string[29];
    guess, miss : string[10];
    i, m, spoint, n : integer;
    c : char;

begin
  textbackground(lightgray); textcolor(black);
  
  repeat
  clrscr;
  str := 'старый друг лучше новых двух '; //Исходная строка
  
  repeat
  writeln('Выберите, какое слово пропустить, чтобы проверить программу (В фразе 5 слов):');
  read(m);
  clrscr;
  until (m > 0) and (m < 6);
  
  case m of //Определение удаляемого слова
    1: miss := 'старый';
    2: miss := 'друг';
    3: miss := 'лучше';
    4: miss := 'новых';
    5: miss := 'двух';
  end;
  
  spoint := pos(miss, str);
  
  if m = 1 then //Для корректного удаления первого слова
    delete(str, spoint, length(miss)+1)
  else
    delete(str, spoint-1, length(miss)+1);

  repeat
  textcolor(green); writeln(str); textcolor(black);
  writeln;
  
  writeln('В фразе пропущено слово.');
  write('Угадайте, какое, и напишите его: ');
  textcolor(green);
  readln;
  read(guess);
  textcolor(black);
  clrscr;
  until lowercase(guess) = lowercase(miss);
  
  n := 1; strbuf := '';
  insert(n.ToString, strbuf, 1);
  insert('^', str, 1);
  for i := 1 to length(str) do
    if str[i] = ' ' then begin
      delete(str, i, 1);
      insert('^', str, i);
      n += 1;
      insert(n.ToString, strbuf, i);
      end
    else strbuf += ' ';
  
  repeat
  textcolor(green);
    writeln(strbuf);
    writeln(str);
  textcolor(black);
  
  writeln;
  write('Введите номер места, в котором пропущено это слово: ');
  textcolor(green); read(n);
  clrscr;
  until n = m;
  
  textcolor(black);
  writeln('Старый друг лучше новых двух.');
  writeln('Вы молодцы! Если хотите повторить, нажмите Д');
  c := readkey;
  until not (c = 'д') and not (c = 'Д');
end.