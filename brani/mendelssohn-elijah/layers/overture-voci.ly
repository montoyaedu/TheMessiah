\version "2.24.0"

accordiCorrenti = "elijahAccordi"   % (non ancora scritti)

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

% Dinamiche: dove un'entrata e' stata abbassata d'ottava, il forte ne
% simula il registro acuto.
elijahDinamiche = {
  \partial 8 s8\pp
  s1*9
  s1\mf                                   % 10: terza entrata
  s1*3
  s1\f^\markup \italic "(8ª bassa)"       % 14: quarta entrata, abbassata
  s1*3
}

% ---------- Introduzione: recitativo ----------
elijahRecNotazione = <<
  \context Voice = "elia"     { \voiceOne \colore #red \voce "elijahVoce" }
  \context Voice = "recbasso" { \voiceTwo \colore #darkgreen \voce "elijahRecBasso" }
>>

elijahRecIntavolatura = <<
  \new TabVoice { \voiceOne \voce "elijahVoce" }
  \new TabVoice { \voiceTwo \voce "elijahRecBasso" }
>>
