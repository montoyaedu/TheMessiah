\version "2.24.0"
\language "italiano"

% MENDELSSOHN, Elijah -- OVERTURE (fuga in re minore)
% SCHIZZO per chitarra sola delle prime dieci battute: il pedale di la,
% il soggetto, la sua coda, la risposta alla quinta col controsoggetto,
% e la terza entrata del soggetto (solo la voce superiore).
% Altezze reali come nello spartito, accordatura normale: tutto sta in
% prima posizione sulle tre corde gravi, con la, re e mi a vuoto.
%
%   elijahSoggetto   prima voce: soggetto (batt. 2-3), coda (4-5) e
%                    controsoggetto (6-8)
%   elijahRisposta   seconda voce: risposta alla quinta (batt. 6-7) e coda (8)
%   elijahBasso      il pedale di la dell'inizio
%
% FONTE: spartito Novello (fonti/), pagina 10 del PDF; rigo superiore letto
% con una griglia delle altezze.
% OMESSO: il raddoppio all'ottava della mano sinistra.
% NON LETTI: alla battuta 10 le due voci sotto il soggetto; dalla 11 in poi.
% CONTROLLO: la terza entrata (batt. 10) ha gli stessi intervalli del
% soggetto e della risposta, e conferma la lettura di entrambi.

elijahSoggetto = {
    \key re \minor
    \time 4/4
    \partial 8
    s8                                                                             |
    %1   (pedale)
    s2                                      s4                  s8        la,8     |
    %2   il soggetto: sol - do diesis, il tritono
    sib,8(   sol,      dod16      re       mi8)~      mi8      re       r16  re  mi  fa |
    %3
    fa8      sol,      r16  re  mi  fa      fa8        la,      r16  re  mi  fa    |
    %4   coda
    fa8      mi        re         dod       r4                  r8        re8      |
    %5
    fa4                r8         re8       fa4                 r8        re8      |
    %6   il controsoggetto, sotto la risposta (il re iniziale coincide con
    %    il re della risposta e non si ripete; il sol e' un'ottava sotto)
    r4                 mi8        re        do4                 la,8      sol,     |
    %7   il basso scende per semitoni (fino al mi un'ottava sotto lo spartito)
    fad,4              fa,                  mi,                 red                |
    %8
    mi4                r8         re8       dod4                re8       r        |    %9   voce di mezzo (lettura meno sicura)
    sol8     re        sol        fad       r8         re       sol       fad      |
    %10  NON LETTO
    s1                                                                             |
}

elijahRisposta = {
    \key re \minor
    \time 4/4
    \partial 8
    s8                                                                             |
    %1-4
    s1*4
    %5   (levare della risposta: nota attesa, non letta)
    s2                                      s4                  s8        mi8      |
    %6   la risposta, una quinta sopra
    fa8(     re        sold16     la       si8)~      si8      la       r16  la  si  do' |
    %7
    do'8     re        r16  la  si  do'     do'8       mi       r16  la  si  do'   |    %8   coda della risposta
    do'8     si        la         sold      la8        sol4               <fad la>8 |    %9
    sib4               r4                   sib4                r4                 |
    %10
    s1                                                                             |
}

% Terza voce: entra col levare alla fine della battuta 9 e porta il
% soggetto un'ottava sopra la prima entrata.
elijahTerza = {
    \key re \minor
    \time 4/4
    \partial 8
    s8                                                                             |
    %1-8
    s1*8
    %9   (nello spartito anche il la a meta' battuta appartiene a questa linea)
    s4                 s8         la8       s4                  s8        la8      |
    %10  il soggetto
    sib8(    sol       dod'16     re'      mi'8)~     mi'8     re'      r16  re'  mi'  fa' |
}

elijahBasso = {
    \key re \minor
    \time 4/4
    \partial 8
    la,8~                                                                          |
    %1   il pedale di la
    la,4               r8         la,8~     la,4                r4                 |
    %2-8
    s1*7
    %9   (i levari in croma del basso non sono leggibili: omessi)
    sol,4              r4                   sol,4               r4                 |
    %10  NON LETTO
    s1                                                                             |
}
