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
      % le corde del canto servono all'intavolatura; sul rigo basta l'avviso
      \omit StringNumber
    } {
      \tempo \markup "Allegro commodo non agitato"
      << \moldavaNotazione
         { \partial 8 s8 s2._\markup \italic "il canto sempre sulla 4ª corda (5ª dove scende sotto il re)" } >>
      \bar "||"
    }
    \seIntavolatura \new TabStaff \moldavaIntavolatura
  >>
}
