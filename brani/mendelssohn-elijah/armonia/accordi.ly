\version "2.24.0"
\language "italiano"

% ACCORDI di Elijah, per le sigle e per i colori delle note strutturali.
% NON sono letti dallo spartito: sono DEDOTTI dalle voci trascritte (canto,
% basso e quel che c'e' delle voci interne). Dove le voci interne mancano
% l'accordo e' un'ipotesi. Da verificare all'ascolto.

% ---------- Introduzione: recitativo ----------
elijahRecAccordi = \chordmode {
  %1-2
  re1:m | re1:m |
  %3   "Lord"
  sib1 |
  %4-5  pedale di la
  la1 | la1 |
  %6   (la voce sola)
  s1 |
  %7
  re2:7/do            re2:7/fad         |
  %8
  sol2:m              la2:7/dod         |
  %9
  re2:m               sold2:dim7        |
  %10
  sold4:dim7  s2.                       |
  %11
  re2:m/la            la2               |
  %12
  la1                                   |
}

% ---------- Overture ----------
elijahAccordi = \chordmode {
  \partial 8 s8 |
  %1   (solo il semitono la - si bemolle)
  s1 |
  %2   soggetto
  la2:7               re2:m             |
  %3
  sol2:m              re2:m/la          |
  %4
  la2:7               re2:m             |
  %5
  sold1:dim7                            |
  %6   risposta
  mi2:7               la2:m             |
  %7   il basso scende per semitoni
  re4:7/fad  re4:m/fa  la4:m/mi  si4:7/red |
  %8
  mi2:m               la4:7/dod  re4    |
  %9
  sol1:m                                |
  %10  terza entrata
  la2:7               re2:m/la          |
  %11
  sol2:m              la2:7             |
  %12
  la2:7               re2:m             |
  %13
  si1:dim7                              |
  %14  quarta entrata
  mi2:7/sold          la2:m             |
  %15
  re2:m               la2:m             |
  %16
  mi2:7               la2:m             |
  %17
  fa2                 do2               |
  %18
  si1:dim7/re                           |
  %19  il soggetto nel basso
  sib2                do2:7             |
  %20
  fa2                 fa2/do            |
  %21-38  accordi non ancora scritti
  s1*18
}
