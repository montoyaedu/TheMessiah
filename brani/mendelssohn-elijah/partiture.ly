\version "2.24.0"

elijahScore = \score {
  <<
    \new Staff \with {
      \clef "treble_8"
      \consists Merge_rests_engraver
      \omit StringNumber     % le corde servono all'intavolatura
    } {
      \tempo \markup "Moderato, ma poco a poco con più di fuoco" 4 = 92
      \elijahNotazione
      \bar "||"
    }
    \seIntavolatura \new TabStaff \elijahIntavolatura
  >>
}
