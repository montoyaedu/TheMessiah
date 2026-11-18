\version "2.24.0"

% IMPAGINAZIONE "shorts": A6 per video verticali, due sistemi per pagina,
% spazio libero a destra e in basso per l'inquadratura.

#(set-default-paper-size "a6")

\paper {
  top-margin = 10
  right-margin = 40
  bottom-margin = 40
  max-systems-per-page = 2
  print-page-number = false
}
