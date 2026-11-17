\version "2.24.0"

% Come allegro-a4, ma senza diteggiature, numeri di corda e intavolatura.

#(set-default-paper-size "a4")

\include "../lib/barre.ly"
\include "../lib/voci.ly"
\include "../music/allegro.ly"
\include "../layers/allegro-voci.ly"
\include "../layers/allegro-breaks-auto.ly"
\include "../lib/allegro-score.ly"

\book {
  \header {
    title = "Messiah – Overture"
    subtitle = "Allegro moderato"
    composer = "G. F. Händel"
    arranger = "trascrizione per chitarra"
    tagline = ""
  }
  \score {
    \allegroScoreSoloNote
    \layout {
      \context { \Voice \omit Fingering \omit StringNumber }
    }
  }
}
