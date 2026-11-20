\version "2.24.0"

% Sigle in stile jazz sopra il rigo e note strutturali dell'accordo colorate.
% Gli accordi sono dedotti dalle voci trascritte (vedi armonia/accordi.ly).

\include "../../../impaginazioni/classica.ly"
\include "../dita/schizzo.ly"
sigle = ##t
coloriAccordo = ##t
\include "../brano.ly"
\include "../intestazione.ly"
\header { subsubtitle = \legendaAccordo }

\elijahRecScore
\elijahScore
