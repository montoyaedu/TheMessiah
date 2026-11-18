\version "2.24.0"

% Strumenti per il layer degli accordi (armonia/accordi.ly) e per la
% provenienza delle note.

% ---------- trasporto ----------
% \conTrasporto musica -> la musica trasportata se l'opzione trasporto e'
% impostata, altrimenti invariata.
#(define (trasporta-se-serve m)
   (let ((arrivo (ly:parser-lookup 'trasporto)))
     (if (ly:pitch? arrivo)
         (ly:music-transpose (ly:music-deep-copy m)
                             (ly:pitch-diff arrivo (ly:make-pitch -1 2 0)))
         m)))

conTrasporto =
#(define-music-function (m) (ly:music?) (trasporta-se-serve m))

% ---------- sigle ----------
% Lettere internazionali (C D E F G A B), come nelle sigle jazz.
% Con sigleItaliane = ##t restano Do Re Mi.
#(define (sigla-internazionale altezza minuscola)
   (let ((alt (ly:pitch-alteration altezza)))
     (make-concat-markup
      (list (string (string-ref "CDEFGAB" (ly:pitch-notename altezza)))
            (cond ((= alt 1/2) (make-raise-markup 0.5 (make-fontsize-markup -3 (make-sharp-markup))))
                  ((= alt -1/2) (make-raise-markup 0.3 (make-fontsize-markup -3 (make-flat-markup))))
                  (else ""))))))

lingueSigle =
#(define-music-function () ()
   (if (eq? #t (ly:parser-lookup 'sigleItaliane))
       #{ #}
       #{ \set chordRootNamer = #sigla-internazionale
          \set chordNoteNamer = #sigla-internazionale #}))

% ---------- note strutturali dell'accordo ----------
% Colori (leggibili anche da chi confonde rosso e verde):
#(define colore-fondamentale (rgb-color 0.84 0.37 0.00))  % arancio-rosso
#(define colore-terza        (rgb-color 0.00 0.62 0.45))  % verde-azzurro
#(define colore-quinta       (rgb-color 0.00 0.45 0.70))  % blu
#(define colore-settima      (rgb-color 0.80 0.47 0.65))  % viola-rosa
% le note estranee all'accordo restano nere

#(define (note-di ev)
   (cond ((music-is-of-type? ev 'event-chord)
          (filter (lambda (e) (music-is-of-type? e 'note-event))
                  (ly:music-property ev 'elements)))
         ((music-is-of-type? ev 'note-event) (list ev))
         (else '())))

#(define (linea-accordi m)
   ;; lista di (inizio fine fondamentale membri)
   (filter-map
    (lambda (p)
      (let* ((ev (cdr p))
             (note (filter (lambda (n) (not (eq? #t (ly:music-property n 'bass))))
                           (note-di ev)))
             (in-piedi (filter (lambda (n) (null? (ly:music-property n 'octavation))) note)))
        (and (pair? note) (not (cadr (car p)))
             (list (caar p)
                   (+ (caar p) (ly:moment-main (ly:music-length ev)))
                   (ly:music-property (car (if (pair? in-piedi) in-piedi note)) 'pitch)
                   (map (lambda (n) (ly:music-property n 'pitch)) note)))))
    (con-istanti m)))

#(define (ruolo-colore altezza accordo)
   (let* ((fond (caddr accordo))
          (membro (any (lambda (q)
                         (and (= (ly:pitch-notename q) (ly:pitch-notename altezza))
                              (= (ly:pitch-alteration q) (ly:pitch-alteration altezza))))
                       (cadddr accordo)))
          (grado (modulo (- (ly:pitch-notename altezza) (ly:pitch-notename fond)) 7)))
     (and membro
          (case grado
            ((0) colore-fondamentale)
            ((2) colore-terza)
            ((4) colore-quinta)
            ((6) colore-settima)
            (else #f)))))

#(define (colora-per-accordo! note accordi)
   (let ((linea (linea-accordi accordi)))
     (for-each
      (lambda (p)
        (if (not (cadr (car p)))            ; non gli abbellimenti
            (let* ((t (caar p))
                   (acc (find (lambda (a) (and (<= (car a) t) (< t (cadr a)))) linea)))
              (if acc
                  (for-each
                   (lambda (n)
                     (let ((c (ruolo-colore (ly:music-property n 'pitch) acc)))
                       (if c
                           (set! (ly:music-property n 'tweaks)
                                 (acons 'color c (ly:music-property n 'tweaks))))))
                   (note-di (cdr p)))))))
      (con-istanti note))))

% Legenda da mettere nel titolo.
legendaAccordo = \markup \small {
  "note dell'accordo:  "
  \with-color #colore-fondamentale "fondamentale"  "  "
  \with-color #colore-terza "terza"  "  "
  \with-color #colore-quinta "quinta"  "  "
  \with-color #colore-settima "settima"  "  "
  "(nero: nota estranea)"
}

% ---------- provenienza delle note ----------
% \daTrascrizione / \daRiferimento: da qui in poi le note del rigo
% vengono dalla trascrizione (nere) o dalle edizioni di riferimento
% (colorate). Attivi solo con l'opzione provenienza = ##t.
#(define colore-riferimento (rgb-color 0.55 0.35 0.75))   % viola

#(define (tinta-rigo colore)
   (if (eq? #t (ly:parser-lookup 'provenienza))
       #{
         \override Staff.NoteHead.color = #colore
         \override Staff.Stem.color = #colore
         \override Staff.Beam.color = #colore
         \override Staff.Flag.color = #colore
         \override Staff.Accidental.color = #colore
         \override Staff.Dots.color = #colore
         \override Staff.Tie.color = #colore
       #}
       #{ #}))

daTrascrizione = #(define-music-function () () (tinta-rigo black))
daRiferimento  = #(define-music-function () () (tinta-rigo colore-riferimento))

legendaProvenienza = \markup \small {
  "nero: dalla trascrizione di M. Vercesi   "
  \with-color #colore-riferimento "viola: bozza dalle edizioni di riferimento"
}
