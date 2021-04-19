program files;

uses crt;

type
  numsqr = array[1..2] of real;

var
  f: file of numsqr;
  fpath: string[50];
  buf: numsqr;
  c: char;

procedure wr;
var
  i, n: integer;
begin
  assign(f, fpath + 'ffile.dat');
  rewrite(f);
  repeat
    writeln('Введите количество чисел и их квадратов, которые нужно записать в файл');
    read(n);
    clrscr;
  until n > 0;
  for i := 1 to n do
  begin
    writeln('Введите число для возведения в квадрат и запоминания');
    read(buf[1]);
    buf[2] := buf[1] * buf[1];
    clrscr;
    write(f, buf);
  end;
  close(f);
end;

procedure rd;
var
  i: integer;
begin
  if (fileexists(fpath + 'ffile.dat')) then begin
    assign(f, fpath + 'ffile.dat');
    reset(f);
    writeln('Обнаружен файл ffile.dat в каталоге ', fpath);
    writeln('В файле записаны следующие числа и их квадраты:');
    while not eof(f) do
    begin
      read(f, buf);
      writeln('Число: ', buf[1], ' Квадрат: ', buf[2]);
    end;
    close(f);
  end
  else writeln('Отсутствует файл для чтения. Создайте его в первом пункте меню.');
  readkey;
end;

begin
  fpath := 'F:\Data\';
  repeat
    clrscr;
    writeln('Меню работы с файлами');
    writeln('1: Создать файл');
    writeln('2: Прочитать файл');
    writeln('0: Выход');
    c := readkey;
    clrscr;
    case c of
      '1': wr;
      '2': rd;
    end;
  until c = '0';  
end.