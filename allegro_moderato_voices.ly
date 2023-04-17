\version "2.24.0"
\language "italiano"

aaa = \relative do'' {
    \voiceOne
    \key mi \minor
    %1
    r4                 si'                  sol                 fad8      mi       |
    %2
    fad4               si,                  fad'
    <<
      sold \trill
      \new Staff \with {
        alignAboveContext = "main"
      } \tuplet 5/4 { sold16 la sold la sold }
      \new Staff \with {
        alignAboveContext = "main"
      } \tuplet 5/4 { sold16 la sold fad sold }
    >>                                                                             |
    %3
    la4                mi                   la2~                                   |
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
    \key mi \minor
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
    %6
    do4                fad,                 do'                 red                |
    %7
    mi                 si                   mi2~                                   |
    %8
    mi8      fad       re         mi        dod        fad      mi        fad      |
    %9
    red4               fad,                 si                  la8       sol      |
    %10
    la4                fad4~                fad                 mi                 |
}

ccc = \relative do' {
    \voiceThree
    \shiftOff
    \key mi \minor
    \stemDown
    %1
    r1                                                                             |
    %2
    r1                                                                             |
    %3
    r1                                                                             |
    %4
    r1                                                                             |
    %5
    r1                                                                             |
    %6
    r1                                                                             |
    %7
    r1                                                                             |
    %8
    r1                                                                             |
    %9
    r4                si                     sol                fad8       mi      |
    %10
    fad4              si                     fad                sold               |
}

allegro_moderato = {
  <<
  \aaa
  \new Voice \bbb
  \new Voice \ccc
  >>
}

\book {
  \header {
    title = ""
    tagline = ""
  }
  \score {
    <<
      \new Staff = "main" \with {
        instrumentName = "Guitar"
        \consists Merge_rests_engraver
      } \relative {
        \tempo \markup "Allegro Moderato"
        \allegro_moderato
        \bar "|."
      }
    >>
  }
}
