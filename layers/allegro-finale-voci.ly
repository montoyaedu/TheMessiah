\version "2.24.0"

% Assemblaggio del finale dell'Allegro (battute 88-98).

finaleNotazione = <<
  \context Voice = "alto"  { \voiceOne \voce "finaleAlto" }
  \context Voice = "medio" { \voiceFour \colore #blue \voce "finaleMedio" }
  \context Voice = "basso" { \voiceTwo \colore #darkgreen \voce "finaleBasso" }
>>

finaleIntavolatura = <<
  \new TabVoice { \voiceOne \voce "finaleAlto" }
  \new TabVoice { \voiceFour \voce "finaleMedio" }
  \new TabVoice { \voiceTwo \voce "finaleBasso" }
>>

% Doppio rigo: alto sopra; medio e basso sotto.
finaleRigoSu  = \new Voice { \oneVoice \voce "finaleAlto" }
finaleRigoGiu = <<
  \new Voice { \voiceOne \colore #blue \voce "finaleMedio" }
  \new Voice { \voiceTwo \colore #darkgreen \voce "finaleBasso" }
>>
