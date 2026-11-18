\version "2.24.0"

% Schermo del cellulare: pagina stretta e alta, margini minimi.

#(set! paper-alist (cons '("telefono" . (cons (* 90 mm) (* 195 mm))) paper-alist))
#(set-default-paper-size "telefono")
coloriVoci = ##t
\include "../dita/principale.ly"
\include "../lib/tutto.ly"
\include "../lib/intestazione.ly"

\paper {
  top-margin = 4
  bottom-margin = 4
  left-margin = 3
  right-margin = 3
  print-page-number = false
}

\overtureScore
