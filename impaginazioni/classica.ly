\version "2.24.0"

% IMPAGINAZIONE "classica": A4 da leggio, densita' da edizione per
% chitarra (circa quattro battute per rigo), margini ampi, sistemi ariosi.

#(set-default-paper-size "a4")
#(set-global-staff-size 20)

% ogni sezione (Grave, Allegro) comincia su un rigo nuovo
sezioniACapo = ##t

\paper {
  top-margin = 14\mm
  bottom-margin = 14\mm
  left-margin = 18\mm
  right-margin = 18\mm
  indent = 10\mm
  markup-system-spacing.basic-distance = #16
  system-system-spacing =
    #'((basic-distance . 13) (minimum-distance . 10) (padding . 2.5) (stretchability . 40))
  last-bottom-spacing.basic-distance = #12
  ragged-last-bottom = ##t
}

\layout {
  \context {
    \Score
    % note piu' larghe: piu' spazio per ogni valore ritmico
    \override SpacingSpanner.shortest-duration-space = #3.2
    \override SpacingSpanner.spacing-increment = #1.7
  }
}
