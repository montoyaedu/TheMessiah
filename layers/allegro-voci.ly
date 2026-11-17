\version "2.24.0"

% Assemblaggio delle voci dell'Allegro: direzione dei gambi, colori,
% e la versione per intavolatura. Le note arrivano da music/allegro.ly.
% Le voci hanno un nome, cosi' i layer di ritocchi possono raggiungerle.

allegroNotazione = <<
  \context Voice = "violinoA" { \voiceOne \violinoA }
  \context Voice = "violinoB" { \voiceTwo \colore #red \violinoB }
  \context Voice = "viola"    { \voiceThree \colore #blue \shiftOff \stemDown \viola }
  \context Voice = "bassi"    { \voiceFour \colore #darkgreen \shiftOff \stemDown \bassi }
>>

allegroIntavolatura = <<
  \new TabVoice { \voiceOne \violinoA }
  \new TabVoice { \voiceTwo \violinoB }
  \new TabVoice { \voiceThree \viola }
  \new TabVoice { \voiceFour \bassi }
>>

allegroDinamiche = { s1*11\mf }
