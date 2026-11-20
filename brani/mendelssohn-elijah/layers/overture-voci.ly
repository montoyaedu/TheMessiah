\version "2.24.0"

accordiCorrenti = "elijahAccordi"   % layer di accordi usato da \voce qui sotto

elijahNotazione = <<
  \context Voice = "risposta" { \voiceOne \colore #red \voce "elijahRisposta" }
  \context Voice = "soggetto" { \voiceTwo \colore #blue \voce "elijahSoggetto" }
  \context Voice = "basso"    { \voiceFour \colore #darkgreen \voce "elijahBasso" }
  \context Voice = "terza"    { \voiceThree \colore #(rgb-color 0.8 0.45 0) \voce "elijahTerza" }
>>

elijahIntavolatura = <<
  \new TabVoice { \voiceOne \voce "elijahRisposta" }
  \new TabVoice { \voiceTwo \voce "elijahSoggetto" }
  \new TabVoice { \voiceFour \voce "elijahBasso" }
  \new TabVoice { \voiceThree \voce "elijahTerza" }
>>

% Dinamiche per voce. Dalla terza entrata il canto in semicrome resta
% pianissimo, come i violini, mentre il basso esce in mezzoforte.
elijahDinamiche = {
  \partial 8 s8\pp
  s1*9
  s1^\markup { \dynamic pp \italic "il canto, come violini" }
    _\markup { \dynamic mf \italic "il basso" }                % 10: terza entrata
  s1*3
  s1^\markup \italic "(8ª bassa, sempre pp)"                   % 14: quarta entrata
  s1*3
  s1*2
  s1_\markup { \dynamic mf \italic "il soggetto nel basso" }   % 19
  s1
}

% ---------- Introduzione: recitativo ----------
accordiCorrenti = "elijahRecAccordi"

elijahRecNotazione = <<
  \context Voice = "elia"     { \voiceOne \colore #red \voce "elijahVoce" }
  \context Voice = "recbasso" { \voiceTwo \colore #darkgreen \voce "elijahRecBasso" }
>>

elijahRecIntavolatura = <<
  \new TabVoice { \voiceOne \voce "elijahVoce" }
  \new TabVoice { \voiceTwo \voce "elijahRecBasso" }
>>
