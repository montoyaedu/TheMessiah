\version "2.24.0"
\language "italiano"

% MENDELSSOHN, Elijah -- INTRODUZIONE: recitativo di Elia (Grave, re minore)
% Dodici battute che precedono l'Overture e finiscono sul la da cui parte
% il pedale della fuga.
%
%   elijahVoce       la linea di Elia (basso), ad altezza reale: da cantare,
%                    oppure da suonare come melodia
%   elijahTestoRec   il testo inglese
%   elijahRecBasso   un basso da suonare sotto: una nota per armonia
%
% FONTE: spartito Novello (fonti/), pagina 9 del PDF. La voce e' letta nota
% per nota con una griglia delle altezze. Il basso NON e' la riduzione
% dell'accompagnamento: sono le note gravi degli accordi, lette nelle
% battute 1-5 e 11-12 (pedali di re e di la) e DEDOTTE dalla voce e da una
% vista d'insieme nelle battute 7-10. Da verificare.

elijahVoce = {
    \key re \minor
    \time 4/4
    %1
    R1                                                                             |
    %2
    r4                 re4                  fa4                 la4                |
    %3
    re'4.                         re'8      re'4                fa8.      sol16    |
    %4
    la4                la4                  r4                  re8       re16(  mi) |
    %5
    fa4.                          fa8       mi4.\fermata                  la,8     |
    %6
    re4                re8        mi        fa8        sol      la        sib      |
    %7
    do'4.                         do'8      fad4                fad8      fad      |
    %8
    sol4.                         sol8      dod2                                   |
    %9
    R1                                                                             |
    %10
    re'2.                                                       re'4               |
    %11
    la2                                     la4                 la8       la       |
    %12
    la1\fermata                                                                    |
}

elijahTestoRec = \lyricmode {
    As God the Lord of Is -- ra -- el liv -- eth, be -- fore
    whom I stand, there shall not be dew nor rain these years,
    there shall not be dew nor rain,
    but ac -- cord -- ing to my word.
}

elijahRecBasso = {
    \key re \minor
    \time 4/4
    %1   pedale di re
    re2                                     re4                 re4                |
    %2
    re1                                                                            |
    %3
    re1                                                                            |
    %4   pedale di la
    la,1~                                                                          |
    %5
    la,2.\fermata                                               r4                 |
    %6   (la voce da sola)
    R1                                                                             |
    %7   settima di dominante di sol, col do al basso  (dedotto)
    do1                                                                            |
    %8   (dedotto)
    sib,2                                   la,2                                   |
    %9   (dedotto)
    re2                                     sold,2~                                |
    %10
    sold,4             r4                   r2                                     |
    %11  pedale di la
    la,2                                    la,4                la,4               |
    %12
    la,1\fermata                                                                   |
}
