\version "2.24.0"
\language "italiano"

#(set-default-paper-size "a6")

\paper {
  top-margin = 60
  bottom-margin = 40
  left-margin = 10
  right-margin = 20
  max-systems-per-page = 1
}

violinoA = \relative do'' {
    \voiceOne
    \key mi \minor
    %1
    r4                 si'                  sol                 fad8      mi       |
    \break
    %2
    fad4               si,                  fad'
    <<
      sold \trill
      \new Staff \with {
        alignAboveContext = "main"
        \remove Time_signature_engraver
        firstClef = ##f
        \magnifyStaff #1/2
        \override VerticalAxisGroup
            .default-staff-staff-spacing.basic-distance = #1
      } { (sold16 la sold8) }
      \new Staff \with {
        alignAboveContext = "main"
        \remove Time_signature_engraver
        firstClef = ##f
        \magnifyStaff #1/2
        \override VerticalAxisGroup
            .default-staff-staff-spacing.basic-distance = #1
      } \tuplet 5/4 { (sold16 la sold la sold) }
      \new Staff \with {
        alignAboveContext = "main"
        \remove Time_signature_engraver
        firstClef = ##f
        \magnifyStaff #1/2
        \override VerticalAxisGroup
            .default-staff-staff-spacing.basic-distance = #1
      } \tuplet 5/4 { (sold16 la sold fad sold) }
    >>                                                                             |
    %3
    la4                mi                   la2~                                   |
    \break
    %4
    la8      si        sol        la        fad        si       la        si       |
    \break
    %5
    sol4               mi\1                 si'2~                                  |
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
    do4.                          si8       
    \once \override NoteColumn.force-hshift = #1
    la         sol      fad       mi       |
}

violinoB = \relative do'' {
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
    r4                 
    \once \override NoteColumn.force-hshift = #1
    mi4\3                re                  dod8      si       |
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
    mi                 sold                 la8
    \once \override NoteColumn.force-hshift = #1
    si       
    \once \override NoteColumn.force-hshift = #1
    do4                |
}

bassi = \relative do' {
    \voiceFour
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
    la                mi                     la2~                                  |
}

viola = \relative do' {
    \voiceThree
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
  \violinoA
  \new Voice \violinoB
  \new Voice \viola
  \new Voice \bassi
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
        \tempo \markup "Allegro moderato"
        \allegro_moderato
        \bar "|."
      }
    >>
  }
}