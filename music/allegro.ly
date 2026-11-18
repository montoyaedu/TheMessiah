\version "2.24.0"
\language "italiano"

% Allegro moderato -- SOLO CONTENUTO MUSICALE.
% Qui vivono solo note e durate. Diteggiature, corde e barre' stanno in
% dita/; \break, colori, formato pagina e ritocchi in layers/ e editions/.
% Ogni battuta ha il suo numero (%N) e il controllo "|".

violinoA = \relative do' {
    \key mi \minor
    %1
    r4                 si'                sol               fad8    mi   |
    %2
    fad4           si,              fad'             
    \grace sold32 \trill (\grace la sold4) |
    %3
    la4                 mi                 la2~                                   |
    %4
    la8      si        sol      la       fad      si     la      si     |
    %5
    sol4           
    mi               
    si'2~                                |
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
    % ---- battute 12-18: BOZZA GREZZA dalle fonti (Schirmer / parti d'arco),
    % le quattro parti un'ottava sotto, non ancora adattate alla chitarra
    % ne' confrontate col manoscritto.
    \absolute {
    %12
    red'4              mi'2                                     red'4              |
    %13
    mi'4               si                   s2                                     |
    %14
    s1                                                                             |
    %15
    s2                                      r8         sol      la        si       |
    %16
    do'8     re'       si         do'       la         re'      do'       re'      |
    %17
    si4                sol                  s2                                     |
    %18
    s1                                                                             |
    }
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
    mi4              
    re                dod8    si       |
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
    % ---- battute 12-18: bozza grezza
    \absolute {
    %12
    si4.                          do'8      la4                 fad                |
    %13
    si4                sol~                 sol8       mi       fad       sol      |
    %14
    la8      si        sol        la        fad        si       la        si       |
    %15
    sol4               mi8        fad       sol2~                                  |
    %16
    sol2                                    fad                                    |
    %17
    sol4               re'                  sol'2~                                 |
    %18
    sol'2                                   fad'                                   |
    }
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
    % ---- battute 12-18: bozza grezza
    \absolute {
    %12
    la,8     si,       sol,       la,       fad,       si,      la,       si,      |
    %13
    sol,4              mi,                  mi2~                                   |
    %14
    mi2                                     red                                    |
    %15
    mi4                s                    s2                                     |
    %16
    s1                                                                             |
    %17
    s2                                      r8         sol,     la,       si,      |
    %18
    do8      re        si,        do        la,        re       do        re       |
    }
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
    % ---- battute 12-18: bozza grezza
    \absolute {
    %12
    fad4               mi                   fad4.                         si,8     |
    %13-16  (all'unisono con i bassi o col secondo violino: omessa)
    s1*4
    %17
    sol4               si8        la        si         si,      do        re       |
    %18
    mi8      fad       re         mi        do4                 la                 |
    }
}
