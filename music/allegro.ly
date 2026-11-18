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
    % ---- battute 12-38: BOZZA GREZZA dalle fonti (Schirmer / parti d'arco):
    % le quattro parti un'ottava sotto (i bassi dalla 20 ad altezza reale,
    % per restare nell'estensione), non ancora adattate alla chitarra ne'
    % confrontate col manoscritto.
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
    % ---- battute 19-38: bozza grezza
    \absolute {
    %19
    s4 re'' si' la'8 sol' |
    %20
    la'4 re' s2 |
    %21
    s4 mi' do' si8 la |
    %22
    si4 mi s2 |
    %23
    s4 fad' re' dod'8 si |
    %24
    dod'4 fad dod' red' |
    %25
    mi'4 si mi'2~ |
    %26
    mi'8 fad' re' mi' dod' fad' mi' fad' |
    %27
    red'8 sol' fad' sol' red' sol' fad' sol' |
    %28
    mi'8 la' sol' la' mi' la' sol' la' |
    %29
    fad'8 si' la' si' fad' si' la' si' |
    %30
    sol'8 do'' si' do'' sol' do'' si' do'' |
    %31
    la'8 re'' do'' re'' la' re'' do'' re'' |
    %32
    si'4 do''8 si' la' sol' fad' mi' |
    %33
    re'4 mi'8 re' do' si la sol |
    %34
    fad2 la |
    %35
    s4 re' si la8 sol |
    %36
    la4 re s2 |
    %37
    s4 re'' si' la'8 sol' |
    %38
    la'4 re' sol'2 |   % (nell'originale legata alla battuta 39)
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
    \stemDown   % annulla lo \stemUp della battuta 11
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
    % ---- battute 19-38: bozza grezza
    \absolute {
    %19
    sol'2 sol |
    %20
    fad2 re'~ |
    %21
    re'4 do' mi la |
    %22
    s2 mi' |
    %23
    dod4 re s2 |
    %24
    s4 fad fad fad |
    %25
    si4. la8 sol fad mi re |
    %26
    dod4 si2 lad4 |
    %27
    si4 red' s8 red' red' red' |
    %28
    mi'4 mi s8 mi' re' mi' |
    %29
    la4 fad s8 fad' mi' fad' |
    %30
    sol'4 mi' s8 mi' re' mi' |
    %31
    la8 fad' mi' fad' la fad' mi' fad' |
    %32
    re'4 mi'8 re' do' si la do' |
    %33
    re4 sol la2 |
    %34
    s4 la fad mi8 re |
    %35
    si4 si, s sol |
    %36
    fad4 la' fad' mi'8 re' |
    %37
    si'4 si s sol |
    %38
    fad2 re'4 do'8 si |
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
    % ---- battute 19-38: bozza grezza
    \absolute {
    %19
    si,4 sol, s2 |
    %20
    s4 sol fad mi8 re |
    %21
    mi4 la, s2 |
    %22
    s4 la sol fad8 mi |
    %23
    fad4 si, s2 |
    %24
    s4 si la sol8 fad |
    %25
    sol4. fad8 mi re dod si, |
    %26
    lad,4 si, fad fad, |
    %27
    si,4 si2 si,4 |
    %28
    do2 dod |
    %29
    re2 red |
    %30
    mi2 s4 mi |
    %31
    fad2 s4 fad |
    %32
    sol2 la |
    %33
    si4 do'8 si la sol fad mi |
    %34
    re1~ |
    %35
    re1~ |
    %36
    re1~ |
    %37
    re1~ |
    %38
    re4 re' si la8 sol |
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
    % ---- battute 19-38: bozza grezza
    \absolute {
    %19
    re4 si re' sol |
    %20
    re'2 la4 sol8 fad |
    %21
    mi2 la, |
    %22
    s2 si |
    %23
    lad4 si s2 |
    %24
    s4 mi dod si,8 lad, |
    %25
    si,4 si2 mi4 |
    %26
    fad4 fad2 fad4 |
    %27
    fad4 si, s8 si si si |
    %28
    mi2 s8 dod' si dod' |
    %29
    fad4 si, s8 red dod red |
    %30
    si,4 mi s sol |
    %31
    re'4 la re' re |
    %32
    sol2 mi4 fad |
    %33
    sol4 sol do mi |
    %34
    la,2 re |
    %35
    s4 sol re re |
    %36
    re4 fad la sol8 fad |
    %37
    sol2 re |
    %38
    s4 la sol re |
    }
}
