\version "2.24.0"

% Opzioni che un'edizione puo' impostare PRIMA di includere il file brano.ly del brano.
% Valori predefiniti (edizione "classica"):
%   intavolatura     = ##f   solo notazione; ##t aggiunge il rigo di tablatura
%   coloriVoci       = ##f   teste di nota nere; ##t una voce per colore
%   cordeVociSotto   = ##t   numeri di corda delle voci inferiori sotto il rigo
%   sigle            = ##f   ##t: sigle degli accordi (Em, B7/D#) sopra il rigo
%   sigleItaliane    = ##f   ##t: sigle con Do Re Mi invece di C D E
%   coloriAccordo    = ##f   ##t: fondamentale, terza, quinta e settima colorate
%   provenienza      = ##f   ##t: colora le note che vengono dalle edizioni
%                            di riferimento e non dalla trascrizione
%   gradi            = ##f   ##t: riga con l'armonia in numeri romani
%   funzioni         = ##f   ##t: riga con l'armonia funzionale
%   trasporto        = (niente)   una nota, es.  trasporto = la :
%                            trasporta tutto da mi a quella tonalita';
%                            le diteggiature non vengono applicate
%   sezioniACapo     = ##f   ##t: ogni sezione comincia su un rigo nuovo
%                            (di solito lo decide l'impaginazione)
%   allegroBreaks    = { }   interruzioni automatiche
%   allegroRitocchi  = { }   nessun ritocco manuale
%   overtureBreaks   = { }
#(define (predefinito nome valore)
   (if (null? (ly:parser-lookup nome))
       (ly:parser-define! nome valore)))
#(predefinito 'intavolatura #f)
#(predefinito 'coloriVoci #f)
#(predefinito 'cordeVociSotto #t)
#(predefinito 'sezioniACapo #f)
#(predefinito 'gradi #f)
#(predefinito 'sigle #f)
#(predefinito 'coloriAccordo #f)
#(predefinito 'provenienza #f)
#(predefinito 'funzioni #f)
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

