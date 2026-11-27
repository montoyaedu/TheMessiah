\version "2.24.0"
\language "italiano"

% VIVALDI, CONCERTO RV 93, PRIMO MOVIMENTO -- le quattro parti dell'autografo
% (Torino), all'altezza scritta, una battuta per riga.
%
% LETTE dall'autografo (fonti/autografo-torino-IMSLP779675.pdf, pagine 1-4) da
% un lettore che non ha visto nessun'altra edizione. La lettura grezza, con il
% grado di fiducia battuta per battuta, e' in fonti/lettura-primo-movimento.txt.
% NON ancora controllate da un secondo lettore.
%
% 51 battute in due meta' ritornellate (1-23, 24-51). L'autografo non ha
% indicazione di tempo.
%
% Battute meno sicure: 35 e 38 (figura del liuto), 46 (liuto, macchia),
% 42-43 e 51 (basso), 26 (ultimo quarto del violino II), 10 (ultima nota del
% liuto). Nelle battute 8-9 (basso) e 45 (liuto) le note in posizione di "do"
% non hanno alterazione: qui sono scritte alla lettera come do diesis, ma
% probabilmente Vivaldi intende do naturale.
%
% "ut supra" nell'autografo = la parte raddoppia quella sopra: qui la battuta
% e' ricopiata e segnata nel commento. Nelle battute 6-10 il rigo del violino I
% e' vuoto: inteso come raddoppio del liuto, ma potrebbero essere pause.
%
% Le variabili ...Sola hanno la parte solo dove ha note proprie (raddoppi e
% pause diventano spazi): servono per mettere tutto su un rigo di chitarra.


