\version "2.24.0"

% Bozza di lavoro dell'Allegro: numero su ogni battuta, contato
% dall'inizio dell'Allegro come nel manoscritto.

\include "../../../impaginazioni/classica.ly"
\include "../dita/principale.ly"
\include "../brano.ly"

\header {
  title = "Messiah – Overture"
  subtitle = "Allegro moderato (bozza di lavoro)"
  composer = "G. F. Händel"
  arranger = "trascrizione per chitarra di M. Vercesi"
  tagline = ""
}

\score {
  \allegroScore
  \layout {
    \context { \Score \override BarNumber.break-visibility = ##(#f #t #t) }
  }
}
