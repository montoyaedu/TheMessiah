\version "2.24.0"

% Partiture pronte del concerto RV 93.

largoSigle = \seOpzione #'sigle \new ChordNames \with {
  chordChanges = ##t
  \override ChordName.font-size = #-0.5
} { \lingueSigle \conTrasporto \largoAccordi }

% ---------- II. Largo, chitarra sola ----------
largoChitarraScore = \score {
  <<
    \largoSigle
    \new Staff \with {
      \clef "treble_8"
      \consists Merge_rests_engraver
    } {
      \tempo \markup "Largo"
      \largoChitarraNotazione
    }
    \seIntavolatura \new TabStaff \with {
      stringTunings = #guitar-drop-d-tuning
    } \largoChitarraIntavolatura
  >>
}

% ---------- II. Largo, partitura originale ----------
% Liuto, due violini e basso, per leggere la partitura.
largoPartituraScore = \score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Liuto" \clef "treble_8" }
      { \tempo \markup "Largo" \largoLiuto }
    \new Staff \with { instrumentName = "Violino I" } \largoViolinoI
    \new Staff \with { instrumentName = "Violino II" } \largoViolinoII
    \new Staff \with { instrumentName = "Basso" \clef bass } \largoBasso
  >>
  \layout { indent = 22\mm }
}

% ---------- I. Allegro, chitarra sola ----------
allegroUnoChitarraScore = \score {
  <<
    \new Staff \with {
      \clef "treble_8"
      \consists Merge_rests_engraver
    } {
      \tempo \markup "Allegro"
      \allegroUnoNotazione
    }
    \seIntavolatura \new TabStaff \with {
      stringTunings = #guitar-drop-d-tuning
    } \allegroUnoIntavolatura
  >>
}
