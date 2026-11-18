\version "2.24.0"

% Assemblaggio del finale dell'Allegro (battute 88-98).

finaleNotazione = <<
  \context Voice = "alto"  { \voiceOne \finaleAlto }
  \context Voice = "medio" { \voiceFour \colore #blue \finaleMedio }
  \context Voice = "basso" { \voiceTwo \colore #darkgreen \finaleBasso }
>>

finaleIntavolatura = <<
  \new TabVoice { \voiceOne \finaleAlto }
  \new TabVoice { \voiceFour \finaleMedio }
  \new TabVoice { \voiceTwo \finaleBasso }
>>
