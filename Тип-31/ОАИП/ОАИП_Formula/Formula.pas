Program Formula;

uses Crt, math;

var x, y, r1, r2: real;

begin
  textbackground(white);
  textcolor(black);
  clrscr;
  writeln('Input x in y = (18^(x-1)+ Ln x^4) + (x^2+2)^-1/5');
  writeln('Remember, x must be >= 1');
  repeat
    read(x);
    clrscr;
    if not (x >= 1) then begin
      writeln('Input x in y = (18^(x-1)+ Ln x^4) + (x^2+2)^-1/5');
      textbackground(red);
      textcolor(white);
      writeln('X must be >=1, repeat input');
      textbackground(white);
      textcolor(black);
      end;
  until x >=1;

  r1 := power(18, x-1) + ln(x*x*x*x);
  r2 := power(x*x + 2, -1/5);
  y := r1 + r2;

  writeln('Full answer is ', y);
  writeln('This is about ', y:0:5);
  readkey();
end.
