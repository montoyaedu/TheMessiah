\version "2.24.0"

accordiCorrenti = "allegroUnoAccordi"   % (non ancora scritti)

% Primo movimento per chitarra sola: canto sopra, medio e basso sotto.
allegroUnoNotazione = <<
  \context Voice = "canto" { \voiceOne \voce "allegroUnoCanto" }
  \context Voice = "medio" { \voiceFour \colore #blue \voce "allegroUnoMedio" }
  \context Voice = "basso" { \voiceTwo \colore #darkgreen \voce "allegroUnoBasso" }
>>

allegroUnoIntavolatura = <<
  \new TabVoice { \voiceOne \voce "allegroUnoCanto" }
  \new TabVoice { \voiceFour \voce "allegroUnoMedio" }
  \new TabVoice { \voiceTwo \voce "allegroUnoBasso" }
>>
