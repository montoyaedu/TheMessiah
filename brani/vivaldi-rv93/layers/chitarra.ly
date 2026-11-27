\version "2.24.0"

% RV 93, PRIMO MOVIMENTO SU UN RIGO DI CHITARRA -- tutte le voci, non ancora
% reso chitarristico. Sesta corda in mi.
%
% - liuto e violini: un'ottava sotto l'autografo;
% - basso: all'altezza scritta; le note sotto il mi basso salgono di un'ottava
%   (\comprimi);
% - dei violini si stampano solo le note proprie (variabili ...Sola): dove
%   raddoppiano il liuto non c'e' niente da aggiungere.
%
% Ogni voce e' un layer che un'edizione puo' togliere, scrivendo PRIMA di
% includere brano.ly, per esempio:   rvConViolinoII = ##f

% Alza di un'ottava le note sotto il mi basso (mi, = -20 semitoni dal do').
comprimi =
#(define-music-function (m) (ly:music?)
   (music-map
    (lambda (x)
      (let ((p (ly:music-property x 'pitch)))
        (if (and (ly:pitch? p) (< (ly:pitch-semitones p) -20))
            (ly:music-set-property! x 'pitch
              (ly:pitch-transpose p (ly:make-pitch 1 0 0))))
        x))
    m))

#(for-each
  (lambda (s) (if (null? (ly:parser-lookup s)) (ly:parser-define! s #t)))
  '(rvConLiuto rvConViolinoI rvConViolinoII rvConBasso))

rvChitLiuto     = \transpose do' do \rvLiuto
rvChitViolinoI  = \transpose do' do \rvViolinoISola
rvChitViolinoII = \transpose do' do \rvViolinoIISola
rvChitBasso     = \comprimi \rvBasso

rvStruttura = {
  \bar ".|:"
  s1*23 \bar ":..:"
  s1*28 \bar ":|."
}

rvNotazione = <<
  \rvStruttura
  \seOpzione #'rvConLiuto     \context Voice = "liuto"    { \voiceOne   \colore #red \voce "rvChitLiuto" }
  \seOpzione #'rvConViolinoI  \context Voice = "violinoI" { \voiceThree \colore #(rgb-color 0.8 0.45 0) \voce "rvChitViolinoI" }
  \seOpzione #'rvConViolinoII \context Voice = "violinoII" { \voiceFour \colore #blue \voce "rvChitViolinoII" }
  \seOpzione #'rvConBasso     \context Voice = "basso"    { \voiceTwo   \colore #darkgreen \voce "rvChitBasso" }
>>
