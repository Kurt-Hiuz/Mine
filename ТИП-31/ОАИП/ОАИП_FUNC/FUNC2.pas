program Func2;
uses crt;

type m = array[1..20] of real;

var a,b:m;
    max1,max2, sum: real;
    

procedure Input(var c: m; n:integer);
var i: integer;

begin
    for i := 1 to n do begin
      writeln('Введите ', i, ' элемент массива размера ', n,':');
      read(c[i]);
      clrscr;
      end;
end;

procedure Output(var c: m; n:integer);
var i: integer;

begin
    for i := 1 to n do begin
      writeln(i, ' Элемент: ', c[i]);
      end;
end;

function max(var c:m; n:integer):real;
var i:integer;
    m : real;

begin
  m := c[1];
  for i := 2 to n do begin
    if m < c[i] then m := c[i];
  end;
  max := m;
end;


begin
  textcolor(black); textbackground(lightgray); clrscr;
  input(a,5);
  input(b,4);
  writeln('Массив А:');
  output(a,5);
  writeln();
  writeln('Массив Б:');
  output(b,4);
  writeln();
  max1 := max(a,5);
  max2 := max(b,4);
  sum := max1 + max2;
  writeln('Сумма максимумов = ', sum);
end.