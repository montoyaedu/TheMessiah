\version "2.24.0"

accordiCorrenti = "moldavaArmonia"

% Il canto ha i gambi in giu' (pollice), gli accordi in su.
moldavaNotazione = <<
  \context Voice = "accordi" { \voiceOne \colore #blue \voce "moldavaAccordi" }
  \context Voice = "canto"   { \voiceTwo \colore #red \voce "moldavaCanto" }
  \context Voice = "basso"   { \voiceFour \colore #darkgreen \voce "moldavaBasso" }
>>

moldavaIntavolatura = <<
  \new TabVoice { \voiceOne \voce "moldavaAccordi" }
  \new TabVoice { \voiceTwo \voce "moldavaCanto" }
  \new TabVoice { \voiceFour \voce "moldavaBasso" }
>>
