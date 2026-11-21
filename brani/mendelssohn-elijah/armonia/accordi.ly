\version "2.24.0"
\language "italiano"

% ACCORDI di Elijah, per le sigle e per i colori delle note strutturali.
% NON sono letti dallo spartito: sono DEDOTTI dalle voci trascritte (canto,
% basso e quel che c'e' delle voci interne). Dove le voci interne mancano
% l'accordo e' un'ipotesi. Da verificare all'ascolto.

% ---------- Introduzione: recitativo ----------
elijahRecAccordi = \chordmode {
  %1-2
  re2:m  mi2:dim/re | re1:m |
  %3   "Lord"
  sib1 |
  %4-5  pedale di la
  re4:m/la  la4:7  re4:m/la  sold4:dim7 |
  sold2:dim7        la2 |
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
  la2                 si2:m7.5-/la      |
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
  la2:7               re2:m             |
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
  % ---- 21-38: IPOTESI ricavate da due sole voci (canto e basso)
  %21
  fa2/la              fa4       sol4:7/si |
  %22
  do4.       la8:7/dod   re4:m    do4:7/mi |
  %23
  fa1/la                                |
  %24  il soggetto in la minore
  re4:m/fa   mi4:7    la2:m             |
  %25
  re4:7/fad  re4:m/fa   la2:m/mi        |
  %26
  re4:m      mi4:7    la4:7/dod  re4:m  |
  %27
  re4:m      mi4      si2:7/fad         |
  %28
  mi2:7/sold          la2:m             |
  %29
  re4.:m     mi8:7    la2:m             |
  %30
  la2                 re2:m/la          |
  %31  il soggetto nel basso
  la2:7               re2:m             |
  %32
  sol1:m/re                             |
  %33  il soggetto in sol minore
  re2:7               sol2:m            |
  %34
  sol4:7/si  do4:m    sol4:7/si  do4:m  |
  %35
  sol2:7/si           do2/mi            |
  %36
  do4        do4:7/mi   fa4     do4:7/mi |
  %37
  fa4        fa4:7/la   sib2            |
  %38
  sib1                                  |  %39-77  accordi non ancora scritti
  s1*39
}
