\version "2.24.0"
\language "italiano"

% MENDELSSOHN, Elijah -- OVERTURE (fuga in re minore)
% SCHIZZO per chitarra sola delle prime diciassette battute: il pedale di la,
% il soggetto, la sua coda, la risposta alla quinta col controsoggetto,
% la terza entrata del soggetto e l'inizio della quarta (dalla battuta 10
% soprattutto la voce superiore).
% Altezze reali come nello spartito, accordatura normale: tutto sta in
% prima posizione sulle tre corde gravi, con la, re e mi a vuoto.
%
%   elijahSoggetto   prima voce: soggetto (batt. 2-3), coda (4-5) e
%                    controsoggetto (6-8)
%   elijahRisposta   seconda voce: risposta alla quinta (batt. 6-7) e coda (8)
%   elijahBasso      il basso, dove e' stato letto
%
% FONTE: spartito Novello (fonti/), pagina 10 del PDF; rigo superiore letto
% con una griglia delle altezze.
% OMESSO: il raddoppio all'ottava della mano sinistra.
% NON LETTI: dalla battuta 10 quasi tutte le voci sotto quella superiore;
% dalla 18 in poi.
% RITMO del secondo tempo del soggetto: croma + due semicrome (corretto:
% prima era scritto al contrario).
% CONTROLLO: la terza entrata (batt. 10-13) e la quarta (batt. 14) hanno
% gli stessi intervalli del soggetto e della risposta, coda compresa.

elijahSoggetto = {
    \key re \minor
    \time 4/4
    \partial 8
    s8                                                                             |
    %1   (pedale)
    s2                                      s4                  s8        la,8     |
    %2   il soggetto: sol - do diesis, il tritono
    sib,8(   sol,      dod8     re16     mi16)~      mi8      re       r16  re  mi  fa |
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
    mi4                r8         re8       dod4                re8       r        |
    %9   voce di mezzo (lettura meno sicura)
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
    %5   (il levare della risposta e' il re con cui finisce la coda del
    %    soggetto, nell'altra voce: la risposta e' tonale)
    s1                                                                             |
    %6   la risposta, una quinta sopra
    fa8(     re        sold8    la16     si16)~      si8      la       r16  la  si  do' |
    %7
    do'8     re        r16  la  si  do'     do'8       mi       r16  la  si  do'   |
    %8   coda della risposta
    do'8     si        la         sold      la8        sol4               <fad la>8 |
    %9
    sib4               r4                   sib4                r4                 |
    %10
    s1                                                                             |
    %11  voce di mezzo: scende per semitoni (lettura meno sicura)
    si4                sib                  la                  sold               |
    %12  NON LETTO
    s1                                                                             |
    %13  (lettura meno sicura)
    sold8    re'       sold       la        r8         re'      sold      la       |
    %14  NON LETTO
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
    sib8(    sol       dod'8    re'16    mi'16)~     mi'8     re'      r16  re'  mi'  fa' |
    %11
    fa'8     sol       r16  re'  mi'  fa'   fa'8       la       r16  re'  mi'  fa' |
    %12  coda (la seconda meta' e' una lettura meno sicura)
    fa'8     mi'       re'        dod'      re'8       do'!     sib       re'      |
    %13
    fa'4               r8         re'8      fa'4                r8        re'8     |
    %14  quarta entrata: la risposta, un'ottava sopra
    fa'8(    re'       sold'8   la'16    si'16)~     si'8     la'      r16  la'  si'  do'' |
    %15
    do''8    re'       r16  la'  si'  do''  do''8      mi'      r16  la'  si'  do'' |
    %16  coda; poi la linea sale (le semicrome sono una lettura incerta)
    do''8    si'       la'        sold'     la'8       si'      do''16  do''  re''  mi'' |
    %17  lo stesso disegno una terza sopra
    mi''8    re''      do''       si'       do''8      re''     mi''16  mi''  fa''  sol'' |
}

elijahBasso = {
    \key re \minor
    \time 4/4
    \partial 8
    la,8(                                                                          |
    %1   non un pedale: il semitono la - si bemolle, due volte. E' lo stesso
    %    semitono con cui comincia il soggetto.
    sib,4)             r8         la,8(     sib,4)              r4                 |
    %2-3  (nello spartito il basso raddoppia il soggetto all'ottava: omesso)
    s1*2
    %4   sotto la pausa della coda, il basso scende: re do si bemolle la
    s2                                      re8        do       sib,      la,      |
    %5   sol diesis sotto il fa: settima diminuita
    sold,8   r8        sold,4               r4                  sold,4             |
    %6-8
    s1*3
    %9   (i levari in croma del basso non sono leggibili: omessi)
    sol,4              r4                   sol,4               r4                 |
    %10  NON LETTO
    s1                                                                             |
    %11
    sol,4              sol,                 la,                 sib,               |
    %12-14  NON LETTO
    s1*3
    %15  (lettura incerta: nello spartito qui il basso ha due voci)
    re4                re                   la,4                r8        la,8     |
    %16
    mi4                r8         re8       do8        si,      la,       sol,     |
    %17
    fa,4.                         fa8       mi8        re       do        do       |
}
