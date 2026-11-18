\version "2.24.0"

% IMPAGINAZIONE "ariosa": A4, note grandi e larghe (due-tre battute per
% rigo). Per lo studio, la prima vista e per scrivere a matita.

#(set-default-paper-size "a4")
#(set-global-staff-size 23)

sezioniACapo = ##t

\paper {
  top-margin = 14\mm
  bottom-margin = 14\mm
  left-margin = 15\mm
  right-margin = 15\mm
  indent = 0
  markup-system-spacing.basic-distance = #18
  system-system-spacing =
    #'((basic-distance . 17) (minimum-distance . 13) (padding . 4) (stretchability . 40))
  ragged-last-bottom = ##t
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.shortest-duration-space = #4.2
    \override SpacingSpanner.spacing-increment = #2.0
  }
}
