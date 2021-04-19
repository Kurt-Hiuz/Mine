program dddddddddd;
type fi = file of integer;
var f : fi;
a, s : integer;

begin
assign(f, 'data.dat');
rewrite(f);

while not eof do
begin
readln(a);
if a <> 0 then
if fileexists('data.dat') then
write(f, a)
else
end;

reset(f);
s := 0;
while not eof(f) do
begin
if fileexists('data.dat') then
read(f, a)
else
exit;

if a > 0 then
s := s + a;
end;

write(f, s);

reset(f);
writeln('Содержимое файла:');
while not eof(f) do
begin
if fileexists('data.dat') then
read(f, a)
else
exit;
write(a, ' ');
end;

close(f);
end.