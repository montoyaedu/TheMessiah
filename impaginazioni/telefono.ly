\version "2.24.0"

% IMPAGINAZIONE "telefono": pagina stretta e alta, margini minimi.

#(set! paper-alist (cons '("telefono" . (cons (* 90 mm) (* 195 mm))) paper-alist))
#(set-default-paper-size "telefono")

sezioniACapo = ##t

\paper {
  top-margin = 4
  bottom-margin = 4
  left-margin = 3
  right-margin = 3
  print-page-number = false
}
