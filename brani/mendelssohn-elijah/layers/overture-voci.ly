\version "2.24.0"

accordiCorrenti = "elijahAccordi"   % (non ancora scritti)

elijahNotazione = <<
  \context Voice = "risposta" { \voiceOne \colore #red \voce "elijahRisposta" }
  \context Voice = "soggetto" { \voiceTwo \colore #blue \voce "elijahSoggetto" }
  \context Voice = "basso"    { \voiceFour \colore #darkgreen \voce "elijahBasso" }
>>

elijahIntavolatura = <<
  \new TabVoice { \voiceOne \voce "elijahRisposta" }
  \new TabVoice { \voiceTwo \voce "elijahSoggetto" }
  \new TabVoice { \voiceFour \voce "elijahBasso" }
>>
