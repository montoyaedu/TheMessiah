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
        \remove Time_signature_engraver
        firstClef = ##f
        \magnifyStaff #2/3
      } \tuplet 3/4 { sold16 la sold }
      \new Staff \with {
        alignAboveContext = "main"
        \remove Time_signature_engraver
        firstClef = ##f
        \magnifyStaff #2/3
      } \tuplet 5/4 { sold16 la sold la sold }
      \new Staff \with {
        alignAboveContext = "main"
        \remove Time_signature_engraver
        firstClef = ##f
        \magnifyStaff #2/3
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
    fad4               si~                  si                  lad                |
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
    \override NoteHead.color = #red
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
    s2                                      re4                 dod8      si       |
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
    mi                 sold~                la8        si       do4                |
}

ccc = \relative do' {
    \voiceThree
    \override NoteHead.color = #darkgreen
    \shiftOff
    \key mi \minor
    \stemDown
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
    la                mi                     la                 la                 |
}

ddd = \relative do' {
    \voiceFour
    \override NoteHead.color = #blue
    \shiftOff
    \key mi \minor
    \stemDown
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
    mi4.                          re8         do         si       la4              |
}

allegro_moderato = {
  <<
  \aaa
  \new Voice \bbb
  \new Voice \ccc
  \new Voice \ddd
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