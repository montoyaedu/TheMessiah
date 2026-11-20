\version "2.24.0"
\language "italiano"

% MENDELSSOHN, Elijah -- OVERTURE (fuga in re minore)
% SCHIZZO per chitarra sola di tutta l'Overture, 77 battute (dalla 39 solo canto e basso): il pedale di la,
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
% le voci interne dalla battuta 39.
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
    % ---- battute 21-38 (pagina 11 dello spartito).
    % La linea piu' alta, letta da un lettore separato con la griglia e
    % abbassata di un'ottava; senza legature di frase.
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
    % ---- battute 39-77 (pagine 12 e 13 dello spartito): la linea piu' alta,
    % letta da lettori separati, di norma un'ottava sotto lo spartito; dove
    % serve per stare sotto le dita, l'ottava e' scelta da un controllo
    % automatico ed e' indicata a fine riga.
    %39
    re''8 sol8 dod'8 re'16 mi'16 mi'8 re'8 r8 mi'8 |
    %40
    fa'8 re'8 sold'8 la'16 si'16 si'8 la'8 r8 si8 |
    %41
    do'8 la8 red'8 mi'16 fad'16 fad'8 mi'8 r16 sol'16 fa'16 mi'16 |
    %42
    red'16 fad'16 la'16 la'16 la'16 sol'16 fad'16 mi'16 red'16 fad'16 la'16 la'16 la'16 sol'16 fad'16 mi'16 |
    %43
    red'16 mi'16 fad'16 si16 red'8 mi'16 fad'16 fad'8 mi'8 mi'4 |   % (canto -1 ott., basso -1 ott. rispetto allo spartito)
    %44
    re'16 do'16 sold16 mi16 mi'4 do'16 si16 la16 si16 mi'4 |   % (canto -1 ott., basso -1 ott. rispetto allo spartito)
    %45
    sol'16 mi'16 red'16 fad'16 mi'16 si16 red'16 fad'16 mi'16 si16 do'16 la16 sol16 mi16 la8 |   % (canto -1 ott., basso -1 ott. rispetto allo spartito)
    %46
    sold'16 si'16 re''16 fa''16 mi''16 do''16 la'16 mi'16 sold'16 si'16 re''16 fa''16 mi''16 do''16 la'16 mi'16 |   % (canto +0 ott., basso +0 ott. rispetto allo spartito)
    %47
    sold16 si16 re'16 do'16 si16 re'16 do'16 si16 lab'8 sol'8 sol'4 |
    %48
    r16 sol16 do'16 sol16 sol'4 r16 fa16 do'16 fa16 fa'4 |
    %49
    fa'8 fa'8 mi'8 re'8 do'8 re'8 do'8 mib'8 |
    %50
    re'4 r8 mib'8 re'4 r8 mib'8 |
    %51
    re''8 fad''8 do''8 sib'16 la'16 la'8 sib'8 r16 sib'16 la'16 sol'16 |   % (canto +0 ott., basso +1 ott. rispetto allo spartito)
    %52
    sol8 fa'8 r16 si16 la16 sol16 sol8 mi'8 r16 do'16 sib16 la16 |
    %53
    la8 sol'8 r16 dod'16 si16 la16 la8 fa'8 r16 fa'16 mi'16 re'16 |
    %54
    re'8 do''8 r16 mi'16 re'16 do'16 do'8 sib'8 r16 re'16 do'16 sib16 |
    %55
    si8 la'8 r16 do'16 sib16 la16 la8 sol'8 r16 sib16 la16 sol16 |
    %56
    sol'16 fa''16 mi''16 re''16 re''16 si'16 la'16 sold'16 sol'16 fa''16 mi''16 re''16 re''16 sib'16 la'16 sol'16 |   % (canto +0 ott., basso +0 ott. rispetto allo spartito)
    %57
    la8 la8 sib4 r8 la8 sib4 |   % (canto -1 ott., basso -1 ott. rispetto allo spartito)
    %58
    r8 la8 sib8 sol8 dod'8 re'16 mi'16 mi'8 re'8 |
    %59
    r16 re'16 mi'16 fa'16 fa'8 sol8 r16 re'16 mi'16 fa'16 fa'8 la8 |
    %60
    r16 re'16 mi'16 fa'16 fa'8 mi'8 re'8 dod'8 re'8 do'8 |
    %61
    sib8 la8 sib8 la8 sol8 fa8 mi8 re'8 |   % (canto -1 ott., basso -1 ott. rispetto allo spartito)
    %62
    fa'8 la8 sold8 re'8 fa'8 la8 sold8 re'8 |
    %63
    fa'8 re'8 sold'8 la'16 si'16 si'8 la'8 fad'8 sol'16 la'16 |
    %64
    la'8 sol'8 fad'8 sol'16 la'16 la'8 sol'8 mi'8 fa'16 sol'16 |
    %65
    sol'8 fa'8 sol'8 la'16 sib'16 sib'8 la'8 la'8 si'16 do''16 |
    %66
    do''8 si'8 si'8 dod''16 re''16 re''8 dod''8 dod''8 dod''16 sol'16 |
    %67
    re''4 r8 dod''8 re''4 r8 dod''8 |
    %68
    re''8 sib'8 sol'8 fa'16 dod'16 dod'8 re'8 r16 fa'16 mi'16 re'16 |
    %69
    re'8 sib'8 r16 fa'16 mi'16 re'16 re'8 la'8 r16 fa'16 mi'16 re'16 |
    %70
    re'8 si'8 r16 fa'16 mi'16 re'16 re'8 la'8 r16 fa'16 mi'16 re'16 |
    %71
    re'16 re'16 mi'16 fa'16 fa'8 sol8 r16 re'16 mi'16 fa'16 fa'8 sold8 |
    %72
    r16 mi'16 fa'16 sol'16 sol'8 la8 r16 mi'16 fa'16 sol'16 sol'8 la8 |
    %73
    r16 sol'16 la'16 sib'16 sib'16 mi'16 fa'16 sol'16 sol'16 dod'16 re'16 mi'16 mi'16 sol16 la16 sib16 |
    %74
    sib16 la16 sol16 fa16 mi16 fa16 sol16 la16 sib16 dod'16 re'16 mi'16 re'16 dod'16 sib16 la16 |   % (canto -1 ott., basso -1 ott. rispetto allo spartito)
    %75
    sol16 la16 sib16 dod'16 re'16 mi'16 fa'16 sol'16 fa'16 mi'16 re'16 dod'16 mi'16 dod'16 re'16 mi'16 |   % (canto -1 ott., basso -1 ott. rispetto allo spartito)
    %76
    fa'16 sol'16 la'16 sib'16 la'16 sol'16 fa'16 mi'16 sol'16 fa'16 mi'16 re'16 dod'16 re'16 mi'16 fa'16 |
    %77
    mi'8 fa'8 sol'8 la'8 sib'8 si'8 do''8 dod''8 |
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
    %10  (le ultime due note sono re sotto il rigo: qui un'ottava sopra)
    sol,8    sib,      la,4                 re4                 r8        re8      |
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
    % ---- battute 21-38: all'altezza dello spartito (nelle ottave, la nota
    % superiore), salvo dove indicato. Ogni coppia canto-basso e' stata
    % verificata con un controllo automatico: il basso sta sotto il canto e
    % le due note stanno sotto le dita (entro quattro tasti, o corda a vuoto). Soggetto nel basso alla battuta 31.
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
    re4 mi4 r8 dod8 re4 |   % (un'ottava sotto lo spartito)
    %27
    fa8 re8 r8 mi8 fad8 do'8 si la |   % (le prime due un'ottava sotto)
    %28
    sold4 r8 mi8 la8 sol fa mi |
    %29
    re4. mi8 la,4 r8 sold,8 |
    %30
    la,4 r8 sold,8 la,4 r8 la,8 |
    %31
    sib,8 sol, dod8 re16 mi mi8 re sol16 sib la sol |
    %32
    re8 re' sol sib re8 re sol, sib, |
    %33
    re8 r8 r4 r16 sol,16 la, si, do16 do si, la, |
    %34
    si,16 si, do re mib16 mib re do si,16 sol, la, si, do16 do re mib |   % (seconda meta' un'ottava sotto)
    %35
    si,16 si, do re fa16 fa mi re mi8-. mi-. si,8 si, |   % (un'ottava sotto)
    %36
    r8 do8 mi,4 r8 fa,8 mi,4 |   % la voce piu' bassa, sincopata
    %37
    r8 fa,8 la,4 r8 sib,8 sib,4~ |   % (la e si bemolle un'ottava sopra lo spartito)
    %38
    sib,8 sib, sib4~ sib8 sib, sib4 |
    % ---- battute 39-77: la linea piu' bassa (nelle ottave la nota superiore)
    %39
    sib'16 re'16 mi'16 fa'16 r16 la,16 si,16 dod16 re16 re16 mi16 fa16 sol16 sol16 fa16 mi16 |
    %40
    re8 re8 r16 mi16 fad16 sold16 la16 la16 si16 do'16 re'16 re'16 do'16 si16 |
    %41
    la,8 r8 r4 r4 r8 do'8 |
    %42
    si4 r8 do'8 si4 r8 do'8 |
    %43
    si,8 red8 la,8 sol,16 fad,16 fad,8 sol,8 r16 sol,16 fad,16 mi,16 |
    %44
    mi,8 re8 r16 sold,16 fad,16 mi,16 mi,8 do8 r16 sol,16 fad,16 mi,16 |
    %45
    mi,8 fad,8 sol,8 la,8 sol,8 la,8 si,8 do8 |
    %46
    re'8 re8 do4 r8 re8 do4 |
    %47
    r8 re8 re8 mi16 fa16 fa8 mi8 r8 fa8 |
    %48
    mi4 r8 mi8 fa4 r8 fa8 |
    %49
    sol2~ sol8 fa8 mi8 la,16 sol,16 |
    %50
    fad,16 la,16 do16 do16 do16 sib,16 la,16 sol,16 fad,16 la,16 do16 do16 do16 sib,16 la,16 sol,16 |
    %51
    fad16 sol16 la16 re16 mib16 do16 re16 mib16 fad16 fad16 sol16 la16 sib16 do'16 re'16 mib'16 |
    %52
    fa16 re16 si,16 sol,16 la,16 si,16 do16 re16 mi16 re16 do16 si,16 do16 re16 mi16 fa16 |
    %53
    sol16 mi16 dod16 la,16 si,16 dod16 re16 mi16 fa16 mi16 re16 dod16 re16 re16 mi16 fa16 |
    %54
    fad16 re16 mi16 fad16 sol8 fa8 mi8 do8 fa8 mi8 |
    %55
    red16 si,16 dod16 red16 mi8 re8 dod8 la,8 re8 do8 |
    %56
    si,8 dod'8 re'8 si8 sib8 dod'8 re'8 re'8 |
    %57
    dod4 r8 re8 dod4 r8 re8 |
    %58
    dod'8 mi8 sol,8 fa,16 mi,16 mi8 fa8 r16 sib,16 la,16 sol,16 |
    %59
    sol8 sol8 r16 do16 sib,16 la,16 la8 la8 r16 re16 do16 sib,16 |
    %60
    sib,8 si,8 do8 dod8 re8 mi8 re8 mi8 |
    %61
    fa,8 solb,8 fa,8 fad,8 sol,4 sold,4 |
    %62
    la,2 la,2 |
    %63
    la,2 la2 |
    %64
    la4 la8 do'8 la2 |
    %65
    la4 la8 la8 la4 la8 la8 |
    %66
    la4 la8 la8 la4 la8 la,8 |
    %67
    sib,4 r8 la,8 sib,4 r8 la,8 |
    %68
    sib,8 sol,8 dod8 re16 mi16 mi8 re8 r16 re16 mi16 fa16 |
    %69
    fa8 sol,8 r16 re16 mi16 fa16 fa8 la,8 r16 re16 mi16 fa16 |
    %70
    fa8 sold,8 r16 re16 mi16 fa16 fa8 la,8 r16 re16 mi16 fa16 |
    %71
    fa8 si,8 r8 si,8 si,8 r8 r8 si,8 |
    %72
    dod8 r8 r8 dod8 dod8 r8 r8 dod8 |
    %73
    dod8 r8 r4 r2 |
    %74
    la,1 |
    %75
    la,1 |
    %76
    la1 |
    %77
    la1 |
}

% Voce interna delle battute 21-38, letta sullo spartito da un lettore
% separato (una linea per battuta, tra canto e basso) e abbassata di
% un'ottava come il canto. C'e' solo dove un controllo automatico la trova
% compatibile a coppie con canto e basso; le altre battute sono vuote.
elijahInterna = {
    \key re \minor
    \time 4/4
    \partial 8
    s8 |
    s1*20
    %21
    sib4. do'16 sib16 la8 do'8 sib8 lab8 |
    %22
    sol8 sol4 la8 sib8 si8 do'8 re'8 |
    %23
    s1 |
    %24
    s1 |
    %25
    s1 |
    %26
    mi'8 re'8 do'8 si8 la8 sib8 la8 sol8 |
    %27
    s1 |
    %28
    s1 |
    %29
    s1 |
    %30
    r8 la8 sold4 r8 la8 sold8 la8 |
    %31
    s1 |
    %32
    s1 |
    %33
    s1 |
    %34
    re'4. r8 sol8 sol8 fad8 sol8 |
    %35
    s1 |
    %36
    s4 mi8 mi8 fa8 fa8 mi8 mi8 |
    %37
    s1 |
    %38
    s1 |
}
