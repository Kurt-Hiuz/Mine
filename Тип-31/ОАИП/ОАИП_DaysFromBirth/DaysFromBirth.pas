program DaysFromBirth;
uses crt, sysutils;
var byear: integer;
  bmonth, bday, maxday: byte;
  y, m, d: word;
  day1, day2:longint;
  rightData:boolean;

begin
  decodedate(Date, y, m, d); //Разбиение настоящей даты на переменные
  textcolor(black); textbackground(white); clrscr; //Оформление

  repeat  //Получение года рождения
  writeln('Your date of birth: ??/??/??');
  writeln('Input year of birth');
  read(byear); clrscr;
  rightData := true;
  if (byear <= 0) then begin
    textcolor(red); writeln('Incorrect input: year cant be negative or be zero');
    textcolor(black); rightData := false;
  end;
  if (byear > y) then begin
    textcolor(red); writeln('Incorrect input: your date of birth is in the future');
    textcolor(black); rightData := false;
  end;
  until rightData;

  repeat //Получение месяца рождения
  writeln('Your date of birth: ??/??/', byear);
  writeln('Input month of birth (number from 1 to 12)');
  read(bmonth); clrscr;
  rightData := true;
  if (bmonth <= 0) or (bmonth > 12) then begin
    textcolor(red); writeln('Incorrect input: month must be from 1 to 12');
    textcolor(black); rightData := false;
  end;
  if (byear = y) and (bmonth > m) then begin
    textcolor(red); writeln('Incorrect input: your date of birth is in the future');
    textcolor(black); rightData := false;
  end;
  until rightData;

  case bmonth of //Рассчет последнего дня месяца с учетом високосного года
    1,3,5,7,8,10,12: maxday := 31;
    4,6,9,11: maxday := 30;
    2: if (byear mod 4 = 0) then maxday := 29 else maxday := 28;
  end;

  repeat //Получение дня рождения
  writeln('Your date of birth: ??/', bmonth, '/', byear);
  writeln('Input day of birth');
  read(bday); clrscr;
  rightData := true;
  if (bday <= 0) or (bday > maxday) then begin
    textcolor(red); writeln('Incorrect input: there are ', maxday, ' days in this month');
    textcolor(black); rightData := false;
  end;
  if (bday > d) and (byear = y) and (bmonth = m) then begin
    textcolor(red); writeln('Incorrect input: your date of birth is in the future');
    textcolor(black); rightData := false;
  end;
  until rightData;

  //Вывод полученных данных
  writeln('Your date of birth: ', bday, '/', bmonth, '/', byear);
  writeln('Today is (DD/MM/YY): ', d, '/', m, '/', y);

  //Рассчет разницы дат в днях (Действителен примерно до 5 876 458 года)
  //из-за переполнения переменной типа longint
  case bmonth - 1 of
    3,4: day1 := 30*bmonth;
    1,5,6: day1 := 30*bmonth + 1;
    2: day1 := 59;
    7: day1 := 212;
    8,9: day1 := 30*bmonth + 3;
    10,11: day1 := 30*bmonth + 4;
  end;
  day1 += bday + 365*(byear-1) + ((byear-1) div 4);

  case m - 1 of
    3,4: day2 := 30*m;
    1,5,6: day2 := 30*m + 1;
    2: day2 := 59;
    7: day2 := 212;
    8,9: day2 := 30*m + 3;
    10,11: day2 := 30*m + 4;
  end;
  day2 += d + 365*(y-1) + ((y-1) div 4);
  day2 -= day1; //Используется та же переменная для экономии памяти

  writeln;
  writeln('Full days between these dates: ', day2);

  readkey;
  readkey;
  readkey;
end.

