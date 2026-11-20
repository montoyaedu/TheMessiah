\version "2.24.0"

elijahScore = \score {
  \header { piece = "Overture" }
  <<
    \seOpzione #'sigle \new ChordNames \with { chordChanges = ##t \override ChordName.font-size = #-0.5 }
      { \lingueSigle \conTrasporto \elijahAccordi }
    \new Staff \with {
      \clef "treble_8"
      \consists Merge_rests_engraver
      \omit StringNumber     % le corde servono all'intavolatura
    } {
      \tempo \markup "Moderato, ma poco a poco con più di fuoco" 4 = 92
      << \elijahNotazione \elijahDinamiche >>
      \bar "|."
    }
    \seIntavolatura \new TabStaff \elijahIntavolatura
  >>
}

% Introduzione: la voce di Elia col testo e un basso sotto.
elijahRecScore = \score {
  <<
    \seOpzione #'sigle \new ChordNames \with { chordChanges = ##t \override ChordName.font-size = #-0.5 }
      { \lingueSigle \conTrasporto \elijahRecAccordi }
    \new Staff \with {
      \clef "treble_8"
      \consists Merge_rests_engraver
    } {
      \tempo \markup "Grave" 4 = 60
      \elijahRecNotazione
      \bar "||"
    }
    \new Lyrics \lyricsto "elia" \elijahTestoRec
    \seIntavolatura \new TabStaff \elijahRecIntavolatura
  >>
  \header { piece = "Introduzione – recitativo di Elia" }
}
