\version "2.24.0"

accordiCorrenti = "moldavaArmonia"

% Con l'opzione  onda = ##t  sotto il tema c'e' l'onda al posto degli accordi.
#(define moldava-sopra
   (if (eq? #t (ly:parser-lookup 'onda)) "moldavaSopraOnda" "moldavaSopra"))

% Il canto ha i gambi in giu' (pollice); onda e accordi in su.
moldavaNotazione = <<
  \context Voice = "sopra" { \voiceOne \colore #blue \voce #moldava-sopra }
  \context Voice = "canto" { \voiceTwo \colore #red \cordeSotto \voce "moldavaCanto" }
  \context Voice = "basso" { \voiceFour \colore #darkgreen \voce "moldavaBasso" }
  % clarinetti e seste dei flauti: solo con l'opzione  seconda = ##t
  \seOpzione #'seconda \context Voice = "seconda" { \voiceTwo \colore #(rgb-color 0.55 0.35 0.75) \voce "moldavaSeconda" }
>>

% Indicazioni per l'esecuzione, scritte nel punto in cui servono.
moldavaIndicazioni = {
  s4._\markup \italic "arm. VII ⑤, poi V pos."  s4  s4^\markup \italic "pizz."   % Intro 1
  s2.*6
  s2.^\markup \italic "(un'ottava sotto i flauti)"   % 8
  s2.*19
  s2.^\markup \italic "(i flauti qui vanno per seste)"   % 28
  s2.*7
  s2.^\markup \italic "(viole e violoncelli)"   % 36
  s2.*3
  s2._\markup \italic "il canto col pollice"   % A
  s2.*15
  s2.*8
  s2._\markup \italic "arm. VII ②①"           % Coda 9
  s2.*8
  s2._\markup \italic "arm. XII ③②①"          % Fine
}
