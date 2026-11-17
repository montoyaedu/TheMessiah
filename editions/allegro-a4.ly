\version "2.24.0"

% Edizione da stampa: A4, nero, interruzioni automatiche.

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
  \allegroScore
}
