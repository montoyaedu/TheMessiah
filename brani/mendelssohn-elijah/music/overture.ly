\version "2.24.0"
\language "italiano"

% MENDELSSOHN, Elijah -- OVERTURE (fuga in re minore)
% SCHIZZO per chitarra sola delle prime 38 battute (dalla 21 bozza grezza): il pedale di la,
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
% dalla 39 in poi (pagina 12 dello spartito).
% RITMO del soggetto: sul secondo tempo croma + due semicrome; la nota
% d'arrivo viene RIBATTUTA sul terzo tempo (non legata). Controllato da un
% revisore indipendente, battuta per battuta, sullo spartito.
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
    sib,8(   sol,      dod8     re16     mi16)      mi8(     re)       r16  re  mi  fa |
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
    fa8(     re        sold8    la16     si16)      si8(     la)       r16  la  si  do' |
    %7
    do'8     re        r16  la  si  do'     do'8       mi       r16  la  si  do'   |
    %8   coda della risposta
    do'8     si        la         sold      la8        sol4               <fad la>8 |
    %9
    sib4               r4                   sib4                r4                 |
    %10  voce interna sotto il soggetto (lettura incerta)
    s4                 la8        la        fa4                 s4                 |
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
    sib8(    sol       dod'8    re'16    mi'16)     mi'8(    re')      r16  re'  mi'  fa' |
    %11
    fa'8     sol       r16  re'  mi'  fa'   fa'8       la       r16  re'  mi'  fa' |
    %12  coda (la seconda meta' e' una lettura meno sicura)
    fa'8     mi'       re'        dod'      re'8       do'!     sib       <la re'> |
    %13
    fa'4               r8         re'8      fa'4                r8        re'8     |
    %14  quarta entrata: la risposta, unottava sopra
    fa8(    re       sold8   la16    si16)     si8(    la)      r16  la  si  do' |
    %15
    do'8    re       r16  la  si  do'  do'8      mi      r16  la  si  do' |
    %16  coda; poi la linea sale (le semicrome sono una lettura incerta)
    do'8    si       la        sold     la8       si      do'16  do'  re'  mi' |
    %17  lo stesso disegno una terza sopra
    mi'8    re'      do'       si       do'8      re'     mi'16  mi'  fa'  sol' |
    %18  voce superiore degli accordi (nello spartito un'ottava sopra;
    %    il si naturale e' una lettura incerta)
    fa'8     re'       si         do'       fa'8       re'      si        do'      |
    %19
    fa'8     re'       sol'16  re'  do'  sib   sib8     la       mib'4~             |
    %20
    mib'8    re'       fa'4~                fa'8       do'      la        fa'      |
    % ---- battute 21-38 (pagina 11 dello spartito): BOZZA GREZZA.
    % La linea piu' alta, letta da un lettore separato con la griglia e
    % abbassata di un'ottava; senza legature di frase. Non adattata alle dita.
    %21
    fa'8 mi' fa' sol' do'8 mib' re' fa' |
    %22
    mi'8 sib la sol' fa' re' sib' mib' |
    %23
    fa'4 r8 mi'8 fa'4 r8 mi'8 |
    %24
    fa'8 re' sold'8 la'16 si' si'8 la' r16 la'16 si' do'' |
    %25
    do''8 re' r16 la'16 si' do'' do''8 mi' r16 la'16 si' do'' |
    %26
    do''8 si' la' sold' la'8 sol' fa' dod' |
    %27
    re'8 do' si mi' red'4. red'8 |
    %28
    re'8 fa' mi' re' do'8 mi' re' do' |
    %29
    do'8 si la sold la16-. do-. re-. mi-. fa-. fa-. mi-. re-. |
    %30
    dod16-. la-. si-. dod'-. re'-. re'-. dod'-. si-. la-. do'-. re'-. mi'-. fa'-. fa'-. mi'-. re'-. |
    %31
    sol'16-. sol'-. fa'-. mi'-. sib'-. sib'-. la'-. sol'-. sol'8 fad' r8 do'8 |
    %32
    re'4 r8 dod'8 re'4 r8 sol'8 |
    %33
    mib'8 do' fad'8 sol'16 la' la'8 sol' fa'8 mib' |
    %34
    re'8 la'8 fa'8 si16 do' re'16 re' do' si mib'16 mib' re' do' |
    %35
    fa'8 re' si8 do'16 re' re'8 do' fa'16-. fa'-. mi'-. re'-. |
    %36
    sol'16-. do'-. do'-. do'-. reb'-. reb'-. do'-. sib-. la-. fa'-. sol'-. la'-. sib'-. sib'-. la'-. sol'-. |
    %37
    do''16-. fa'-. fa'-. fa'-. solb'-. solb'-. fa'-. mib'-. re'-. sib-. do'-. re'-. mib'-. mib'-. re'-. do'-. |
    %38
    re'16-. re'-. mib'-. fa'-. solb'-. solb'-. fa'-. mib'-. re'-. fa'-. la'-. sib'-. do''-. do''-. sib'-. la'-. |
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
    %9   (i re in croma sono un'ottava sopra lo spartito)
    sol,4              r8         re8       sol,4               r8        re8      |
    %10  (ritmo letto; le ultime due note, sotto il rigo, sono DEDOTTE)
    sol,8    sib,      la,4                 la,4                r8        la,8     |
    %11
    sol,4              sol,                 la,                 sib,               |
    %12  (lettura incerta; il re e' un'ottava sopra lo spartito)
    la,4               r4                   r8         re8      sol,      la,      |
    %13  si naturale
    si,4               r8         la,8      si,4                r8        la,8     |
    %14  (lettura incerta)
    sold,8   fa,       mi,        r8        r8         mi8      fa        mi       |
    %15  (la voce inferiore del basso; il re in croma e' un'ottava sopra)
    re4                r8         re8       la,4                r8        la,8     |
    %16
    mi4                r8         re8       do8        si,      la,       sol,     |
    %17
    fa,4.                         fa8       mi8        re       do        do       |
    %18
    re4                r8         do8       re4                 r8        do8      |
    %19  IL SOGGETTO NEL BASSO, una terza sopra la prima entrata
    re8(     sib,      mi8     fa16     sol16)     sol8(    fa)       r16  fa  sol  la |
    %20
    la8      sib,      r16  fa  sol  la     la8        do       r16  fa  sol  la   |
    % ---- battute 21-38: BOZZA GREZZA, all'altezza dello spartito (nelle
    % ottave, la nota superiore). Soggetto nel basso alla battuta 31.
    %21
    la8 sol fa mi fa8 la, sib, si, |
    %22
    do4. dod8 re8 fa mi sib |
    %23
    la4 r8 sib8 la4 r8 do8 |
    %24
    fa4 mi4~ mi8 do'8 la sol |
    %25
    fad4 fa4 mi4 do'8 la8 |
    %26
    re'4 mi4 r8 do'8 re'4 |
    %27
    fa'8 re'8 r8 mi8 fad8 do'8 si la |
    %28
    sold4 r8 mi8 la8 sol fa mi |
    %29
    re4. mi8 la,4 r8 sold,8 |
    %30
    la,4 r8 sold,8 la,4 r8 la,8 |
    %31
    sib,8 sol, dod8 re16 mi mi8 re sol16 si la sol |
    %32
    re8 re' sol sib re8 re sol, sib, |
    %33
    re8 r8 r4 r16 sol,16 la, sib, do16 do sib, la, |
    %34
    si,16 si, do re mib16 mib re do si,16 sol la si do'16 do' re' mib' |
    %35
    si16 si do' re' fa'16 fa' mi' re' mi'8-. mi'-. si8 si |
    %36
    do'8 do' mi8 mi fa8 fa mi8 mi |
    %37
    fa8 fa la,8 la, sib,8 sib, sib4~ |
    %38
    sib8 sib, sib4~ sib8 sib, sib4 |
}
