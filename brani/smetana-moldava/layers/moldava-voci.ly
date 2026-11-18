\version "2.24.0"

accordiCorrenti = "moldavaArmonia"

% Il canto ha i gambi in giu' (pollice); onda e accordi in su.
moldavaNotazione = <<
  \context Voice = "sopra" { \voiceOne \colore #blue \voce "moldavaSopra" }
  \context Voice = "canto" { \voiceTwo \colore #red \voce "moldavaCanto" }
  \context Voice = "basso" { \voiceFour \colore #darkgreen \voce "moldavaBasso" }
>>

% Indicazioni per l'esecuzione, scritte nel punto in cui servono.
moldavaIndicazioni = {
  s2._\markup \italic "V pos. – arm. VII ⑤"   % Intro 1
  s2.
  s2._\markup \italic "arm. V ⑤"              % 3
  s2._\markup \italic "arm. VII ⑤"            % 4
  s2._\markup \italic "arm. VII ⑥"            % 5
  s2._\markup \italic "VII ⑤"
  s2._\markup \italic "VII ⑥"
  s2._\markup \italic "VII ⑤"
  s2._\markup \italic "il canto sulla ④, col pollice"   % A
  s2.*15
  s2.*8
  s2._\markup \italic "arm. VII ②①"           % Coda 9
  s2.*8
  s2._\markup \italic "arm. XII ③②①"          % Fine
}
