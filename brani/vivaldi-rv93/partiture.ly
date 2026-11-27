\version "2.24.0"

% Chitarra sola: tutte le voci su un rigo. Tempo ridotto, perche' l'orecchio
% abbia il tempo di sentire l'orchestra intera (l'autografo non indica tempo).
rvChitarraScore = \score {
  \new Staff \with {
    \clef "treble_8"
    \consists Merge_rests_engraver
  } {
    \tempo 4 = 76
    \rvNotazione
  }
}

% Le quattro parti come nell'autografo, all'altezza scritta: serve per
% confrontare la lettura con la fonte.
rvPartituraScore = \score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Leuto" }    { \clef treble \rvStruttura }
    \new Staff \with { instrumentName = "Violino I" }  { \clef treble \rvViolinoI }
    \new Staff \with { instrumentName = "Violino II" } { \clef treble \rvViolinoII }
    \new Staff \with { instrumentName = "Basso" }      { \clef bass \rvBasso }
  >>
}
