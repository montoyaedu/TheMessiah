\version "2.24.0"

accordiCorrenti = "comfortAccordi"   % layer di accordi usato da \voce qui sotto

% Quattro voci su un rigo: il canto in alto, i violini, gli accordi, il basso.
comfortNotazione = <<
  \context Voice = "canto" { \voiceOne \colore #red \voce "comfortCanto" }
  \context Voice = "alto"  { \voiceThree \voce "comfortAlto" }
  \context Voice = "medio" { \voiceFour \colore #blue \voce "comfortMedio" }
  \context Voice = "basso" { \voiceTwo \colore #darkgreen \voce "comfortBasso" }
>>

comfortIntavolatura = <<
  \new TabVoice { \voiceOne \voce "comfortCanto" }
  \new TabVoice { \voiceThree \voce "comfortAlto" }
  \new TabVoice { \voiceFour \voce "comfortMedio" }
  \new TabVoice { \voiceTwo \voce "comfortBasso" }
>>
