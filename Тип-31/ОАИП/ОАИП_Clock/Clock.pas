program Clock;
uses crt;

var s, m, h, x, y, vx, vy: integer;

begin
  textbackground(white); textcolor(black); clrscr;
  x := 2; y := 2;
  vx := 1; vy := 1;
  while true do begin
    h := 0; m := 0; s := 0;
   for h := 0 to 23 do begin
    for m := 0 to 59 do begin
      for s := 0 to 59 do begin
        clrscr;
        gotoxy(x, y);
        writeln(h, ':', m, ':', s);
        if (x = 76) or (x = 1) then begin vx *= -1; end;
        if (y = 24) or (y = 1) then begin vy *= -1; end;
        x += vx;
        y += vy;
        delay(1);
      end;
    end;
   end;
  end;

end.

