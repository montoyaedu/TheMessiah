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
  s4._\markup \italic "arm. VII ⑤, poi V pos."  s4  s4^\markup \italic "pizz."   % Intro 1
  s2.*7
  s2._\markup \italic "il canto sulla ④, col pollice"   % A
  s2.*15
  s2.*8
  s2._\markup \italic "arm. VII ②①"           % Coda 9
  s2.*8
  s2._\markup \italic "arm. XII ③②①"          % Fine
}
