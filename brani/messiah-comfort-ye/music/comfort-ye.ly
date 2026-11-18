\version "2.24.0"
\language "italiano"

% HANDEL, Messiah -- N. 2, recitativo accompagnato "Comfort ye my people"
% Riduzione per chitarra sola, altezze reali, accordatura normale.
%
%   comfortCanto   la voce del tenore, ad altezza reale
%   comfortAlto    il primo violino (con il secondo dove va per terze o
%                  seste), un'ottava sotto
%   comfortMedio   gli accordi ribattuti di secondo violino e viola,
%                  ridotti a cio' che sta sotto le dita
%   comfortBasso   il basso, una nota per accordo invece delle crome ribattute
%
% STATO: battute 1-8, BOZZA dalla Schirmer 1912 riscontrata con le parti
% d'arco. Non ancora provata sulla chitarra.

comfortCanto = {
    \key mi \major
    \time 4/4
    %1-3
    s1*3
    %4
    si8.               la16       sold4     s2                                     |
    %5
    s2                                      mi'2~                                  |
    %6
    mi'4.              fad'16(    sold')    si4(                 la8.)    sold16   |
    %7
    sold16(  fad)      mi8        s4        s2                                     |
    %8  (ad libitum)
    mi'2~                                   mi'8.      si16      si4               |
}

comfortTesto = \lyricmode {
    Com -- fort ye,
    com -- fort ye my peo -- ple,
    com -- fort ye,
}

comfortAlto = {
    \key mi \major
    \time 4/4
    %1
    sold8    sold      sold       sold      si4~                 si8.     la32 sold |
    %2
    fad8     fad       fad        fad       la4~                 la8.     sold32 fad |
    %3
    mi8      mi16.\trill red32    mi8  la   sold4                fad8.    mi16     |
    %4
    s2                                      <sold' si'>8.  <fad' la'>16  <mi' sold'>4 |
    %5
    sold8    sold      sold       sold      si4~                 si8.     la32 sold |
    %6
    s1                                                                             |
    %7
    s2                                      <si sold'>8.   <la fad'>16   <sold mi'>4 |
    %8
    s1                                                                             |
}

comfortMedio = {
    \key mi \major
    \time 4/4
    %1
    <si, mi>8 <si, mi> <si, mi>   <si, mi>  <si, mi>   <si, mi>  <si, mi> <si, mi> |
    %2
    s2                                      <la, red>8 <la, red> <la, red> <la, red> |
    %3
    si,4               s                    mi                   s                 |
    %4
    <si, mi>4          s                    s2                                     |
    %5
    <si, mi>8 <si, mi> <si, mi>   <si, mi>  <si, mi>   <si, mi>  <si, mi> <si, mi> |
    %6
    mi8      mi        mi         mi        mi         mi        red      red      |
    %7-8
    s1*2
}

comfortBasso = {
    \key mi \major
    \time 4/4
    %1
    mi,2                                    sold,                                  |
    %2
    si,2                                    fad,                                   |
    %3
    sold,4             dod                  si,2                                   |
    %4
    mi,4               r                    mi8.       mi,16     mi,4              |
    %5
    mi,2                                    sold,                                  |
    %6
    si,1                                                                           |
    %7
    mi8.     mi,16     mi,4                 mi8.       mi,16     mi,4              |
    %8
    r1\fermata                                                                     |
}
