\version "2.24.0"

% Partiture dell'Allegro, comuni a tutte le edizioni.
% L'edizione deve aver gia' incluso musica, voci e un file di breaks.

allegroRigo = \new Staff \with {
  \clef "treble_8"
  \consists Merge_rests_engraver
} {
  \tempo \markup "Allegro moderato"
  << \allegroNotazione \allegroBreaks >>
  \bar "|."
}

% notazione + intavolatura
allegroScore = \score {
  <<
    \allegroRigo
    \new TabStaff \allegroIntavolatura
  >>
}

% sola notazione
allegroScoreSoloNote = \score { \allegroRigo }
