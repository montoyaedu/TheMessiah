\version "2.24.0"

% Edizione per video verticali: A6, due sistemi per pagina, voci colorate.

#(set-default-paper-size "a6")
coloriVoci = ##t

\include "../lib/barre.ly"
\include "../lib/voci.ly"
\include "../music/allegro.ly"
\include "../layers/allegro-voci.ly"
\include "../layers/allegro-breaks-shorts.ly"
\include "../lib/allegro-score.ly"

\paper {
  top-margin = 10
  right-margin = 40
  bottom-margin = 40
  max-systems-per-page = 2
  print-page-number = false
}

\book {
  \header {
    title = "        Händel's Messiah Shorts"
    subtitle = "                    lilypond engraving"
    tagline = ""
  }
  \allegroScore
}
