program DZREC;
uses crt;

type rec = record
  name : string;
  bdate : string;
  gender : char;
  city : string;
  experience : integer;
  end;
  
var man : array[1..13] of rec;
    freein : set of integer;
    index : integer;
    c : char;
    

//Параметры экрана: 120 на 30

procedure draw; begin //Процедура отрисовки экрана
  var i, k: integer;
  //Рисование рамки
  write('┌');
  for i := 1 to 118 do write('─');
  writeln('┐');
  for i := 2 to 29 do begin
    gotoxy(1,i); write('│');
    gotoxy(120,i); write('│');
  end;
  write('└');
  for i := 1 to 118 do write('─');
  write('┘'); gotoxy(120,1);
  gotoxy(2,27);
  for i := 1 to 118 do write('─');
//Рисование вертикальных линий
  gotoxy(33,1);write('┬'); gotoxy(48,1);write('┬'); gotoxy(56,1);write('┬');
  gotoxy(82,1);write('┬');
  gotoxy(33,27);write('┴'); gotoxy(48,27);write('┴'); gotoxy(56,27);write('┴');
  gotoxy(82,27);write('┴');
  i := 33;
  for k := 2 to 26 do begin
    gotoxy(i,k); write('│');
  end;
  i := 48;
  for k := 2 to 26 do begin
    gotoxy(i,k); write('│');
  end;
  i := 56;
  for k := 2 to 26 do begin
    gotoxy(i,k); write('│');
  end;
  i := 82;
  for k := 2 to 26 do begin
    gotoxy(i,k); write('│');
  end;
//Рисование горизонтальных линий 
  k := 3;
  repeat
    gotoxy(1,k);
    for i := 1 to 120 do write('─');
    gotoxy(1,k);write('├');
    gotoxy(33,k);write('┼'); gotoxy(48,k);write('┼'); gotoxy(56,k);write('┼');
    gotoxy(82,k);write('┼'); gotoxy(120,k);write('┤');
    k += 2;
  until k > 26;

//Заполнение данными
//Выводит только имеющиеся записи
textcolor(green);
gotoxy(2,2); write('Имя работника');
gotoxy(34,2); write('Д. рождения');
gotoxy(49,2); write('Пол');
gotoxy(57,2); write('Место работы');
gotoxy(83,2); write('Стаж в годах');
textcolor(white);
   for i := 1 to 12 do begin
     if not (man[i].name = '') then begin
     k := i * 2 + 2;
     gotoxy(2,k);write(man[i].name); gotoxy(34,k);write(man[i].bdate);
     gotoxy(49,k);write(man[i].gender); gotoxy(57,k);write(man[i].city);
     gotoxy(83,k);write(man[i].experience);
     end;
   end;
   
  textcolor(yellow);gotoxy(3,30);write('Нажмите 0, чтобы редактировать таблицу');
  textcolor(white);
  gotoxy(120,30);
end;

procedure free; begin //Вывод свободных индексов в множестве
  for f: integer := 1 to 13 do
    if f in freein then write(f, ' ');
  writeln;
end;

begin //Начало программы
  freein := [1..12];
  
  repeat;
      clrscr;
      repeat
      writeln('Введите индекс работника. Максимум работников: 12');
      writeln('При вводе занятого индекса данные перезапишутся');
      writeln('Свободные индексы: ');
      free;
      read(index); freein -= [index]; readln; //Занимает индекс и убирает его из множества свободных
      clrscr;
      until (index > 0) and (index < 13);
      man[index].name := '';
      repeat
      writeln('Введите имя работника (максимальная длина: 31 символ):');
      read(man[index].name); readln;
      clrscr;
      until not (man[index].name = '') and (length(man[index].name)<32);
      writeln('Введите дату рождения работника в формате ДД.ММ.ГГГГ:');
      read(man[index].bdate); readln;
      clrscr;
      writeln('Нажмите М, если работник мужчина, или Ж, если женщина (убедитесь, что включена русская раскладка):');
      repeat
        c := readkey;
      until (c='м')or(c='М')or(c='ж')or(c='Ж');
      man[index].gender := UpperCase(c);
      clrscr;
      repeat
      writeln('Введите город, в котором человек работает (максимум 25 символов):');
      read(man[index].city); readln;
      clrscr;
      until length(man[index].city) < 26;
      repeat
      writeln('Введите стаж работника в целых годах:');
      read(man[index].experience); readln;
      clrscr;
      until man[index].experience > -1;
    
    draw;
    
    c := readkey;
    until not (c = '0');
end.