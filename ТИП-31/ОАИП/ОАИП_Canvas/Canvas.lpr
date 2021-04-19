program Canvas;

uses crt;

type Display = array[0..110,0..28] of char;

  var c: Display;
    x,y, mx,my, r,xr,yr, sr:integer;

begin
  mx := 110;
  my := 28;

  gotoxy(40, 12);
  writeln('Loading...');
  for y := 0 to my do begin
      for x := 0 to mx do begin
          c[x,y] := '.';
      end;
  end;
  clrscr;

  writeln('r/x/y');
  writeln('Input r');
  read(r);
  clrscr;
  writeln(r, '/x/y');
  writeln('Input x');
  read(xr);
  clrscr;
  writeln(r,'/',xr,'/y');
  writeln('Input y');
  read(yr);
  clrscr;

  gotoxy(40,12);
  writeln('Building...');
  for y := 0 to my do begin
      for x := 0 to mx do begin
          sr := sqr(x-xr) + sqr(y-yr);
          if (sr >= 0) and (sr <= sqr(r)+47) then
          c[x,y] := '@';
      end;
  end;
  clrscr;

  for y := 0 to my do begin
      for x := 0 to mx do begin
          write(c[x,y]);
      end;
      writeln;
  end;
  readkey;
end.

