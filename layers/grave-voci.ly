\version "2.24.0"

% Assemblaggio delle voci del Grave.

graveNotazioneUnaVolta = <<
  \context Voice = "alto"   { \voiceOne \graveAlto }
  \context Voice = "basso"  { \voiceTwo \colore #blue
                              \set fingeringOrientations = #'(left) \graveBasso }
  \context Voice = "pedale" { \voiceFour \colore #darkgreen \gravePedale }
>>

graveIntavolaturaUnaVolta = <<
  \new TabVoice { \voiceOne \graveAlto }
  \new TabVoice { \voiceTwo \graveBasso }
  \new TabVoice { \voiceFour \gravePedale }
>>

% Il Grave si suona due volte: forte, poi piano.
graveNotazione   = { \graveNotazioneUnaVolta \graveNotazioneUnaVolta }
graveIntavolatura = { \graveIntavolaturaUnaVolta \graveIntavolaturaUnaVolta }
graveDinamiche   = { s1*12\f s1*12\pp }
