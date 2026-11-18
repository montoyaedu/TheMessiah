\version "2.24.0"

% Come allegro1-chitarra, con intavolatura (sesta corda in re).

\include "../../../impaginazioni/classica.ly"
intavolatura = ##t
\include "../brano.ly"
\include "../intestazione.ly"
\header { subtitle = "I. Allegro"  arranger = "riduzione per chitarra sola (6ª corda in re)" }

\score {
  \allegroUnoChitarraScore
  \layout {
    \context { \Score \override BarNumber.break-visibility = ##(#f #t #t) }
  }
}
