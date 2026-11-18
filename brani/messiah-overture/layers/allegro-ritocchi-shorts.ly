\version "2.24.0"

% Ritocchi di posizione validi SOLO per l'impaginazione "shorts" (A6).
% Ogni blocco segue una voce per nome; gli spazi (s) portano al punto
% giusto: s1*4 = salta 4 battute, s4 = salta una semiminima.
allegroRitocchi = <<
  \context Voice = "violinoA" {
    s1*4                                  % battute 1-4
    s4                                    % battuta 5, 1o quarto
    \once \override StringNumber.self-alignment-X = #-1.5
    \once \override StringNumber.staff-padding = #3
    s4                                    % 2o quarto: mi, corda 1
    \once \override StringNumber.self-alignment-X = #-2.8
    \once \override StringNumber.staff-padding = #3
    s2                                    % 3o quarto: si, corda 1
  }
  \context Voice = "violinoB" {
    s1*4
    s2                                    % battuta 5, primi due quarti
    \once \override StringNumber.self-alignment-X = #-3
    \once \override StringNumber.staff-padding = #-3
    s2                                    % 3o quarto: re, corda 3
  }
>>
