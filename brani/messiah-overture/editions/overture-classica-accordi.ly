\version "2.24.0"

% Sigle jazz sopra il rigo e note strutturali dell'accordo colorate.

\include "../../../impaginazioni/classica.ly"
\include "../dita/principale.ly"
sigle = ##t
coloriAccordo = ##t
\include "../brano.ly"
\include "../intestazione.ly"
\header { subtitle = \legendaAccordo }

\overtureScore
