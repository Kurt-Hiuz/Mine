program LB7;

uses crt;

type
  mas = array[1..7, 1..7] of integer;
  nm = array[1..2] of integer;

var
  A, B, C: mas;
  anm, bnm, cnm: nm;

procedure Init(var mx: mas; var mxnm: nm);
var
  i, k: integer;

begin
  repeat
    writeln('Введите количество столбцов матрицы (1-7)');
    read(mxnm[1]);
    clrscr;
  until (mxnm[1] > 0) and (mxnm[1] < 8);
  repeat
    writeln('Введите количество строк матрицы (1-7)');
    read(mxnm[2]);
    clrscr;
  until (mxnm[2] > 0) and (mxnm[2] < 8);
  for i := 1 to mxnm[2] do
    for k := 1 to mxnm[1] do
    begin
      writeln('Введите элемент массива [', k, ',', i, ']');
      read(mx[k, i]);
      clrscr;
    end;
end;

procedure SwapMM(var mx: mas; mxnm: nm);
var
  i, k, k1,i1,k2,i2, max, min: integer;

begin
  max := mx[1, 1];
  min := mx[1, 1];
  k1 := 1; k2 := 1; i1 := 1; i2 := 1;
  for i := 1 to mxnm[2] do
    for k := 1 to mxnm[1] do
      if mx[k, i] < min then begin
        min := mx[k, i];
        k1 := k; i1 := i;
      end
      else if mx[k, i] > max then begin
        max := mx[k, i];
        k2 := k; i2 := i;
      end;
  if not (min = max) then begin
    mx[k2, i2] := min;
    mx[k1, i1] := max;
  end;
end;

procedure Output(mx: mas; mxnm: nm);
var
  i, k: integer;

begin
  for i := 1 to mxnm[2] do
  begin
    for k := 1 to mxnm[1] do
      write(mx[k, i]:5);
    writeln;
  end;
end;


begin
  Writeln('Задайте матрицу А');
  Init(A, anm);
  writeln('Задайте матрицу В');
  init(b, bnm);
  writeln('Задайте матрицу С');
  init(c, cnm);
  writeln('Исходные матрицы:');
  output(a, anm);
  writeln;
  output(b, bnm);
  writeln;
  output(c, cnm);
  writeln('Измененные матрицы (первые найденные максимальное и минимальное значение каждой матрицы поменяны местами):');
  swapmm(a, anm);
  swapmm(b, bnm);
  swapmm(c, cnm);
  output(a, anm);
  writeln;
  output(b, bnm);
  writeln;
  output(c, cnm);
  readkey;
end.