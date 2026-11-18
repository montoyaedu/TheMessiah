\version "2.24.0"
\language "italiano"

% SMETANA, Vltava (La Moldava) -- il tema principale, 16 battute.
% ESPERIMENTO per chitarra sola alla maniera del Preludio n. 1 di
% Villa-Lobos: il canto tutto sulla QUARTA CORDA (e sulla quinta nei punti
% piu' gravi), suonato col pollice; sopra, accordi leggeri sulle corde
% acute, a vuoto dove l'armonia lo permette; bassi a vuoto.
% Altezze reali, accordatura normale, mi minore come l'originale
% (il canto sta due ottave sotto i violini).
%
%   moldavaCanto     il tema
%   moldavaAccordi   l'accompagnamento sulle corde 3-2-1
%   moldavaBasso     i bassi, solo dove cadono su una corda a vuoto o vicina
%
% STATO: prima prova, scritta a tavolino; il tema e' riscontrato con una
% riduzione pubblica, le posizioni sono calcolate ma non provate.

moldavaCanto = {
    \key mi \minor
    \time 6/8
    \partial 8
    si,8                                                                         |
    %1
    mi4        fad8       sol4       la8                                         |
    %2
    si4        si8        si4.                                                   |
    %3
    do'4.                 do'4       do'8                                        |
    %4
    si4.~                 si4        si8                                         |
    %5
    la4.                  la4        la8                                         |
    %6
    sol4       la8        sol4       sol8                                        |
    %7
    fad4.                 fad4       fad8                                        |
    %8
    mi4.~                 mi4        sol,8                                       |
    %9
    do4        re8        mi4        fad8                                        |
    %10
    sol4       la8        si4        do'8                                        |
    %11
    re'4.                 la4        do'8                                        |
    %12
    si4.~                 si4        mi8                                         |
    %13
    la,4       si,8       do4        re8                                         |
    %14
    mi4        fad8       sol4       la8                                         |
    %15
    si4.                  fad4       la8                                         |
    %16
    sol4.~                sol4       r8                                          |
}

moldavaAccordi = {
    \key mi \minor
    \time 6/8
    \partial 8
    s8                                                                           |
    %1   corde a vuoto: mi minore
    r8  <sol si mi'>  r    r  <sol si mi'>  r                                    |
    %2
    r8  <sol si mi'>  r    r  <sol si mi'>  <sol si mi'>                         |
    %3   do maggiore con il mi al basso: sol e mi a vuoto
    r8  <sol mi'>  <sol mi'>    r  <sol mi'>  r                                  |
    %4   sol maggiore
    r8  <sol si>  <sol si>    r  <sol si>  r                                     |
    %5   la minore in V posizione
    r8  <do' mi'>  <do' mi'>    r  <do' mi'>  r                                  |
    %6
    r8  <si mi'>  r    r  <si mi'>  r                                            |
    %7   si settima
    r8  <la si fad'>  <la si fad'>    r  <la si fad'>  r                         |
    %8
    r8  <sol si mi'>  <sol si mi'>    r  <sol si mi'>  r                         |
    %9
    r8  <sol mi'>  r    r  <sol mi'>  r                                          |
    %10
    r8  <sol si>  r    r  <sol si>  r                                            |
    %11  re maggiore in X posizione, poi in VII
    r8  <fad' la' re''>  <fad' la' re''>    r  <re' fad'>  r                     |
    %12
    r8  <sol si>  <sol si>    r  <sol si>  r                                     |
    %13  la minore in prima posizione
    r8  <la do' mi'>  r    r  <la do' mi'>  r                                    |
    %14
    r8  <sol si mi'>  r    r  <sol si mi'>  r                                    |
    %15  si maggiore in VII posizione, poi in IV
    r8  <red' fad' si'>  <red' fad' si'>    r  <si red'>  r                      |
    %16
    r8  <si mi'>  <si mi'>    r  <si mi'>  r                                     |
}

moldavaBasso = {
    \key mi \minor
    \time 6/8
    \partial 8
    s8                                                                           |
    %1-3
    mi,2. | mi,2. | mi,2. |
    %4
    s2. |
    %5
    la,2. |
    %6
    mi,2. |
    %7
    si,2. |
    %8-9
    mi,2. | mi,2. |
    %10-13
    s2.*4
    %14
    mi,2. |
    %15
    s2. |
    %16
    mi,2. |
}