% \aCapo -> \break, solo se sezioniACapo = ##t.
aCapo =
#(define-music-function () ()
   (if (eq? #t (ly:parser-lookup 'sezioniACapo)) #{ \break #} #{ #}))

% \seOpzione #'gradi musica -> la musica solo se quell'opzione e' ##t.
seOpzione =
#(define-music-function (nome m) (symbol? ly:music?)
   (if (eq? #t (ly:parser-lookup nome)) m #{ #}))

% \armonia \lyricmode { "V^6_5/iv"2 ... } -> compone ogni sigla:
% base, cifre sopra (^) e sotto (_), e "/grado" per le dominanti secondarie.
#(define (sigla-armonia str)
   (let* ((barra (string-index str #\/))
          (di (if barra (substring str barra) ""))
          (corpo0 (if barra (substring str 0 barra) str))
          (chiusa (string-suffix? ")" corpo0))
          (coda (if chiusa ")" ""))
          (corpo (if chiusa (substring corpo0 0 (1- (string-length corpo0))) corpo0))
          (i-su (string-index corpo #\^))
          (i-giu (string-index corpo #\_))
          (fine-base (or i-su i-giu (string-length corpo)))
          (base (substring corpo 0 fine-base))
          (su (if i-su (substring corpo (1+ i-su) (or i-giu (string-length corpo))) ""))
          (giu (if i-giu (substring corpo (1+ i-giu)) "")))
     (make-concat-markup
      (list base
            (make-hspace-markup 0.1)
            (make-combine-markup
             (make-raise-markup 0.9 (make-fontsize-markup -3 su))
             (make-lower-markup 0.5 (make-fontsize-markup -3 giu)))
            coda di))))

armonia =
#(define-music-function (m) (ly:music?)
   (music-map
    (lambda (x)
      (if (and (music-is-of-type? x 'lyric-event)
               (string? (ly:music-property x 'text)))
          (set! (ly:music-property x 'text)
                (sigla-armonia (ly:music-property x 'text))))
      x)
    m))

% \seIntavolatura musica -> la musica solo se intavolatura = ##t.
seIntavolatura =
#(define-music-function (m) (ly:music?)
   (if (eq? #t (ly:parser-lookup 'intavolatura)) m #{ #}))

% ---------------------------------------------------------------------
% \voce "violinoA" -> le note di violinoA piu', se esiste, il layer
% violinoADita (vedi dita/). I segni scritti sugli spazi del layer
% (dita, corde) passano alla nota che inizia nello stesso istante; il
% resto del layer (barre', \override) viene suonato in parallelo nella
% stessa voce. Un segno che non trova una nota produce un avviso.
#(define (foglie m grazia)
   ;; eventi ritmici in ordine di scrittura: lista di (musica . grazia?)
   (cond
    ((music-is-of-type? m 'event-chord) (list (cons m grazia)))
    ((eq? (ly:music-property m 'name) 'GraceMusic)
     (foglie (ly:music-property m 'element) #t))
    ((ly:duration? (ly:music-property m 'duration)) (list (cons m grazia)))
    (else
     ;; contenitori: prima 'element (es. il corpo di un ritornello),
     ;; poi 'elements (es. prima e seconda volta)
     (append
      (if (ly:music? (ly:music-property m 'element))
          (foglie (ly:music-property m 'element) grazia)
          '())
      (append-map (lambda (e) (foglie e grazia))
                  (ly:music-property m 'elements))))))

#(define (con-istanti m)
   ;; lista di (chiave . musica); chiave = (istante numero-di-abbellimento)
   (let ((pos 0) (g 0) (out '()))
     (for-each
      (lambda (f)
        (let* ((ev (car f))
               (len (ly:moment-main (ly:music-length ev))))
          (cond
           ((cdr f) (set! out (cons (cons (list pos g) ev) out)) (set! g (1+ g)))
           ((> len 0) (set! out (cons (cons (list pos #f) ev) out))
                      (set! pos (+ pos len)) (set! g 0)))))
      (foglie m #f))
     (reverse out)))

#(define (segni ev)
   (if (music-is-of-type? ev 'event-chord)
       (filter (lambda (e) (not (music-is-of-type? e 'rhythmic-event)))
               (ly:music-property ev 'elements))
       (ly:music-property ev 'articulations)))

#(define (togli-segni! ev)
   (if (music-is-of-type? ev 'event-chord)
       (set! (ly:music-property ev 'elements)
             (filter (lambda (e) (music-is-of-type? e 'rhythmic-event))
                     (ly:music-property ev 'elements)))
       (set! (ly:music-property ev 'articulations) '())))

#(define (aggiungi-segni! nota nuovi)
   (if (music-is-of-type? nota 'event-chord)
       (let* ((note (filter (lambda (e) (music-is-of-type? e 'note-event))
                            (ly:music-property nota 'elements)))
              (dita (filter (lambda (e) (music-is-of-type? e 'fingering-event)) nuovi))
              (corde (filter (lambda (e) (music-is-of-type? e 'string-number-event)) nuovi))
              (altri (filter (lambda (e) (not (or (memq e dita) (memq e corde)))) nuovi))
              (dai (lambda (lista)
                     (for-each
                      (lambda (n s)
                        (set! (ly:music-property n 'articulations)
                              (append (ly:music-property n 'articulations) (list s))))
                      (list-head note (min (length note) (length lista)))
                      (list-head lista (min (length note) (length lista)))))))
         (dai dita) (dai corde)
         (set! (ly:music-property nota 'elements)
               (append (ly:music-property nota 'elements) altri)))
       (set! (ly:music-property nota 'articulations)
             (append (ly:music-property nota 'articulations) nuovi))))

voce =
#(define-music-function (nome) (string?)
   (let* ((originale (ly:parser-lookup (string->symbol nome)))
          (layer (ly:parser-lookup (string->symbol (string-append nome "Dita"))))
          (nome-accordi (ly:parser-lookup 'accordiCorrenti))
          (accordi (and (string? nome-accordi)
                        (ly:parser-lookup (string->symbol nome-accordi))))
          (trasportata (ly:pitch? (ly:parser-lookup 'trasporto))))
     (if (not (ly:music? originale))
         (ly:error "\\voce: la voce ~a non esiste" nome))
     (let ((note (ly:music-deep-copy originale)))
       ;; 1. note strutturali dell'accordo (prima del trasporto)
       (if (and (eq? #t (ly:parser-lookup 'coloriAccordo)) (ly:music? accordi))
           (colora-per-accordo! note accordi))
       (cond
        ;; 2a. trasportata: niente diteggiatura, le corde non varrebbero piu'
        (trasportata (trasporta-se-serve note))
        ;; 2b. senza layer di diteggiatura
        ((not (ly:music? layer)) note)
        ;; 2c. con la diteggiatura
        (else
         (let ((resto (ly:music-deep-copy layer))
               (tabella (make-hash-table)))
           (for-each
            (lambda (p)
              (if (pair? (segni (cdr p)))
                  (hash-set! tabella (car p) (cdr p))))
            (con-istanti layer))
           (for-each
            (lambda (p)
              (let ((sorgente (hash-ref tabella (car p))))
                (if (and sorgente
                         (or (music-is-of-type? (cdr p) 'note-event)
                             (music-is-of-type? (cdr p) 'event-chord)))
                    (begin
                      (aggiungi-segni! (cdr p) (map ly:music-deep-copy (segni sorgente)))
                      (hash-remove! tabella (car p))))))
            (con-istanti note))
           (hash-for-each
            (lambda (chiave ev)
              (ly:music-warning ev (format #f "~aDita: nessuna nota in questo istante" nome)))
            tabella)
           (for-each (lambda (p) (togli-segni! (cdr p))) (con-istanti resto))
           #{ << #note #resto >> #}))))))
