\version "2.24.0"
\language "italiano"

% Grave -- SOLO CONTENUTO MUSICALE (altezze assolute, suoni reali).
% 11 battute con ritornello, poi prima e seconda volta (batt. 12 e 13).
% Tre voci: alto (melodia + accordo), medio (voce interna quando ha un
% ritmo suo), basso.
%
% STATO: battute 1-2 dalla trascrizione esistente; battute 3-13 sono una
% PRIMA BOZZA ricavata dalle parti d'arco (violino I un'ottava sotto in
% alto, bassi in fondo, violino II e viola ridotti a cio' che sta sotto
% le dita). Da confrontare con il manoscritto del maestro M. Vercesi.

graveAlto = {
    \key mi \minor
    \repeat volta 2 {
    %1
    <sol mi'>4.        <mi do'>8            <sol si>4.           <fad la>8         |
    %2   (red: nell'originale e' re diesis; la vecchia trascrizione aveva re)
    <fad red'>4.       dod'16     si        <si sol'>4.          <si sol'>8        |
    %3
    <mi dod' sol'>4.   <dod' fad'>8         <dod' fad'>4.        <lad dod' mi'>8   |
    %4
    <fad si red'>4.    <si fad'>8           <re si sol'>4.       <re sol si'>8     |
    %5
    mi'4.              la8                  sol4.                fad8              |
    %6
    fad4.              la8                  <fad re'>4.          <fad re'>8        |
    %7
    <si re'>4.         mi'8                 <la do'>4.           si8               |
    %8
    si2~                                    si8.       si16      si8.     si16     |
    %9
    mi'4.              mi'8                 <do' fad'>4.         mi'16    fad'     |
    %10
    <si sol'>4.        sol8                 fad4                 si                |
    %11
    <sol mi'>4.        <sol si>8            <mi la>4.            <red si>8         |
    }
    \alternative {
    { %12
    <red si~>2                              si8.       si,16     dod8.    red16    |
    }
    { %13
    <red si>1                                                                      |
    }
    }
}

graveMedio = {
    \key mi \minor
    \repeat volta 2 {
    %1
    si,4.              la,8                 si,4.                si,8              |
    %2-7
    s1*6
    %8
    la8.     la16      sol8.      fad16     sol4                 s4                |
    %9-11
    s1*3
    }
    \alternative {
    { %12
    s1 }
    { %13
    s1 }
    }
}

graveBasso = {
    \key mi \minor
    \repeat volta 2 {
    %1
    mi,2                                    s2                                     |
    %2
    si,4.              <sol, mi>8           fad,4.               mi,8              |
    %3
    lad,4.             lad,8                lad,4.               fad,8             |
    %4
    si,4.              si,8                 si,4.                sol,8             |
    %5
    <do mi>2                                <dod mi>4            la,               |
    %6
    re2                                     si,4.                si,8              |
    %7
    <sold, mi>2                             <la, mi>4            fad,              |
    %8
    red4.              si,8                 mi4                  re                |
    %9
    <do mi sol>4       <la, la do'>         la4.                 sol16    fad      |
    %10
    <mi, mi>4.         mi,8                 re4.                 re8               |
    %11
    do4.               do8                  do4.                 si,8              |
    }
    \alternative {
    { %12
    si,4.              la,8                 sol,4                fad,              |
    }
    { %13
    si,1                                                                           |
    }
    }
}
