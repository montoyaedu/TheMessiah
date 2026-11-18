\version "2.24.0"

% MESSIAH, OVERTURE -- un solo \include per le edizioni di questo brano:
% funzioni comuni (lib/), note, armonia, voci, partiture.
% Le opzioni dell'edizione vanno impostate PRIMA di questo include.
\include "../../lib/opzioni.ly"
\include "../../lib/accordi.ly"
\include "../../lib/barre.ly"
\include "music/grave.ly"
\include "music/allegro.ly"
\include "music/allegro-finale.ly"
\include "armonia/accordi.ly"
\include "armonia/grave.ly"
\include "armonia/allegro.ly"
\include "layers/provenienza.ly"
\include "layers/grave-voci.ly"
\include "layers/allegro-voci.ly"
\include "layers/allegro-finale-voci.ly"
\include "partiture.ly"

% La tonalita' viene ripetuta all'inizio di ogni sezione nei file di
% music/: se non cambia, non va ristampata a meta' o in fondo al rigo.
\layout {
  \context {
    \Staff
    explicitKeySignatureVisibility = #begin-of-line-visible
  }
  \context {
    \TabStaff
    explicitKeySignatureVisibility = #begin-of-line-visible
  }
}
