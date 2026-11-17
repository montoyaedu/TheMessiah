\version "2.24.0"

% Video verticali: A6, due sistemi per pagina, voci colorate, intavolatura.

#(set-default-paper-size "a6")
coloriVoci = ##t
intavolatura = ##t
cordeVociSotto = ##f   % qui le corde si sistemano a mano (ritocchi-shorts)
\include "../layers/allegro-breaks-shorts.ly"
\include "../layers/allegro-ritocchi-shorts.ly"
\include "../lib/tutto.ly"

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
