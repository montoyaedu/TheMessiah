\version "2.24.0"
\include "../lib/barre.ly"

% DITEGGIATURA "principale": dita (-3), corde (\2) e barre'.
% Per ogni voce NOME di music/ c'e' qui una variabile NOMEDita con gli
% stessi valori ritmici, scritti come spazi (s): ogni segno finisce sulla
% nota che cade nello stesso istante. Su un accordo, s-1-2-4 assegna le
% dita alle note dal basso verso l'alto.
% Per una diteggiatura diversa: copia questo file (es. dita/maestro.ly),
% cambialo, e includi quello nell'edizione.

% ---------- Grave ----------
graveMedioDita = {
    %1
    s4.-3              s8                   s4.                  s8                |
}

% ---------- Allegro moderato ----------
violinoADita = {
    %1
    s4                 s-3                  s\2-4                s8\2-3   s\2-1    |
    %2
    \barre #3
    ^ \markup { \hspace #-2 "IV"}
    s4\2-4             s\3-1                s\2-4
    \barre #3
    ^ \markup { \hspace #-2 "V"}
    \grace s32\2 \grace s s4\2                                                     |
    %3
    s4-1               s\2-1                s2-1                                   |
    %4
    s8       s-3       s\2-4      s-1       s\2-3      s-4       s-1      s-3      |
    %5
    s4\2-4             s\1-0                s2\1-4                                 |
}

violinoBDita = {
    %1-4
    s1*4
    %5
    s4                 s\3-3                s\3-3                s8\3-2   s\3-1    |
}
