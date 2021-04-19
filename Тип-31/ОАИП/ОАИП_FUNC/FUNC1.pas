program abc;
uses crt;

type mas = array[1..30] of real;

procedure w(var x: mas, n: integer);
  var i: integer;
  
  begin
    for i := 1 to n do
      read(x[i]);
  end;
  
procedure maxim(var max:real, var k:integer, m:mas, n:integer);
  var i: integer;

begin
  max := m[1];
  k := 1;
  for i := 2 to n do
    if max < m[i] then begin
      max := m[i];
      k := i;
      end;
end.

function maxim(m:mas, n:integer) : real;
  var i : integer;
      max : real;

begin
  max := m[1];
  for i := 2 to n do
    if max < m[i] then
      max := m[i];
    
  maxim := max;
end.