\version "2.24.0"
\language "italiano"

% Allegro moderato -- SOLO CONTENUTO MUSICALE.
% Qui vivono note, durate, diteggiature (-3) e corde (\2: servono
% anche all'intavolatura). Niente \break, colori, formato pagina o
% ritocchi di posizione: quelli stanno in layers/ e editions/.
% Ogni battuta ha il suo numero (%N) e il controllo "|".

violinoA = \relative do' {
    \key mi \minor
    %1
    r4                 si'-3                sol\2-4               fad8\2-3    mi\2-1   |
    %2
    \barre #3
    ^ \markup { \hspace #-2 "IV"}
    fad4\2-4           si,\3-1              fad'\2-4             
    \barre #3
    ^ \markup { \hspace #-2 "V"}
    \grace sold32\2 \trill (\grace la sold4\2) |
    %3
    la4-1                 mi\2-1                 la2~-1                                   |
    %4
    la8      si-3        sol\2-4      la-1       fad\2-3      si-4     la-1      si-3     |
    %5
    sol4\2-4           
    mi\1-0               
    si'2~\1-4                                |
    %6
    si4                la8        sol       la4                 sol8      fad      |
    %7
    sol2~                                   sol8       fad      sol       mi       |
    %8
    fad4               si~                  si                  lad                |
    %9
    si8      si,       dod        red       mi2~                                   |
    %10
    mi4                re8        dod       re4                 dod8      si       |
    %11
    do4.                          si8       
    \once \override NoteColumn.force-hshift = #1
    la         sol      fad       mi       |
}

violinoB = \relative do' {
    \key mi \minor
    %1
    s1                                                                             |
    %2
    s1                                                                             |
    %3
    s1                                                                             |
    %4
    s1                                                                             |
    %5
    r4                 
    \once \override NoteColumn.force-hshift = #1
    mi4\3-3              
    re\3-3                dod8\3-2    si\3-1       |
    %6
    dod4               fad,                 do'                 red                |
    %7
    mi                 si                   mi2~                                   |
    %8
    mi8      fad       re         mi        dod        fad      mi        fad      |
    %9
    red4               fad,                 si                  la8       sol      |
    %10
    la4                fad4~                fad                 mi                 |
    %11
    \stemUp
    \once \override NoteColumn.force-hshift = #-1
    mi                 sold                 la8
    \once \override NoteColumn.force-hshift = #1
    si       
    \once \override NoteColumn.force-hshift = #1
    do4                |
}

bassi = \relative do {
    \key mi \minor
    %1
    s1                                                                             |
    %2
    s1                                                                             |
    %3
    s1                                                                             |
    %4
    s1                                                                             |
    %5
    s1                                                                             |
    %6
    s1                                                                             |
    %7
    s1                                                                             |
    %8
    s1                                                                             |
    %9
    s4                si                     sol                fad8       mi      |
    %10
    fad4              si                     fad                sold               |
    %11
    la                mi                     la2~                                  |
}

viola = \relative do {
    \key mi \minor
    %1
    s1                                                                             |
    %2
    s1                                                                             |
    %3
    s1                                                                             |
    %4
    s1                                                                             |
    %5
    s1                                                                             |
    %6
    s1                                                                             |
    %7
    s1                                                                             |
    %8
    s1                                                                             |
    %9
    s1                                                                             |
    %10
    s1                                                                             |
    %11
    mi4.                          re8         
    \once \override NoteColumn.force-hshift = #1
    do
    si       la4              |
}
