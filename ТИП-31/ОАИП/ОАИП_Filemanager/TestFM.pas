uses FM, crt;
begin
  textcolor(black); textbackground(lightgray); clrscr;
  startSetting;
  
  path := 'PSLBData\';
  
  repeat
    menu;
  until c = '0';
end.