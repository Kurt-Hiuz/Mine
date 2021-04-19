program Circle;

uses crt;

var xr, yr, r, x, y, dist: real;
  n, i, score: integer;

begin
  textbackground(white);
  textcolor(black);
  repeat
  clrscr;
  n := 0;
  score := 0;
  dist := 0;
  writeln('Input x coordinate of the circle');
  read(xr);
  clrscr;
  writeln('Input y coordinate of the circle');
  read(yr);
  clrscr;
  writeln('Input radius');
  read(r);
  writeln('How many times do you want to shoot?');
  read(n);
  clrscr;
  for i := 1 to n do begin
  writeln('Enter x coordinate of point to check if it is in the circle');
  read(x);
  clrscr;
  writeln('Enter y coordinate of point to check if it is in the circle');
  read(y);
  clrscr;
  dist := sqrt(sqr(x-xr)+sqr(y-yr));
  if dist = 0 then begin
  writeln('You got 5 points!');
  score += 5; end
  else if dist <= r/4 then begin
  writeln('You got 4 points!');
  score += 4; end
  else if dist <= r/2 then begin
  writeln('You got 3 points!');
  score += 3; end
  else if dist <= (r - r/4) then begin
  writeln('You got 2 points!');
  score += 2; end
  else if dist <= r then begin
  writeln('You got 1 point!');
  score += 1; end
  else
  writeln('You did not hit');
  writeln(n - i, ' shots remained, you have ', score, ' points.');
  end;
  writeln;
  if score/n = 5 then textcolor(yellow);
  writeln('You have ', score, ' points');
  writeln('Your mark is: ', (score / n):1:0);
  writeln;
  textcolor(black);
  writeln('Do you want to shoot again? Press y if yes.');
  until not (readkey = 'y');
end.

