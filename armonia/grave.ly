\version "2.24.0"

% ARMONIA del Grave, in due scritture parallele alla musica.
% Non dipendono dalla tonalita': restano identiche se si trasporta.
%
%   graveGradi     armonia classica: gradi in numeri romani
%                  (minuscolo = minore), rivolti con le cifre del basso
%   graveFunzioni  armonia funzionale: t s d = tonica, sottodominante,
%                  dominante minori; D = dominante maggiore; P = relativo
%                  (tP = relativo della tonica); DD = dominante della
%                  dominante; (D) = dominante dell'accordo che segue
%
% Scrittura:  "base^sopra_sotto/di"  -- per esempio "V^6_5/iv".
% Nei gradi le cifre sono quelle del basso numerato; nelle funzioni
% "sopra" e' una nota aggiunta (7, 6, v = senza fondamentale) e "sotto"
% e' la nota dell'accordo che sta al basso (3 = terza, 5 = quinta).
% "(p)" = accordo di passaggio.

graveGradi = \armonia \lyricmode {
  %1
  "i"4.              "iv^6_4"8            "i^6_4"4.            "V^7"8            |
  %2
  "V"4.              "i^6"8               "(p)"4.              "i"8              |
  %3
  "vii°^7/V"4.       "V^6/V"8             "V^6/V"4.            "V^7/V"8          |
  %4
  "V"4.              "V"8                 "III^6"4.            "III"8            |
  %5
  "VI"2                                   "V^6_5/VII"4         "V^7/VII"4        |
  %6
  "VII"2                                  "v"2                                   |
  %7
  "V^6_5/iv"2                             "iv"4                "ii°"4            |
  %8
  "V^6_5"4.          "V^7"8               "i"4                 "v^6"4            |
  %9
  "VI"4              "iv"4                "ii°^6"2                               |
  %10
  "i"2                                    "v^6"2                                 |
  %11
  "VI"2                                   "iv^6"4.             "V"8              |
  %12
  "V"1                                                                           |
  %13
  "V"1                                                                           |
}

graveFunzioni = \armonia \lyricmode {
  %1
  "t"4.              "s_5"8               "t_5"4.              "D^7"8            |
  %2
  "D"4.              "t_3"8               "(p)"4.              "t"8              |
  %3
  "DD^v"4.           "DD_3"8              "DD_3"4.             "DD^7"8           |
  %4
  "D"4.              "D"8                 "tP_3"4.             "tP"8             |
  %5
  "sP"2                                   "(D^7_3)"4           "(D^7)"4          |
  %6
  "dP"2                                   "d"2                                   |
  %7
  "(D^7_3)"2                              "s"4                 "s^6_6"4          |
  %8
  "D^7_3"4.          "D^7"8               "t"4                 "d_3"4            |
  %9
  "sP"4              "s"4                 "s^6"2                                 |
  %10
  "t"2                                    "d_3"2                                 |
  %11
  "sP"2                                   "s_3"4.              "D"8              |
  %12
  "D"1                                                                           |
  %13
  "D"1                                                                           |
}
