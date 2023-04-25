\version "2.24.0"
\language "italiano"

#(set-default-paper-size "a6")

\paper {
  top-margin = 60
  right-margin = 40
  max-systems-per-page = 1
  print-page-number = false
}

barre = #(define-music-function (parser location grow) (number?)
#{
  \override Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
  \once \override Arpeggio.positions  = #(lambda (grob)
    (let ((iv (ly:arpeggio::calc-positions grob))
          (grow-hi (max 0 (/ grow 2)))
          (grow-lo (min 0 (/ grow 2))))
      (cons (+ (car iv) grow-lo) (+ (cdr iv) grow-hi))))
  $(make-music 'EventChord 'elements (list (make-music 'ArpeggioEvent)))
#})

violinoA = \relative do' {
    \voiceOne
    \key mi \minor
    %1
    r4                 si'-3                sol\2-4               fad8\2-3    mi       |
    \break
    %2
    fad4\2             si,\3-1              fad'\2                \grace sold32\2 \trill (\grace la sold4\2) |
    %3
    \barre #-2
    ^ \markup { \hspace #-2 "V"}
    la4-1                 mi\2-1                 la2~-1                                   |
    \break
    %4
    la8      si-3        sol\2-4      la        fad\2        si       la        si       |
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

violinoB = \relative do' {
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
    \once \override NoteColumn.force-hshift = #-1
    mi                 sold                 la8
    \once \override NoteColumn.force-hshift = #1
    si       
    \once \override NoteColumn.force-hshift = #1
    do4                |
}

bassi = \relative do {
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

viola = \relative do {
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
    mi4.                          re8         
    \once \override NoteColumn.force-hshift = #1
    do
    si       la4              |
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
    title = "        Händel's Messiah Shorts"
    subtitle = "                    lilypond engraving"
    tagline = ""
  }
  \score {
    <<
      \new Staff = "main" \with {
        \clef "treble_8"
        \consists Merge_rests_engraver
      } \relative {
        \tempo \markup "Allegro moderato"
        \allegro_moderato
        \bar "|."
      }
      \new TabStaff \relative {
      <<
        \new TabVoice = "one" \violinoA
        \new TabVoice = "two" \violinoB
        \new TabVoice = "three" \viola
        \new TabVoice = "four" \bassi
      >>
      }
    >>
  }
}