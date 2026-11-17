\version "2.24.0"

% Assemblaggio delle voci del Grave.

graveNotazione = <<
  \context Voice = "alto"  { \voiceOne \graveAlto }
  \context Voice = "medio" { \voiceFour \colore #blue
                             \set fingeringOrientations = #'(left) \graveMedio }
  \context Voice = "basso" { \voiceTwo \colore #darkgreen \graveBasso }
>>

graveIntavolatura = <<
  \new TabVoice { \voiceOne \graveAlto }
  \new TabVoice { \voiceFour \graveMedio }
  \new TabVoice { \voiceTwo \graveBasso }
>>

% Doppio rigo: alto sopra; medio e basso sotto.
graveRigoSu  = \new Voice { \oneVoice \graveAlto }
graveRigoGiu = <<
  \new Voice { \voiceOne \colore #blue
               \set fingeringOrientations = #'(left) \graveMedio }
  \new Voice { \voiceTwo \colore #darkgreen \graveBasso }
>>

% Prima volta forte, seconda piano.
graveDinamiche = {
  s1_\markup { \dynamic f \italic "  (2ª volta" \dynamic p \italic ")" }
  s1*12
}
