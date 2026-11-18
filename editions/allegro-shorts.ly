\version "2.24.0"

% Video verticali: due sistemi per pagina, voci colorate, intavolatura.

\include "../impaginazioni/shorts.ly"
\include "../dita/principale.ly"
coloriVoci = ##t
intavolatura = ##t
cordeVociSotto = ##f   % qui le corde si sistemano a mano (ritocchi-shorts)
\include "../layers/allegro-breaks-shorts.ly"
\include "../layers/allegro-ritocchi-shorts.ly"
\include "../lib/tutto.ly"

\book {
  \header {
    title = "        Händel's Messiah Shorts"
    subtitle = "                    lilypond engraving"
    tagline = ""
  }
  \allegroScore
}
