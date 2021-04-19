program Arrr;
uses crt;
type arr = array[1..10, 1..10] of integer;
  rarr = array[1..10] of real;

var A:arr;
    n, m, i, k, max:integer;
    R: rarr;

begin
  textcolor(black); textbackground(white); clrscr;

  max := -10000000;

  repeat
    writeln('Введите количество строк (1-10)');
    read(m);
    clrscr;
  until (m <= 10) and (m >= 1);
  repeat
    writeln('Введите количество столбцов (1-10)');
    read(n);
    clrscr;
  until (n <= 10) and (n >= 1);

  for i:= 1 to n do begin
    for k := 1 to m do begin
    readln(A[k, i]);
    if (A[k,i] > max) then max := A[k,i];
    clrscr;
    end;
  end;

  for i:= 1 to n do begin
  R[i] := 0;
    for k := 1 to m do begin
    write(A[k, i]:2, '  ');
    R[i] += A[k,i];
    end;
    R[i] /= n;
    write('Ср. арифм: ', R[i]:0:3, '. Сумма: ', R[i]*n:0:0);
    writeln;
  end;

  writeln('Максимум матрицы: ', max);
  readkey;
end.

