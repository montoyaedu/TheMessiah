\version "2.24.0"

% Come largo-chitarra, con sigle e note strutturali colorate.

\include "../../../impaginazioni/classica.ly"
sigle = ##t
coloriAccordo = ##t
\include "../brano.ly"
\include "../intestazione.ly"
\header { arranger = "riduzione per chitarra sola (6ª corda in re)" }
\header { subsubtitle = \legendaAccordo }

\largoChitarraScore
