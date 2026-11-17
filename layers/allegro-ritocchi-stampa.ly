\version "2.24.0"

% Ritocchi per le impaginazioni larghe (A4, telefono).
% I numeri di corda della seconda voce finirebbero sopra il rigo, contro
% la prima voce: qui si nascondono (la corda si legge nell'intavolatura).
allegroRitocchi = <<
  \context Voice = "violinoB" {
    \omit StringNumber
    s1*11
  }
>>
