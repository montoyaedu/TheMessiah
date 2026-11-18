\version "2.24.0"

% VIVALDI, CONCERTO RV 93 -- un solo \include per le edizioni di questo
% brano: funzioni comuni (lib/), note, armonia, voci, partiture.
% Le opzioni dell'edizione vanno impostate PRIMA di questo include.
\include "../../lib/opzioni.ly"
\include "../../lib/accordi.ly"
\include "../../lib/barre.ly"
\include "music/largo.ly"
\include "music/largo-chitarra.ly"
\include "armonia/accordi.ly"
\include "layers/largo-voci.ly"
\include "partiture.ly"

\layout {
  \context { \Staff explicitKeySignatureVisibility = #begin-of-line-visible }
}
