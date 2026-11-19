\version "2.24.0"
\language "italiano"

% MENDELSSOHN, Elijah -- OVERTURE (fuga in re minore)
% SCHIZZO per chitarra sola delle prime sette battute: il pedale di la,
% il soggetto, la sua coda e la risposta alla quinta.
% Altezze reali come nello spartito, accordatura normale: tutto sta in
% prima posizione sulle tre corde gravi, con la, re e mi a vuoto.
%
%   elijahSoggetto   prima voce: soggetto (batt. 2-3) e coda (4-5)
%   elijahRisposta   seconda voce: risposta alla quinta (batt. 6-7)
%   elijahBasso      il pedale di la dell'inizio (letto sullo spartito) e,
%                    sotto la risposta, un basso LIBERO dello schizzo
%
% FONTE: spartito Novello (fonti/), pagina 10 del PDF; rigo superiore letto
% con una griglia delle altezze.
% NON LETTI: cio' che accompagna la risposta nello spartito (battute 6-7) e
% il raddoppio all'ottava della mano sinistra.

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
    %6-7
    s1*2
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
    do'8     re        r16  la  si  do'     do'8       mi       r16  la  si  do'   |
}

elijahBasso = {
    \key re \minor
    \time 4/4
    \partial 8
    la,8~                                                                          |
    %1   il pedale di la
    la,4               r8         la,8~     la,4                r4                 |
    %2-5
    s1*4
    %6   basso libero: mi e la a vuoto
    r4                 mi,4                 la,2                                   |
    %7
    r4                 mi,4                 la,2                                   |
}
