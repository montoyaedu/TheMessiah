\version "2.24.0"

% Primo movimento per chitarra sola (bozza), numero su ogni battuta.

\include "../../../impaginazioni/classica.ly"
\include "../brano.ly"
\include "../intestazione.ly"
\header { subtitle = "I. Allegro"  arranger = "riduzione per chitarra sola (6ª corda in re)" }

\score {
  \allegroUnoChitarraScore
  \layout {
    \context { \Score \override BarNumber.break-visibility = ##(#f #t #t) }
  }
}
