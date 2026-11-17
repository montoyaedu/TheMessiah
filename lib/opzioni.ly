\version "2.24.0"

% Opzioni che un'edizione puo' impostare PRIMA di \include "../lib/tutto.ly".
% Valori predefiniti (edizione "classica"):
%   intavolatura     = ##f   solo notazione; ##t aggiunge il rigo di tablatura
%   coloriVoci       = ##f   teste di nota nere; ##t una voce per colore
%   cordeVociSotto   = ##t   numeri di corda delle voci inferiori sotto il rigo
%   allegroBreaks    = { }   interruzioni automatiche
%   allegroRitocchi  = { }   nessun ritocco manuale
%   overtureBreaks   = { }
#(define (predefinito nome valore)
   (if (null? (ly:parser-lookup nome))
       (ly:parser-define! nome valore)))
#(predefinito 'intavolatura #f)
#(predefinito 'coloriVoci #f)
#(predefinito 'cordeVociSotto #t)
#(for-each (lambda (nome) (predefinito nome #{ { } #}))
           '(allegroBreaks allegroRitocchi overtureBreaks))

% \colore #red -> colora le teste di nota, solo se coloriVoci = ##t.
colore =
#(define-music-function (c) (color?)
   (if (eq? #t (ly:parser-lookup 'coloriVoci))
       #{ \override NoteHead.color = #c #}
       #{ #}))

% \cordeSotto \voce -> mette i numeri di corda sotto il rigo (come scrivere
% _\3 su ogni nota), solo se cordeVociSotto = ##t.
cordeSotto =
#(define-music-function (m) (ly:music?)
   (if (eq? #t (ly:parser-lookup 'cordeVociSotto))
       (music-map
        (lambda (x)
          (if (music-is-of-type? x 'string-number-event)
              (set! (ly:music-property x 'direction) DOWN))
          x)
        (ly:music-deep-copy m))
       m))

% \seIntavolatura musica -> la musica solo se intavolatura = ##t.
seIntavolatura =
#(define-music-function (m) (ly:music?)
   (if (eq? #t (ly:parser-lookup 'intavolatura)) m #{ #}))
