\version "2.24.0"
\language "italiano"

% Grave -- SOLO CONTENUTO MUSICALE (altezze assolute).
% 12 battute, suonate due volte (forte, poi piano: vedi layers/grave-voci.ly).
% Tre voci: alto (melodia + accordo), basso, pedale (bassi tenuti).
% Le battute ancora da trascrivere sono pause (R1) / spazi (s1).

graveAlto = {
    \key mi \minor
    %1
    <sol mi'>4.        <mi do'>8            <sol si>4.           <fad la>8         |
    %2
    <fad re'>4.        dod'16     si        <si sol'>4.          <si sol'>8        |
    %3-12  DA TRASCRIVERE
    R1*10
}

graveBasso = {
    \key mi \minor
    %1
    <si,-3>4.          la,8                 si,4.                si,8              |
    %2
    si,4.              <sol, mi>8           fad,4.               mi,8              |
    %3-12  DA TRASCRIVERE
    s1*10
}

gravePedale = {
    \key mi \minor
    %1
    mi,2                                    s2                                     |
    %2
    s1                                                                             |
    %3-12  DA TRASCRIVERE
    s1*10
}
