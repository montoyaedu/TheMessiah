\version "2.24.0"
\language "italiano"

% MENDELSSOHN, Elijah -- OVERTURE (fuga in re minore)
% Primo tentativo per chitarra sola: per ora le prime sei battute, cioe'
% il soggetto, la sua coda e la risposta alla quinta.
% Altezze reali, come nello spartito (il soggetto parte nel registro dei
% violoncelli e sta gia' sulle corde gravi della chitarra).
%
%   elijahSoggetto   la prima voce: soggetto (batt. 1-2) e coda (3-4)
%   elijahRisposta   la seconda voce: risposta alla quinta (batt. 5-6)
%
% FONTE: spartito per canto e pianoforte Novello (fonti/), pagina 10 del
% PDF, letto con una griglia delle altezze sul rigo superiore.
% NON ANCORA LETTI: il pedale di la del basso nelle battute che precedono
% il soggetto, il raddoppio all'ottava della mano sinistra, e cio' che fa la
% prima voce mentre entra la risposta (battute 5-6).

elijahSoggetto = {
    \key re \minor
    \time 4/4
    \partial 8
    la,8                                                                           |
    %1   il soggetto: sol - do diesis, il tritono
    sib,8(   sol,      dod16      re       mi8)~      mi8      re       r16  re  mi  fa |
    %2
    fa8      sol,      r16  re  mi  fa      fa8        la,      r16  re  mi  fa    |
    %3   coda
    fa8      mi        re         dod       r4                  r8        re8      |
    %4
    fa4                r8         re8       fa4                 r8        re8      |
    %5-6  DA LEGGERE
    s1*2
}

elijahRisposta = {
    \key re \minor
    \time 4/4
    \partial 8
    s8                                                                             |
    %1-3
    s1*3
    %4   (il levare della risposta non e' stato letto: qui la nota attesa)
    s2                                      s4                  s8        mi8      |
    %5   la risposta, una quinta sopra
    fa8(     re        sold16     la       si8)~      si8      la       r16  la  si  do' |
    %6
    do'8     re        r16  la  si  do'     do'8       mi       r16  la  si  do'   |
}
