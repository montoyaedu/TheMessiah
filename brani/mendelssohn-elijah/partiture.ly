\version "2.24.0"

elijahScore = \score {
  <<
    \new Staff \with {
      \clef "treble_8"
      \consists Merge_rests_engraver
      \omit StringNumber     % le corde servono all'intavolatura
    } {
      \tempo \markup "Moderato, ma poco a poco con più di fuoco" 4 = 92
      << \elijahNotazione
         { \partial 8 s8 s1*5 s1_\markup \italic "(basso libero)" s1 } >>
      \bar "||"
    }
    \seIntavolatura \new TabStaff \elijahIntavolatura
  >>
}
