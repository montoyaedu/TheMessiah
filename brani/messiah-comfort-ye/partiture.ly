\version "2.24.0"

comfortSigle = \seOpzione #'sigle \new ChordNames \with {
  chordChanges = ##t
  \override ChordName.font-size = #-0.5
} { \lingueSigle \conTrasporto \comfortAccordi }

% Chitarra sola, con il testo sotto le note del canto.
comfortScore = \score {
  <<
    \comfortSigle
    \new Staff \with {
      \clef "treble_8"
      \consists Merge_rests_engraver
    } {
      \tempo \markup "Larghetto e piano"
      \comfortNotazione
      \bar "||"
    }
    \new Lyrics \lyricsto "canto" \comfortTesto
    \seIntavolatura \new TabStaff \comfortIntavolatura
  >>
}
