\version "2.24.0"

% Partiture pronte, comuni a tutte le edizioni.

% ---------- solo Allegro ----------
allegroRigo = \new Staff \with {
  \clef "treble_8"
  \consists Merge_rests_engraver
} {
  \tempo \markup "Allegro moderato"
  << \allegroNotazione \allegroRitocchi \allegroBreaks >>
  \bar "|."
}

allegroScore = \score {
  <<
    \allegroRigo
    \new TabStaff \allegroIntavolatura
  >>
}

% Le quattro parti d'arco originali, un rigo ciascuna.
allegroScoreVociSeparate = \score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Violino I"  \clef "treble_8" }
      { \tempo \markup "Allegro moderato" \violinoA \bar "|." }
    \new Staff \with { instrumentName = "Violino II" \clef "treble_8" } \violinoB
    \new Staff \with { instrumentName = "Viola"      \clef "treble_8" } \viola
    \new Staff \with { instrumentName = "Bassi"      \clef "treble_8" } \bassi
  >>
  \layout {
    indent = 22\mm
    \context { \Staff \omit Fingering \omit StringNumber \omit Arpeggio \omit TextScript }
  }
}

% ---------- Overture completa: Grave + Allegro ----------
overtureRigo = \new Staff \with {
  \clef "treble_8"
  \consists Merge_rests_engraver
} <<
  {
    \tempo \markup "Grave"
    \graveNotazione
    \bar "||"
    \tempo \markup "Allegro moderato"
    << \allegroNotazione \allegroRitocchi >>
    \bar "|."
  }
  \overtureBreaks
>>

overtureDinamiche = \new Dynamics { \graveDinamiche \allegroDinamiche }

overtureScore = \score {
  <<
    \overtureRigo
    \overtureDinamiche
    \new TabStaff { \graveIntavolatura \allegroIntavolatura }
  >>
}

overtureScoreSoloNote = \score {
  << \overtureRigo \overtureDinamiche >>
  \layout {
    \context { \Staff \omit Fingering \omit StringNumber \omit Arpeggio \omit TextScript }
  }
}
