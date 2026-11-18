\version "2.24.0"
\language "italiano"

% Allegro moderato, FINALE: battute 88-98 dell'Overture (le ultime 11).
% Altezze assolute, suoni reali. Tre voci: alto, medio, basso.
%
% FONTE: manoscritto a matita del maestro M. Vercesi (foto), letto con l'aiuto delle
% parti d'arco. La melodia e i bassi coincidono con l'originale; le note
% interne segnate "?" sono letture incerte, da verificare sul manoscritto.
% Le diteggiature del manoscritto non sono ancora riportate.

finaleAlto = {
    \key mi \minor
    %88
    fad'4              <sol si>             <si fad'>            <si re' sold'>    | % ? accordo sul 4o quarto
    %89
    <mi' la'>4         mi'8       re'       <do' la'>2~                            |
    %90
    la'8     si'       sol'       la'       fad'       si'       la'      si'      |
    %91
    mi'2~                                   mi'8       mi'       re'      mi'      |
    %92
    do'8     <do' mi'> <si re'>   <do' mi'> sold       mi'       re'      mi'      |
    %93
    la8      <do' mi'> <si re'>   <do' mi'> si         mi'       re'      mi'      |
    %94
    do'8     re'       do'        si        la         sol       fad      mi       |
    %95
    <fad si red'>2                          r4                   si                |
    %96
    mi'4.              re'16      do'       si4                  la                |
    %97
    sol4.              la8                  fad4.                mi8               |
    %98
    mi1                                                                            |
}

finaleMedio = {
    \key mi \minor
    %88-89
    s1*2
    %90
    si4                si                   s                    red'              | % ? si a vuoto sui primi due quarti
    %91
    la8      la        sold       la        <mi si>2                               | % ? seconda croma
    %92-96
    s1*5
    %97
    mi2                                     red                                    |
    %98
    s1                                                                             |
}

finaleBasso = {
    \key mi \minor
    %88
    r4                 mi                   re                   do8      si,      |
    %89
    do4.               si,8                 la,        sol,      fad,     mi,      |
    %90
    red4               mi,                  si,                  si,               |
    %91
    do4                mi                   sold,2                                 |
    %92
    <la, mi>2                               <si, re>                               |
    %93
    <do mi>2                                <sold, mi>                             |
    %94
    <la, mi la>2                            <do mi>                                |
    %95
    si,2                                    r4                   <la, red>         |
    %96
    <sol, mi>2.                                                  <la, mi>4         | % ? accordo sul 4o quarto
    %97
    si,1                                                                           |
    %98
    mi,1                                                                           |
}
