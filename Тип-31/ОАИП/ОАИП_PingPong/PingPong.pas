program PingPong;
uses crt;

var x,y,x1,y1,vx,vy,vx1,vy1,k: integer;

begin
        textbackground(white);clrscr;
        x := 2; y := 2; vx := 1; vy := 1; k := 1;
        x1 := 40; y1 := 27; vx1 := -1; vy1 := -1;
        repeat
        gotoxy(x, y);
        writeln(' ');
        if (x = 120) or (x = 1) then begin vx *= -1; end;
        if (y = 29) or (y = 1) then begin vy *= -1; end;
        x += vx;
        y += vy;

        gotoxy(x1, y1);
        writeln(' ');
        if (x1 = 120) or (x1 = 1) then begin vx1 *= -1; end;
        if (y1 = 29) or (y1 = 1) then begin vy1 *= -1; end;
        x1 += vx1;
        y1 += vy1;
        k +=1;
        if (k mod 150 = 0) then textbackground(random(6));
        until true = false;
end.
