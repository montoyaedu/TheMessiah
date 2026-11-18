\version "2.24.0"
\language "italiano"

% ACCORDI "VERI" (con le loro note), uno per ogni passo dell'armonia.
% A differenza di gradi e funzioni, questi dipendono dalla tonalita':
% con l'opzione trasporto si spostano insieme alla musica.
% Da qui si ricavano in automatico:
%   - le sigle popolari/jazz sopra il rigo      (opzione sigle)
%   - i colori delle note strutturali           (opzione coloriAccordo)
%
% Scrittura:  mi:m = mi minore   si:7 = settima di dominante
%             /red = rivolto con re diesis al basso
%             /+fad = nota estranea aggiunta al basso

graveAccordi = \chordmode {
  %1
  mi4.:m             la8:m/mi             mi4.:m/si            si8:7             |
  %2
  si4.               mi8:m/sol            mi4.:m/+fad          mi8:m             |
  %3
  lad4.:dim7         fad8/lad             fad4./lad            fad8:7            |
  %4
  si4.               si8                  sol4./si             sol8              |
  %5
  do2                                     la4:7/dod            la4:7             |
  %6
  re2                                     si2:m                                  |
  %7
  mi2:7/sold                              la4:m                fad4:dim          |
  %8
  si4.:7/red         si8:7                mi4:m                si4:m/re          |
  %9
  do4                la4:m                fad2:dim/la                            |
  %10
  mi2:m                                   si2:m/re                               |
  %11
  do2                                     la4.:m/do            si8               |
  %12
  si1                                                                            |
  %13
  si1                                                                            |
}

% Allegro e finale: ancora da scrivere.
