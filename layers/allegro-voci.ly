\version "2.24.0"

% Assemblaggio delle voci dell'Allegro: direzione dei gambi, colori,
% e la versione per intavolatura. Le note arrivano da music/allegro.ly.
% Le voci hanno un nome, cosi' i layer di ritocchi possono raggiungerle.

allegroNotazione = <<
  \context Voice = "violinoA" { \voiceOne \voce "violinoA" }
  \context Voice = "violinoB" { \voiceTwo \colore #red \cordeSotto \voce "violinoB" }
  \context Voice = "viola"    { \voiceThree \colore #blue \shiftOff \stemDown \voce "viola" }
  \context Voice = "bassi"    { \voiceFour \colore #darkgreen \shiftOff \stemDown \voce "bassi" }
>>

allegroIntavolatura = <<
  \new TabVoice { \voiceOne \voce "violinoA" }
  \new TabVoice { \voiceTwo \voce "violinoB" }
  \new TabVoice { \voiceThree \voce "viola" }
  \new TabVoice { \voiceFour \voce "bassi" }
>>

% Doppio rigo (chiave di violino + chiave di basso, altezze reali).
allegroRigoSu = <<
  \new Voice { \voiceOne \voce "violinoA" }
  \new Voice { \voiceTwo \colore #red \cordeSotto \voce "violinoB" }
>>
allegroRigoGiu = <<
  \new Voice { \voiceOne \colore #blue \voce "viola" }
  \new Voice { \voiceTwo \colore #darkgreen \voce "bassi" }
>>

allegroDinamiche = { s1\mf s1*10 }
