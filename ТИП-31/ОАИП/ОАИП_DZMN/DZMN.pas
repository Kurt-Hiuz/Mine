program DZMN;
uses crt;

var i, gl, sg:integer;
  buf : char;
  str : string;
  ok : boolean;
  m,m1,m2,m3, g,s : set of char;

begin
  repeat
  ok := false;
  writeln('Введите последовательость символов, заканчивающуюся точкой. Программа работает с латинской раскладкой.');
  read(str);
  readln;
  for i := 1 to length(str) do
  if str[i] = '.' then
  ok := true;
  clrscr;
  until ok = true;
  m := ['0','1','2','3','4','5','6','7','8','9']; m2 := [];
  for i := 1 to length(str) do
  if str[i] in m then
   m2 += [str[i]];

  writeln('Цифры, используемые в тексте:');
  for buf := '0' to '9' do
   if buf in m2 then write(buf);
  writeln;

  m1 := []; m2 := []; m3 := [];
  for i := 1 to length(str) do begin
    buf := str[i];
    if buf in m1 then
      if buf in m2 then
        m3 += [buf]
      else m2 += [buf]
    else m1 += [buf];
  end;

  writeln('Цифры, используемые в тексте более двух раз:');
  for buf := '0' to '9' do
   if buf in m3 then writeln(buf);
  writeln;

  gl := 0; sg := 0;
  g := ['w','e','y','u','i','o','a','W','E','Y','U','I','O','A'];
  s := ['q','r','t','p','s','d','f','g','h','j','k','l','z','x','c','v','b','n','m',
  'Q','R','T','P','S','D','F','G','H','J','K','L','Z','X','C','V','B','N','M'];
  for i := 1 to length(str) do
  if str[i] in g then
   gl += 1
  else if str[i] in s then
   sg += 1;

  if gl > sg then
   writeln('Гласных больше')
  else if sg > gl then
   writeln('Согласных больше')
  else writeln('Гласных букв столько же, сколько и согласных');
  readkey;
end.

