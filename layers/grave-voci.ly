\version "2.24.0"

% Assemblaggio delle voci del Grave.

graveNotazione = <<
  \context Voice = "alto"  { \voiceOne \voce "graveAlto" }
  \context Voice = "medio" { \voiceFour \colore #blue \voce "graveMedio" }
  \context Voice = "basso" { \voiceTwo \colore #darkgreen \voce "graveBasso" }
>>

graveIntavolatura = <<
  \new TabVoice { \voiceOne \voce "graveAlto" }
  \new TabVoice { \voiceFour \voce "graveMedio" }
  \new TabVoice { \voiceTwo \voce "graveBasso" }
>>

% Doppio rigo: alto sopra; medio e basso sotto.
graveRigoSu  = \new Voice { \oneVoice \voce "graveAlto" }
graveRigoGiu = <<
  \new Voice { \voiceOne \colore #blue \voce "graveMedio" }
  \new Voice { \voiceTwo \colore #darkgreen \voce "graveBasso" }
>>

% Prima volta forte, seconda piano.
graveDinamiche = {
  s1_\markup { \dynamic f \italic "  (2ª volta" \dynamic p \italic ")" }
  s1*12
}
