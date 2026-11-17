\version "2.24.0"

% \colore #red  -> colora le teste di nota della voce, ma solo se
% l'edizione ha impostato  coloriVoci = ##t  prima degli \include.
% Serve per distinguere le voci nei video; in stampa resta spento.
colore =
#(define-music-function (c) (color?)
   (if (eq? #t (ly:parser-lookup 'coloriVoci))
       #{ \override NoteHead.color = #c #}
       #{ #}))
