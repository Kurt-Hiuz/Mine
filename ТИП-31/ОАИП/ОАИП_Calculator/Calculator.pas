program Calculator;
uses crt;
var a, b: real;
  c: char;

begin
  repeat
  textcolor(black); textbackground(white); clrscr;
  writeln('Input first number.');
  read(a);
  clrscr;
  writeln('Input second number.');
  read(b);
  clrscr;
  writeln('Input arithmetical operation (+, -, *, /)');
  writeln('For division type d');
  c := readkey;
  clrscr;
  case c of
  '+': begin
  if b < 0 then
    writeln(a:0:6, ' + (', b:0:6, ') = ', (a + b):0:6)
  else writeln(a, ' + ', b:0:6, ' = ', (a + b):0:6)
  end;

  '-': begin
  if b < 0 then
    writeln(a:0:6, ' - (', b:0:6, ') = ', (a - b):0:6)
  else writeln(a:0:6, ' - ', b:0:6, ' = ', (a - b):0:6)
  end;

  '*': begin
  if b < 0 then
    writeln(a:0:6, ' * (', b, ') = ', (a * b):0:6)
  else writeln(a:0:6, ' * ', b:0:6, ' = ', (a * b):0:6)
  end;

  'd', '/': begin
  if b < 0 then
    writeln(a:0:6, ' / (', b:0:6, ') = ', (a / b):0:6)
  else if b = 0 then
    writeln(a:0:6, ' / (', b:0:6, ') = ', 'Invalid operation: can not divide by zero')
  else writeln(a:0:6, ' / ', b:0:6, ' = ', (a / b):0:6)
  end

  else writeln('Invalid operation " ', c, ' "');
  end;
  writeln('Input again? N if no.');
  until readkey = 'n';
end.

