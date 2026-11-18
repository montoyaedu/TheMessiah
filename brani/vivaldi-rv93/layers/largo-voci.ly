\version "2.24.0"

accordiCorrenti = "largoAccordi"   % layer di accordi usato da \voce qui sotto

% Riduzione per chitarra sola: la parte del liuto sopra, il basso ridotto sotto.
largoChitarraNotazione = <<
  \context Voice = "liuto" { \voiceOne \voce "largoLiuto" }
  \context Voice = "basso" { \voiceTwo \colore #darkgreen \voce "largoChitarraBasso" }
>>

largoChitarraIntavolatura = <<
  \new TabVoice { \voiceOne \voce "largoLiuto" }
  \new TabVoice { \voiceTwo \voce "largoChitarraBasso" }
>>
