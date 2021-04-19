program Godalet;
uses crt;
var n: integer;

begin
  repeat
  repeat
  writeln('Vvedite vosrast)');
    clrscr;
  read(n);
  until n>=0;
  case n mod 100 of
  11..14: writeln('Mne ', n, ' let');
  else
    case n mod 10 of
  1: writeln('Mne ',n, ' god.');
  2..4: writeln('Mne ',n, ' goda.');
  5..9: writeln('Mne ',n, ' let.');
  end;
  end;

  until readkey = 'n';
end.