% ---------- liuto ----------
rvLiuto = {
    \key re \major
    \time 4/4
    %1
    fad''32( mi'' re''8.) fad''32( mi'' re''8.) la''8 la' la' la' |
    %2
    fad''32( mi'' re''8.) fad''32( mi'' re''8.) la''8 la' la' la' |
    %3
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) mi''4 r4 |
    %4
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) re''32( dod'' si'8.) re''32( dod'' si'8.) |
    %5
    sol''32( fad'' mi''8.) sol''32( fad'' mi''8.) dod''32( si' la'8.) dod''32( si' la'8.) |
    %6
    fad''4 r8 fa''8 fa''8 mi'' mi'' fa''16 sol'' |
    %7
    fa''8 re'' re'' fa'' fa'' mi'' mi'' fa''16 sol'' |
    %8
    fa''8 re'' re'' re'' mib'' mib'' mi'' mi'' |
    %9
    fa''8 fa'' fad'' fad'' sol'' sol'' sold'' sold'' |
    %10
    la''4 r8 la''8 r8 la''8 r8 sol''8 |
    %11
    fad''16 sol'' la'' fad'' mi'' fad'' sol'' mi'' fad''16 sol'' la'' fad'' mi'' fad'' sol'' mi'' |
    %12
    re''4 r8 re''8 fad''32( mi'' re''8.) la''32( sol'' fad''8.) |
    %13
    mi''8 la' la' la' mi''32( re'' dod''8.) sol''32( fad'' mi''8.) |
    %14
    fad''8 re'' re'' la'' si''32( la'' sol''8.) si''32( la'' sol''8.) |
    %15
    mi''16 dod'' dod'' dod'' mi'' dod'' dod'' dod'' la''32( sol'' fad''8.) la''32( sol'' fad''8.) |
    %16
    re''16 si' si' si' re'' si' si' si' sol''32( fad'' mi''8.) sol''32( fad'' mi''8.) |
    %17
    fad''32( mi'' re''8.) fad''32( mi'' re''8.) sold''32( fad'' mi''8.) sold''32( fad'' mi''8.) |
    %18
    la''4 r4 r2 |
    %19
    r8 mi''8 la''8 sold''16 fad'' mi''8 mi'' fad'' mi''16 re'' |
    %20
    dod''8 mi'' la'' sold''16 fad'' mi''8 mi'' fad'' mi''16 re'' |
    %21
    dod''8 si'16 la' mi''8 re''16 dod'' la''8 dod'' re'' si' |
    %22
    dod''8 si'16 la' mi''8 re''16 dod'' la''8 dod'' re'' si' |
    %23
    la'8 la'' dod''' sold'' la''2 |
    %24
    dod''32( si' la'8.) dod''32( si' la'8.) mi''8 mi' mi' mi' |
    %25
    dod''32( si' la'8.) dod''32( si' la'8.) mi''8 mi' mi' mi' |
    %26
    dod''32( si' la'8.) dod''32( si' la'8.) la'4 r8 mi''8 |
    %27
    la''8( mi'' la' sol'') fad''( re'' re' fad'') |
    %28
    si''8( fad'' si' la'') sold''( mi'' mi' sold'') |
    %29
    dod'''8( sold'' dod'' si'') <fad' dod'' la''>2 |
    %30
    <fad' dod'' sold''>2 <fad' dod'' la''>2 |
    %31
    <fad' dod'' sold''>2 <fad' dod'' la''>4 r4 |
    %32
    <fad' dod'' lad''>2 <fad' re'' si''>2 |
    %33
    <fad' dod'' lad''>2 <fad' re'' si''>2 |
    %34
    <fad' dod'' lad''>2 <fad' re'' si''>4 r4 |
    %35
    re'''8 si''16 la'' fad''8 mi'' re''8 si'' re'' si'' |
    %36
    mi''8 si'' fad'' si'' sol'' si'' re'' si'' |
    %37
    mi''8 si'' fad'' lad'' si''4 r4 |
    %38
    re'''8 si''16 la'' fad''8 mi'' re''8 si' re' si' |
    %39
    mi'8 si' fad' si' sol' si' re' si' |
    %40
    mi'8 si' fad' lad' si'4 r8 fad''8 |
    %41
    fad''32( mi'' re''8.) fad''32( mi'' re''8.) la''8 la' la' la' |
    %42
    fad''32( mi'' re''8.) fad''32( mi'' re''8.) la''32( sol'' fad''8.) la''32( sol'' fad''8.) |
    %43
    mi''4 r8 fa''8 fa''8 mi'' mi'' fa''16 sol'' |
    %44
    fa''8 re'' re'' fa'' fa'' mi'' mi'' fa''16 sol'' |
    %45
    fa''8 re'' re'' la'' sib''8 dod''' dod''' sib''16 la'' |
    %46
    sib''8 sib'' sib'' la''16 sol'' sol''8 sol'' sol'' fa''16 mi'' |
    %47
    fa''8 fa'' fad'' fad'' sol'' sol'' sold'' sold'' |
    %48
    la''16 la'' la'' la'' la'' la'' la'' la'' sol'' sol'' sol'' sol'' sol'' sol'' sol'' sol'' |
    %49
    fad''8( mi''16 re'' mi''8 dod'') fad''16 sol'' la'' fad'' mi'' fad'' sol'' mi'' |
    %50
    fad''16 sol'' la'' fad'' mi'' fad'' sol'' mi'' fad''16 sol'' la'' fad'' mi'' fad'' sol'' mi'' |
    %51
    fad''8( re'' mi'' dod'') re''2\fermata |
}

% ---------- violino1 ----------
rvViolinoI = {
    \key re \major
    \time 4/4
    %1
    fad''32( mi'' re''8.) fad''32( mi'' re''8.) la''8 la' la' la' |   % ut supra: = liuto
    %2
    fad''32( mi'' re''8.) fad''32( mi'' re''8.) la''8 la' la' la' |   % ut supra: = liuto
    %3
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) mi''4 r4 |   % ut supra: = liuto
    %4
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) re''32( dod'' si'8.) re''32( dod'' si'8.) |   % ut supra: = liuto
    %5
    sol''32( fad'' mi''8.) sol''32( fad'' mi''8.) dod''32( si' la'8.) dod''32( si' la'8.) |   % ut supra: = liuto
    %6
    fad''4 r8 fa''8 fa''8 mi'' mi'' fa''16 sol'' |   % ut supra: = liuto
    %7
    fa''8 re'' re'' fa'' fa'' mi'' mi'' fa''16 sol'' |   % ut supra: = liuto
    %8
    fa''8 re'' re'' re'' mib'' mib'' mi'' mi'' |   % ut supra: = liuto
    %9
    fa''8 fa'' fad'' fad'' sol'' sol'' sold'' sold'' |   % ut supra: = liuto
    %10
    la''4 r8 la''8 r8 la''8 r8 sol''8 |   % ut supra: = liuto
    %11
    fad''16 sol'' la'' fad'' mi'' fad'' sol'' mi'' fad''16 sol'' la'' fad'' mi'' fad'' sol'' mi'' |   % ut supra: = liuto
    %12
    re''4 r4 r2 |
    %13
    R1 |
    %14
    R1 |
    %15
    R1 |
    %16
    R1 |
    %17
    R1 |
    %18
    r8 dod''16 re'' mi'' re'' mi'' re'' dod'' re'' dod'' re'' mi'' re'' mi'' re'' |
    %19
    dod''4 r4 r2 |
    %20
    R1 |
    %21
    R1 |
    %22
    R1 |
    %23
    r8 la''8 dod''' sold'' la''2 |
    %24
    dod''32( si' la'8.) dod''32( si' la'8.) mi''8 mi' mi' mi' |   % ut supra: = liuto
    %25
    dod''32( si' la'8.) dod''32( si' la'8.) mi''8 mi' mi' mi' |   % ut supra: = liuto
    %26
    dod''32( si' la'8.) dod''32( si' la'8.) la'4 r4 |
    %27
    R1 |
    %28
    R1 |
    %29
    r2 la''2 |
    %30
    sold''2 la''2 |
    %31
    sold''2 la''8 la''16 si'' dod'''8 la'' |
    %32
    dod''2 re''2 |
    %33
    dod''2 re''2 |
    %34
    dod''2 re''8 re''16 mi'' fad''8 re'' |
    %35
    R1 |
    %36
    R1 |
    %37
    r2 r8 re''16 mi'' fad''8 re'' |
    %38
    R1 |
    %39
    R1 |
    %40
    R1 |
    %41
    fad''32( mi'' re''8.) fad''32( mi'' re''8.) la''8 la' la' la' |   % ut supra: = liuto
    %42
    fad''32( mi'' re''8.) fad''32( mi'' re''8.) la''32( sol'' fad''8.) la''32( sol'' fad''8.) |   % ut supra: = liuto
    %43
    mi''4 r4 r2 |
    %44
    R1 |
    %45
    R1 |
    %46
    R1 |
    %47
    R1 |
    %48
    R1 |
    %49
    r2 fad''16 sol'' la'' fad'' mi'' fad'' sol'' mi'' |
    %50
    fad''16 sol'' la'' fad'' mi'' fad'' sol'' mi'' fad''16 sol'' la'' fad'' mi'' fad'' sol'' mi'' |   % ut supra: = liuto
    %51
    fad''8( re'' mi'' dod'') re''2\fermata |   % ut supra: = liuto
}

% ---------- violino2 ----------
rvViolinoII = {
    \key re \major
    \time 4/4
    %1
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) mi''8 la' la' la' |
    %2
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) mi''8 la' la' la' |
    %3
    fad''32( mi'' re''8.) fad''32( mi'' re''8.) dod''4 r4 |
    %4
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) re''32( dod'' si'8.) re''32( dod'' si'8.) |   % ut supra: = violino1
    %5
    sol''32( fad'' mi''8.) sol''32( fad'' mi''8.) dod''32( si' la'8.) dod''32( si' la'8.) |   % ut supra: = violino1
    %6
    fad''4 r8 fa''8 fa''8 mi'' mi'' fa''16 sol'' |   % ut supra: = liuto
    %7
    fa''8 re'' re'' fa'' fa'' mi'' mi'' fa''16 sol'' |   % ut supra: = liuto
    %8
    fa''8 re'' re'' re'' mib'' mib'' mi'' mi'' |   % ut supra: = liuto
    %9
    fa''8 fa'' fad'' fad'' sol'' sol'' sold'' sold'' |   % ut supra: = liuto
    %10
    la''4 r8 la''8 r8 la''8 r8 sol''8 |   % ut supra: = liuto
    %11
    re''16 mi'' fad'' re'' dod'' re'' mi'' dod'' re''16 mi'' fad'' re'' dod'' re'' mi'' dod'' |
    %12
    re''4 r4 r2 |
    %13
    R1 |
    %14
    R1 |
    %15
    R1 |
    %16
    R1 |
    %17
    R1 |
    %18
    r8 la'16 si' dod'' si' dod'' si' la' si' la' si' dod'' si' dod'' si' |
    %19
    la'4 r4 r2 |
    %20
    R1 |
    %21
    R1 |
    %22
    R1 |
    %23
    r8 dod''8 mi'' si' la'2 |
    %24
    mi''32( re'' dod''8.) mi''32( re'' dod''8.) si'8 mi' mi' mi' |
    %25
    mi''32( re'' dod''8.) mi''32( re'' dod''8.) si'8 mi' mi' mi' |
    %26
    mi''32( re'' dod''8.) mi''32( re'' dod''8.) dod''4 r4 |
    %27
    R1 |
    %28
    R1 |
    %29
    r2 dod''2~ |
    %30
    dod''1~ |
    %31
    dod''2 dod''8 fad''16 sold'' la''8 fad'' |
    %32
    fad'1~ |
    %33
    fad'1~ |
    %34
    fad'2 fad'8 si'16 dod'' re''8 si' |
    %35
    R1 |
    %36
    R1 |
    %37
    r2 r8 si'16 dod'' re''8 si' |
    %38
    R1 |
    %39
    R1 |
    %40
    R1 |
    %41
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) mi''8 la' la' la' |
    %42
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) fad''32( mi'' re''8.) fad''32( mi'' re''8.) |
    %43
    dod''4 r4 r2 |
    %44
    R1 |
    %45
    R1 |
    %46
    R1 |
    %47
    R1 |
    %48
    R1 |
    %49
    r2 re''16 mi'' fad'' re'' dod'' re'' mi'' dod'' |
    %50
    re''16 mi'' fad'' re'' dod'' re'' mi'' dod'' re''16 mi'' fad'' re'' dod'' re'' mi'' dod'' |
    %51
    re''8( fad'' sol'' mi'') re''2\fermata |
}

% ---------- basso ----------
rvBasso = {
    \key re \major
    \time 4/4
    %1
    re8 re re re dod dod dod dod |
    %2
    re8 re re re dod dod dod dod |
    %3
    re8 re re16 mi fad sol la4 r4 |
    %4
    fad8 re fad re si sol si sol |
    %5
    mi8 dod mi dod la la, la la, |
    %6
    re4 r8 re8 re8 la, la, la, |
    %7
    re8 re re re re la, la, la, |
    %8
    re8 re re re dod dod sib, sib, |
    %9
    la,8 la, re dod sib, sib, mi re |
    %10
    dod8 re dod si, la, si, dod la, |
    %11
    re8 re la, la, re re la, la, |
    %12
    re4 r8 re8 re8( mi fad re) |
    %13
    la,8 si, dod si, la, si, dod la, |
    %14
    re8( mi fad re) sol fad sol sol, |
    %15
    dod'8 si dod' dod fad mi fad fad, |
    %16
    si8 la si si, mi re mi mi, |
    %17
    re8 dod re re, mi( fad mi re) |
    %18
    la,4 la, la, la, |
    %19
    la,4 r4 la,4 r4 |
    %20
    la,4 r4 la,4 r4 |
    %21
    la,4 la, la,8 la re mi |
    %22
    la,4 la, la,8 la re mi |
    %23
    la,8 la re mi la,2 |
    %24
    la,8 la, la, la, sold, sold, sold, sold, |
    %25
    la,8 la, la, la, sold, sold, sold, sold, |
    %26
    la,8 la, la,16 si, dod re mi8( fad mi re) |
    %27
    dod4. la,8 re4 re,4 |
    %28
    red4. si,8 mi4 mi,4 |
    %29
    mid4. dod8 fad,8 fad16 sold la8 fad |
    %30
    r8 dod16 red mid8 dod r8 fad16 sold la8 fad |
    %31
    r8 dod16 red mid8 dod fad4 r4 |
    %32
    r8 fad16 sold lad8 fad r8 si,16 dod re8 si, |
    %33
    r8 fad16 sold lad8 fad r8 si,16 dod re8 si, |
    %34
    r8 fad16 sold lad8 fad si,4 r4 |
    %35
    si,4 lad, si, si, |
    %36
    dod4 re mi si, |
    %37
    dod4 fad, si, r4 |
    %38
    si,4 lad, si, si, |
    %39
    dod4 re mi si, |
    %40
    dod4 fad, si, r8 re8 |
    %41
    re8( re re re) la,( la, la, la,) |
    %42
    re8 re re re re8 re mi16 mi fad sol |
    %43
    la8( sol fa re) la,4 la, |
    %44
    re4 re la, la, |
    %45
    re4 re sol sib, |
    %46
    fa4 sib, mi la, |
    %47
    re8( re do do) sib,( sib, mi re) |
    %48
    dod8( si, dod la,) dod( si, dod la,) |
    %49
    re8( fad sol la) re re la, la, |
    %50
    re8 re la, la, re re la, la, |
    %51
    re8 re' sol la re2\fermata |
}

% ---------- violino1, solo le note proprie ----------
rvViolinoISola = {
    \key re \major
    \time 4/4
    %1
    s1 |
    %2
    s1 |
    %3
    s1 |
    %4
    s1 |
    %5
    s1 |
    %6
    s1 |
    %7
    s1 |
    %8
    s1 |
    %9
    s1 |
    %10
    s1 |
    %11
    s1 |
    %12
    re''4 s4 s2 |
    %13
    s1 |
    %14
    s1 |
    %15
    s1 |
    %16
    s1 |
    %17
    s1 |
    %18
    s8 dod''16 re'' mi'' re'' mi'' re'' dod'' re'' dod'' re'' mi'' re'' mi'' re'' |
    %19
    dod''4 s4 s2 |
    %20
    s1 |
    %21
    s1 |
    %22
    s1 |
    %23
    s8 la''8 dod''' sold'' la''2 |
    %24
    s1 |
    %25
    s1 |
    %26
    dod''32( si' la'8.) dod''32( si' la'8.) la'4 s4 |
    %27
    s1 |
    %28
    s1 |
    %29
    s2 la''2 |
    %30
    sold''2 la''2 |
    %31
    sold''2 la''8 la''16 si'' dod'''8 la'' |
    %32
    dod''2 re''2 |
    %33
    dod''2 re''2 |
    %34
    dod''2 re''8 re''16 mi'' fad''8 re'' |
    %35
    s1 |
    %36
    s1 |
    %37
    s2 s8 re''16 mi'' fad''8 re'' |
    %38
    s1 |
    %39
    s1 |
    %40
    s1 |
    %41
    s1 |
    %42
    s1 |
    %43
    mi''4 s4 s2 |
    %44
    s1 |
    %45
    s1 |
    %46
    s1 |
    %47
    s1 |
    %48
    s1 |
    %49
    s2 fad''16 sol'' la'' fad'' mi'' fad'' sol'' mi'' |
    %50
    s1 |
    %51
    s1 |
}

% ---------- violino2, solo le note proprie ----------
rvViolinoIISola = {
    \key re \major
    \time 4/4
    %1
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) mi''8 la' la' la' |
    %2
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) mi''8 la' la' la' |
    %3
    fad''32( mi'' re''8.) fad''32( mi'' re''8.) dod''4 s4 |
    %4
    s1 |
    %5
    s1 |
    %6
    s1 |
    %7
    s1 |
    %8
    s1 |
    %9
    s1 |
    %10
    s1 |
    %11
    re''16 mi'' fad'' re'' dod'' re'' mi'' dod'' re''16 mi'' fad'' re'' dod'' re'' mi'' dod'' |
    %12
    s1 |
    %13
    s1 |
    %14
    s1 |
    %15
    s1 |
    %16
    s1 |
    %17
    s1 |
    %18
    s8 la'16 si' dod'' si' dod'' si' la' si' la' si' dod'' si' dod'' si' |
    %19
    la'4 s4 s2 |
    %20
    s1 |
    %21
    s1 |
    %22
    s1 |
    %23
    s8 dod''8 mi'' si' la'2 |
    %24
    mi''32( re'' dod''8.) mi''32( re'' dod''8.) si'8 mi' mi' mi' |
    %25
    mi''32( re'' dod''8.) mi''32( re'' dod''8.) si'8 mi' mi' mi' |
    %26
    mi''32( re'' dod''8.) mi''32( re'' dod''8.) dod''4 s4 |
    %27
    s1 |
    %28
    s1 |
    %29
    s2 dod''2~ |
    %30
    dod''1~ |
    %31
    dod''2 dod''8 fad''16 sold'' la''8 fad'' |
    %32
    fad'1~ |
    %33
    fad'1~ |
    %34
    fad'2 fad'8 si'16 dod'' re''8 si' |
    %35
    s1 |
    %36
    s1 |
    %37
    s2 s8 si'16 dod'' re''8 si' |
    %38
    s1 |
    %39
    s1 |
    %40
    s1 |
    %41
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) mi''8 la' la' la' |
    %42
    la''32( sol'' fad''8.) la''32( sol'' fad''8.) fad''32( mi'' re''8.) fad''32( mi'' re''8.) |
    %43
    dod''4 s4 s2 |
    %44
    s1 |
    %45
    s1 |
    %46
    s1 |
    %47
    s1 |
    %48
    s1 |
    %49
    s2 re''16 mi'' fad'' re'' dod'' re'' mi'' dod'' |
    %50
    re''16 mi'' fad'' re'' dod'' re'' mi'' dod'' re''16 mi'' fad'' re'' dod'' re'' mi'' dod'' |
    %51
    re''8( fad'' sol'' mi'') re''2\fermata |
}
