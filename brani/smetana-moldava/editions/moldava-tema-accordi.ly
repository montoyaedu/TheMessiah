\version "2.24.0"

% Sigle e note strutturali dell'accordo colorate.

\include "../../../impaginazioni/classica.ly"
\include "../dita/quarta-corda.ly"
sigle = ##t
coloriAccordo = ##t
cordeVociSotto = ##f
\include "../brano.ly"
\include "../intestazione.ly"
\header { subsubtitle = \legendaAccordo }

\moldavaScore
