///{$apptype windows}
program Canvas;

  var c,mx,my:integer;
  
  procedure mousedown(x,y,mb : integer); begin
    setbrushcolor(color.Black);
  end;
  procedure mousemove(x,y,mb : integer); begin
    case random(10) of
    0:setbrushcolor(color.black);
    1:setbrushcolor(color.azure);
    2:setbrushcolor(color.hotpink);
    3:setbrushcolor(color.lime);
    4:setbrushcolor(color.palevioletred);
    5:setbrushcolor(color.maroon);
    6:setbrushcolor(color.white);
    7:setbrushcolor(color.rosybrown);
    8:setbrushcolor(color.orange);
    9:setbrushcolor(color.blue);
    10:setbrushcolor(color.red);
  end;
  end;

begin
  InitWindow(0, 0, ScreenWidth, ScreenHeight, color.Black);
  CenterWindow; maximizewindow;
  
  mx := windowwidth;
  my := windowheight;
  repeat
    onmousemove := mousemove;
    onmousedown := mousedown;
    
  rectangle(0,0,mx,my);
  until false;
end.

