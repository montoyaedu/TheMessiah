\version "2.24.0"

% Valori predefiniti per tutto cio' che un'edizione puo' impostare PRIMA
% di  \include "../lib/tutto.ly".  Se l'edizione non dice nulla:
%   coloriVoci      = ##f   teste di nota nere
%   allegroBreaks   = { }   interruzioni automatiche
%   allegroRitocchi = { }   nessun ritocco manuale
%   overtureBreaks  = { }
#(for-each
  (lambda (nome)
    (if (null? (ly:parser-lookup nome))
        (ly:parser-define! nome #{ { } #})))
  '(allegroBreaks allegroRitocchi overtureBreaks))

% \colore #red -> colora le teste di nota, solo se coloriVoci = ##t.
colore =
#(define-music-function (c) (color?)
   (if (eq? #t (ly:parser-lookup 'coloriVoci))
       #{ \override NoteHead.color = #c #}
       #{ #}))
