\version "2.24.0"

moldavaSigle = \seOpzione #'sigle \new ChordNames \with {
  chordChanges = ##t
  \override ChordName.font-size = #-0.5
} { \lingueSigle \conTrasporto \moldavaArmonia }

moldavaScore = \score {
  <<
    \moldavaSigle
    \new Staff \with {
      \clef "treble_8"
      \consists Merge_rests_engraver
    } {
      \tempo \markup "Allegro commodo non agitato"
      << \moldavaNotazione \moldavaIndicazioni
         { s2.*8 \bar "||" s2.*16 \bar "||" s2.*9 \bar "||" s2.*10 } >>
      \bar "|."
    }
  >>
}
