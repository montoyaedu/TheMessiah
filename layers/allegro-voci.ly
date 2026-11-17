\version "2.24.0"

% Assemblaggio delle voci dell'Allegro: direzione dei gambi, colori,
% e la versione per intavolatura. Le note arrivano da music/allegro.ly.

allegroNotazione = <<
  { \voiceOne \violinoA }
  \new Voice { \voiceTwo \colore #red \violinoB }
  \new Voice { \voiceThree \colore #blue \shiftOff \stemDown \viola }
  \new Voice { \voiceFour \colore #darkgreen \shiftOff \stemDown \bassi }
>>

allegroIntavolatura = <<
  \new TabVoice { \voiceOne \violinoA }
  \new TabVoice { \voiceTwo \violinoB }
  \new TabVoice { \voiceThree \viola }
  \new TabVoice { \voiceFour \bassi }
>>
