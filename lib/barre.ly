\version "2.24.0"

% Barré: parentesi verticale accanto all'accordo.
% Uso: \barre #3 ^\markup "IV" nota
barre = #(define-music-function (parser location grow) (number?)
#{
  \override Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
  \once \override Arpeggio.positions  = #(lambda (grob)
    (let ((iv (ly:arpeggio::calc-positions grob))
          (grow-hi (max 0 (/ grow 2)))
          (grow-lo (min 0 (/ grow 2))))
      (cons (+ (car iv) grow-lo) (+ (cdr iv) grow-hi))))
  $(make-music 'EventChord 'elements (list (make-music 'ArpeggioEvent)))
#})
