\version "2.24.0"
\language "italiano"
\key mi \minor

aaa = \relative do'' {
    \voiceOne
    %1
    r4                 si'                  sol                 fad8      mi       |
    %2
    fad4               si,                  fad'                sold \trill        |
    %3
    la                 mi                   la2~                                   |
    %4
    la8      si        sol        la        fad        si       la        si       |
    \break
    %5
    sol4               mi                   si'2~                                  |
    %6
    si4                la8        sol       la4                 sol8      fad      |
    %7
    sol2~                                   sol8       fad      sol       mi       |
    %8
    fad4               si~                  si                  la                 |
    \break
    %9
    si8      si,       dod        red       mi2~                                   |
    %10
    mi4                re8        dod       re4                 dod8      si       |
    %11
    dod4.                         si8       la         sol      fad       mi       |
}

bbb = \relative do'' {
    \voiceTwo
    %1
    r1                                                                             |
    %2
    r1                                                                             |
    %3
    r1                                                                             |
    %4
    r1                                                                             |
    %5
    r2                                      re4                 do8       si       |
}

allegro_moderato = {
  <<
  \aaa
  \new Voice \bbb
  >>
}

\book {
  \header {
    title = ""
    tagline = ""
  }
  \score {
    <<
      \new Staff {
        \tempo \markup "Allegro Moderato"
        \allegro_moderato
        \bar "|."
      }
    >>
  }
}
