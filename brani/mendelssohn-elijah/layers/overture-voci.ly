\version "2.24.0"

accordiCorrenti = "elijahAccordi"   % (non ancora scritti)

elijahNotazione = <<
  \context Voice = "risposta" { \voiceOne \colore #red \voce "elijahRisposta" }
  \context Voice = "soggetto" { \voiceTwo \colore #blue \voce "elijahSoggetto" }
>>
