program SimonyanLBArr;
uses crt;

type arr = array[1..15] of real;

  var a, b : arr;
    f : boolean;
    n, i, k: integer;
    r: real;

begin
  repeat
  textcolor(black); textbackground(white); clrscr;
  repeat
  writeln('Введите кол-во элементов массива (от 2 до 15 включительно)');
  read(n);
  clrscr;
  until (n > 1) and (n <= 15);

  i := 1;
  repeat
  write('Введите значение элемента массива A[', i, '] : ');
  read(a[i]);
  clrscr;
  i += 1;
  until i > n;

  if a[1] > 0 then
  b[1] := sqrt(a[1])
  else
  b[1] := 0;

  i := 2;
  repeat
  b[i] := a[i] + b[i-1];
  i += 1;
  until i > n;

  writeln('Полученный массив B = [');
  for i := 1 to n - 1 do
  write(b[i]:0:2, ', ');
  write(b[n]:0:2, ']');
  writeln;

  k := 1;
  repeat
  i := 1;
  f := false;
  repeat
  if b[i] > b[i+1] then begin
    r := b[i];
    b[i] := b[i+1];
    b[i+1] := r;

    f := true;
  end;
  i += 1;
  until i > n - k;
  k += 1;
  until (k > 14) or (f = false);

  writeln('Отсортированный по возрастанию массив B = [');
  for i := 1 to n - 1 do
  write(b[i]:0:2, ', ');
  write(b[n]:0:2, ']');
  writeln;
  writeln('Нажмите y, чтобы начать сначала.');
  readkey;
  readkey;
  until not(readkey = 'y');
end.

