program LB6;

uses crt;

type
  Subjects = array[1..5] of String[12];
  Hours = array[1..5] of Integer;
  Student = record
    FIO: String;
    KCHP: Hours;
  end;

var
  subj: Subjects;
  h, lost, posesh,res: hours;
  n, m, k, i, max: integer;
  s: string;
  st: array[1..30] of Student;

  //120 на 30
begin
  textbackground(LightGray); textcolor(black); clrscr;
  
  repeat
    writeln('Введите количество предметов (1-5)');
    read(n);
    clrscr;
  until (n > 0) and (n < 6);
  
  i := 1;
  max := 7;
  repeat
    repeat
      writeln('Введите предмет под номером ', i, ' (не более 12 знаков)');
      readln;
      read(s);
      clrscr;
    until (length(s) < 13) and (length(s) > 0);
    if max < length(s) then max := length(s);
    subj[i] := s;
    repeat
      writeln(s);
      writeln('Введите количество часов по этому предмету (1-666)');
      read(h[i]);
      clrscr;
    until (h[i] > 0) and (h[i] < 667);
    i += 1;
  until i > n;
  
  textcolor(green); write('Предмет':max, '|'); writeln('Часов'); textcolor(black);
  for i := 1 to n do
  begin
    write(subj[i]:max, '|'); writeln(h[i]);
  end;
  writeln('Нажмите любую клавишу, чтобы продолжить');
  readkey;
  clrscr;
  
  repeat
    writeln('Укажите количество человек в группе (1 - 30)');
    read(m);
    clrscr;
  until (m > 0) and (m < 31);
  
  i := 1;
  repeat
    writeln('Введите ФИО студента под номером ', i, ' (максимум 42 символа)');
    gotoxy(1, 4);
    writeln('┌──────────────────────────────────────────╥────────────────────────────────────────────────────────────────┐');
    writeln('│                                          ║            Количество пропущенных часов по предметам           │');
    writeln('│               ФИО студента               ╟────────────┬────────────┬────────────┬────────────┬────────────┤');
    writeln('│                                          ║', subj[1]:12, '│', subj[2]:12, '│', subj[3]:12, '│', subj[4]:12, '│', subj[5]:12, '│');
    writeln('╞══╤═══════════════════════════════════════╬════════════╪════════════╪════════════╪════════════╪════════════╡');
    for max := 1 to m - 1 do
    begin
      writeln('│', max:2, '│', st[max].FIO:39, '║', st[max].KCHP[1]:12, '│', st[max].KCHP[2]:12, '│', st[max].KCHP[3]:12, '│', st[max].KCHP[4]:12, '│', st[max].KCHP[5]:12, '│');
      writeln('├──┼───────────────────────────────────────╫────────────┼────────────┼────────────┼────────────┼────────────┤');
    end;
    writeln('│', m:2, '│', st[m].FIO:39, '║', st[m].KCHP[1]:12, '│', st[m].KCHP[2]:12, '│', st[m].KCHP[3]:12, '│', st[m].KCHP[4]:12, '│', st[m].KCHP[5]:12, '│');
    writeln('└──┴───────────────────────────────────────╨────────────┴────────────┴────────────┴────────────┴────────────┘');
    repeat
      gotoxy(1, 2);
      readln;
      read(s);
      gotoxy(1, 2);
      for max := 1 to length(s) do write(' ');
    until (length(s) < 43) and (length(s) > 0);
    st[i].FIO := s;
    for k := 1 to n do
    begin
      gotoxy(1, 1); for max := 1 to 76 do write(' ');
      gotoxy(1, 1); writeln('Введите кол-во пропущенных часов предмета ', subj[k], ' студента ', st[i].fio);
      repeat
        gotoxy(1, 2);
        read(st[i].KCHP[k]);
        gotoxy(1, 2); write('                                                                    ');
      until (st[i].KCHP[k] <= h[k]) and (st[i].KCHP[k] >= 0);
    end;
    clrscr;
    i += 1;
  until i > m;
  
  writeln('┌──────────────────────────────────────────╥────────────────────────────────────────────────────────────────┐');
  writeln('│                                          ║            Количество пропущенных часов по предметам           │');
  writeln('│               ФИО студента               ╟────────────┬────────────┬────────────┬────────────┬────────────┤');
  writeln('│                                          ║', subj[1]:12, '│', subj[2]:12, '│', subj[3]:12, '│', subj[4]:12, '│', subj[5]:12, '│');
  writeln('╞══╤═══════════════════════════════════════╬════════════╪════════════╪════════════╪════════════╪════════════╡');
  for max := 1 to m - 1 do
  begin
    writeln('│', i:2, '│', st[max].FIO:39, '║', st[max].KCHP[1]:12, '│', st[max].KCHP[2]:12, '│', st[max].KCHP[3]:12, '│', st[max].KCHP[4]:12, '│', st[max].KCHP[5]:12, '│');
    writeln('├──┼───────────────────────────────────────╫────────────┼────────────┼────────────┼────────────┼────────────┤');
  end;
  writeln('│', m:2, '│', st[m].FIO:39, '║', st[m].KCHP[1]:12, '│', st[m].KCHP[2]:12, '│', st[m].KCHP[3]:12, '│', st[m].KCHP[4]:12, '│', st[m].KCHP[5]:12, '│');
  writeln('└──┴───────────────────────────────────────╨────────────┴────────────┴────────────┴────────────┴────────────┘');
  writeln('Нажмите любую клавишу, чтобы продолжить');
  readkey;
  
  clrscr;
  
  for i := 1 to n do
  begin
    for k := 1 to m do
      lost[i] += st[k].KCHP[i];
    posesh[i] := trunc(100*(1-(lost[i]/(h[i]*m))));
    res[1] += h[i]*m;
    res[2] += lost[i];
  end;
  res[3] := trunc(100*(1-(res[2]/res[1])));
  
  
  writeln('┌─────────────────────╥─────────────────╥────────────┐');
  writeln('│                     ║Количество часов ║Посещаемость│');
  writeln('│Наименование предмета╟─────┬───────────╢     %      │');
  writeln('│                     ║Всего│Пропущенных║            │');
  writeln('╞═╤═══════════════════╬═════╪═══════════╬════════════╡');
  for i := 1 to n - 1 do
  begin
    writeln('│', i,'│', subj[i]:19, '║', h[i]*m:5, '│', lost[i]:11, '║', posesh[i]:12, '│');
    writeln('├─┼───────────────────╫─────┼───────────╫────────────┤');
  end;
  writeln('│', n,'│', subj[n]:19, '║', h[n]*m:5, '│', lost[n]:11, '║', posesh[n]:12, '│');
  writeln('╞═╧═══════════════════╬═════╪═══════════╬════════════╡');
  writeln('│Итого по группе:     ║',res[1]:5,'│',res[2]:11,'║',res[3]:12,'│');
  writeln('└─────────────────────╨─────┴───────────╨────────────┘');
  readkey;
end.