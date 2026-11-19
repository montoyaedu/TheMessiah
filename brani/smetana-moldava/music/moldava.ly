\version "2.24.0"
\language "italiano"

% SMETANA, Vltava (La Moldava) -- ESPERIMENTO per chitarra sola alla
% maniera del Preludio n. 1 di Villa-Lobos. Mi minore come l'originale,
% accordatura normale, altezze reali.
%
% Sezioni (74 battute):
%   Intro  39  le sorgenti: i due flauti intrecciati in una sola linea
%   A      8   il tema col pollice: parte dalla quinta corda (si-mi
%              strisciando, come nel Preludio n. 1), poi quarta corda; sopra, accordi
%              sulle corde acute, a vuoto dove l'armonia lo permette
%   B      8   seconda frase del tema
%   Coda   9   la cadenza sospesa sulla dominante
%   A'     8   ritorno del tema
%   Fine   2   accordo di mi minore in armonici al XII tasto
%
% Tre voci:  moldavaSopra (onda e accordi), moldavaCanto (il tema),
%            moldavaBasso (armonici dell'introduzione e bassi a vuoto)
%
% COSA E' DI SMETANA E COSA NO: l'introduzione (battute 1-35) e' la linea dei
% flauti letta sulla partitura, dalla 8 un'ottava sotto; le battute 36-39
% sono una ricostruzione libera; il tema
% (sezioni A, B, Coda) e' il suo, riscontrato con una riduzione pubblica.
% Armonia del tema, disposizione e armonici sono dell'esperimento. Tutto scritto a tavolino, non provato.
%
% ARMONICI NATURALI usati (testa a rombo, alla nota che si sente):
%   VII tasto, 5a corda -> mi      VII tasto, corde 2 e 1 -> fa diesis, si
%   XII tasto, corde 3-2-1 -> sol, si, mi

% ---------- le sorgenti: i due flauti intrecciati ----------
% Lette sulla partitura Eulenburg (fonti/), battute 1-35.
% Il primo flauto comincia da solo (batt. 1-2). Dalla battuta 3 i due flauti
% si passano la figura ogni mezza battuta: ognuno suona sei semicrome e
% atterra su una croma, che e' la nota da cui riparte l'altro. Sulla
% chitarra diventa una sola linea continua.
%
% Battute 3-7, uno schema di due battute:
%   salita   (I flauto, poi II)   mi fa# sol fa# sol la | sol la si la si do
%   discesa  (I flauto, poi II)   si do re do si la     | si la sol la sol fa#
% in V posizione sulle prime due corde. La nota dell'arpa sul battere e' il
% mi con cui comincia la salita: si suona come ARMONICO (VII tasto, quinta
% corda) e lo stesso dito scende poi sul VII tasto della seconda corda.
%
% Battute 8-16: la figura modula (re, do, sol, la, mi, si, si, mi, mi).
% I flauti qui salgono fino al re sopra il rigo, fuori dalla tastiera:
% da battuta 8 TUTTO E' UN'OTTAVA SOTTO i flauti (il fiume si allarga; anche
% nell'originale a questo punto entrano i clarinetti nel registro grave).
% Battute 17-27: stesso gioco, mezza battuta per flauto (i clarinetti che
% entrano qui con una loro figura discendente non sono trascritti).
% Battute 28-35: i due flauti vanno insieme per terze; qui c'e' solo la voce
% superiore. Battute 36-39: la figura passa agli archi gravi (vedi sotto).
figuraUno     = { <mi'\harmonic>16 fad' sol' fad' sol' la' }   % I flauto
figuraDue     = { sol'16 la' si' la' si' do'' }                % II flauto, una terza sopra
figuraTre     = { si'16 do'' re'' do'' si' la' }               % I flauto, la discesa
figuraQuattro = { si'16 la' sol' la' sol' fad' }               % II flauto

moldavaSopraIntro = {
    %1   il primo flauto da solo
    \figuraUno            si'8-.     r    r                                      |
    %2
    \figuraUno            si'8-.     r    r                                      |
    %3   entra il secondo flauto
    \figuraUno            \figuraDue                                             |
    %4
    \figuraTre            \figuraQuattro                                         |
    %5
    \figuraUno            \figuraDue                                             |
    %6
    \figuraTre            \figuraQuattro                                         |
    %7
    \figuraUno            \figuraDue                                             |
    %8   da qui un'ottava sotto i flauti
    re'16 mi' fad' mi' fad' sol'         la'16 si' do'' si' do'' re''            |
    %9
    do16 re mi re mi fad                 mi16 fad sol fad sol la                 |
    %10
    si16 do' re' do' re' mi'             fad'16 sol' la' sol' la' si'            |
    %11
    la16 si do' si do' re'               mi'16 fad' sol' fad' sol' la'           |
    %12
    sol16 la si la si do'                si16 mi' fad' mi' fad' sol'             |
    %13
    fad16 sol la sol la si               dod'16 red' mi' fad' sol' mi'           |
    %14
    red'16 mi' fad' mi' red' dod'        si16 dod' red' dod' si lad              |
    %15
    si16 do'! re'! do' si la             si16 la sol! la sol fad                 |
    %16
    mi16 fad mi fad mi sol               mi'16 red' mi' red' mi' sol'            |
    %17  entrano i clarinetti (qui non trascritti): i flauti proseguono
    mi16 fad mi fad mi sol               mi'16 red' mi' red' mi' sol'            |
    %18
    sol16 la sol fad sol si              sol'16 la' sol' fad' sol' si'           |
    %19
    sol16 la sol fad sol si              sol'16 la' sol' fad' sol' si'           |
    %20
    do'16 re' do' si do' re'             la'16 si' la' sold' la' si'             |
    %21
    do'16 re' do' si do' re'             la'16 si' la' sold' la' do''            |
    %22
    mi16 la sol fad sol si               sol'!16 la' sol' fad' sol' si'          |
    %23
    sol16 la sol fad sol si              sol'16 la' sol' fad' mi' sol'           |
    %24
    red'16 mi' red' dod' red' fad'       la'16 sol' fad' mi' fad' la'            |
    %25
    sol16 la si la sol si                sol'16 fad' mi' red' mi' sol'           |
    %26
    la16 si la sol fad la                fad'16 mi' red' dod' red' fad'          |
    %27
    sol16 la sol fad mi sol              mi'16 red' dod' sid dod' mi'            |
    %28  da qui i due flauti vanno insieme per terze: qui solo la voce superiore
    mi'16 fad' sol' la' si' la'          si'16 do''! re''! do'' si' do''         |
    %29
    la'16 sol' fad' sol' fad' mi'        red'16 mi' fad' mi' re'! do'!           |
    %30
    dod'16 red' mi' fad' sol' la'        si'16 do''! re''! do'' si' do''         |
    %31
    si'16 la' sol' la' sol' fad'         red'16 mi' fad' mi' re'! do'!           |
    %32
    si16 do' re' do' si do'              re'16 do' si do' re' do'                |
    %33
    si16 do' si la sol fad               mi16 red mi fad sol la                  |
    %34
    si16 do' re' do' si do'              re'16 do' si do' re' do'                |
    %35
    si16 do' re' do' si do'              si16 la sol fad mi red                  |
    %36  i flauti tacciono; la figura passa agli archi nel registro grave.
    %    Battute 36-39 NON lette nota per nota: qui torna la figura iniziale,
    %    due ottave sotto, fino al levare del tema.
    mi,16 fad, sol, fad, sol, la,        sol,16 la, si, la, si, do               |
    %37
    si,16 do re do si, la,               si,16 la, sol, la, sol, fad,            |
    %38
    mi,16 fad, sol, fad, sol, la,        sol,16 la, si, la, si, do               |
    %39
    si,16 do re do si, la,               sol,16 fad, mi, fad, r8                 |
}

% L'accordo pizzicato dei violini (batt. 1-2): le tre corde acute a vuoto.
moldavaBassoIntro = {
    %1
    r4.                   r4         <sol si mi'>8                               |
    %2
    r4.                   r4         <sol si mi'>8                               |
    %3-39
    s2.*37
}

moldavaCantoIntro = {
    s2.*38
    %39  levare del tema: dal si al mi sulla quinta corda, strisciando
    s4.                   s4         si,8\glissando                              |
}

% ---------- A: il tema ----------
moldavaCantoASette = {
    %1
    mi4        fad8       sol4       la8                                         |
    %2
    si4        si8        si4.                                                   |
    %3
    do'4.                 do'4       do'8                                        |
    %4
    si4.~                 si4        si8                                         |
    %5
    la4.                  la4        la8                                         |
    %6
    sol4       la8        sol4       sol8                                        |
    %7
    fad4.                 fad4       fad8                                        |
}
moldavaSopraASette = {
    %1   corde a vuoto: mi minore
    r8  <sol si mi'>  r    r  <sol si mi'>  r                                    |
    %2
    r8  <sol si mi'>  r    r  <sol si mi'>  <sol si mi'>                         |
    %3   do maggiore con il mi al basso
    r8  <sol mi'>  <sol mi'>    r  <sol mi'>  r                                  |
    %4   sol maggiore
    r8  <sol si>  <sol si>    r  <sol si>  r                                     |
    %5   la minore in V posizione
    r8  <do' mi'>  <do' mi'>    r  <do' mi'>  r                                  |
    %6
    r8  <si mi'>  r    r  <si mi'>  r                                            |
    %7   si settima
    r8  <la si fad'>  <la si fad'>    r  <la si fad'>  r                         |
}
moldavaBassoASette = {
    mi,2. | mi,2. | mi,2. | s2. | la,2. | mi,2. | si,2. |
}

% ---------- B ----------
moldavaCantoB = {
    %1
    do4        re8        mi4        fad8                                        |
    %2
    sol4       la8        si4        do'8                                        |
    %3
    re'4.                 la4        do'8                                        |
    %4
    si4.~                 si4        mi8                                         |
    %5
    la,4       si,8       do4        re8                                         |
    %6
    mi4        fad8       sol4       la8                                         |
    %7
    si4.                  fad4       la8                                         |
    %8
    sol4.~                sol4       sol8                                        |
}
moldavaSopraB = {
    %1
    r8  <sol mi'>  r    r  <sol mi'>  r                                          |
    %2
    r8  <sol si>  r    r  <sol si>  r                                            |
    %3   re maggiore in X posizione, poi in VII
    r8  <fad' la' re''>  <fad' la' re''>    r  <re' fad'>  r                     |
    %4
    r8  <sol si>  <sol si>    r  <sol si>  r                                     |
    %5   la minore in prima posizione
    r8  <la do' mi'>  r    r  <la do' mi'>  r                                    |
    %6
    r8  <sol si mi'>  r    r  <sol si mi'>  r                                    |
    %7   si maggiore in VII posizione, poi in IV
    r8  <red' fad' si'>  <red' fad' si'>    r  <si red'>  r                      |
    %8
    r8  <si mi'>  <si mi'>    r  <si mi'>  r                                     |
}
moldavaBassoB = {
    mi,2. | s2.*4 | mi,2. | s2. | mi,2. |
}

% ---------- Coda: sospensione sulla dominante ----------
moldavaCantoCoda = {
    %1
    sol4.                 mi4        sol8                                        |
    %2
    si4.                  fad4       fad8                                        |
    %3
    sol4.                 mi4        sol8                                        |
    %4
    si4.                  fad4       fad8                                        |
    %5
    si4.                  fad4       fad8                                        |
    %6
    si4.~                 si4        r8                                          |
    %7
    si4.                  fad4.                                                  |
    %8
    red4.                 si,4.                                                  |
    %9   levare del ritorno
    r4.                   r4         si,8\glissando                                      |
}
moldavaSopraCoda = {
    %1   settima diminuita: sol e mi a vuoto, do diesis sulla seconda corda
    r8  <sol dod' mi'>  <sol dod' mi'>    r  <sol dod' mi'>  r                   |
    %2
    r8  <red' fad' si'>  <red' fad' si'>    r  <si red'>  r                      |
    %3
    r8  <sol dod' mi'>  <sol dod' mi'>    r  <sol dod' mi'>  r                   |
    %4
    r8  <red' fad' si'>  <red' fad' si'>    r  <si red'>  r                      |
    %5
    r8  <red' fad' si'>  <red' fad' si'>    r  <si red'>  r                      |
    %6
    r8  <red' fad' si'>  <red' fad' si'>    r  <red' fad' si'>  r                |
    %7
    r8  <red' fad' si'>  <red' fad' si'>    r  <si red'>  <si red'>              |
    %8
    r8  <si fad'>  <si fad'>    r  <si fad'>  <si fad'>                          |
    %9   armonici al VII tasto, corde 2 e 1
    <fad''\harmonic si''\harmonic>4.   r4.                                       |
}
moldavaBassoCoda = {
    s2.*7 | si,2. | s2. |
}

% ---------- finali di A ----------
moldavaCantoAprima   = { mi4.~  mi4  sol,8 | }   % con il levare di B
moldavaCantoAseconda = { mi2.~ | mi2.\fermata | }
moldavaSopraAprima   = { r8  <sol si mi'>  <sol si mi'>    r  <sol si mi'>  r | }
moldavaSopraAseconda = {
    r8  <sol si mi'>  <sol si mi'>    r  <sol si mi'>  r                         |
    %    armonici al XII tasto, corde 3-2-1: l'accordo di mi minore
    r4.   <sol'\harmonic si'\harmonic mi''\harmonic>4.\fermata                   |
}
moldavaBassoAprima   = { mi,2. | }
moldavaBassoAseconda = { mi,2.~ | mi,2. | }

% ---------- il brano intero ----------
moldavaSopra = {
    \key mi \minor  \time 6/8
    \moldavaSopraIntro
    \moldavaSopraASette \moldavaSopraAprima
    \moldavaSopraB
    \moldavaSopraCoda
    \moldavaSopraASette \moldavaSopraAseconda
}
moldavaCanto = {
    \key mi \minor  \time 6/8
    \moldavaCantoIntro
    \moldavaCantoASette \moldavaCantoAprima
    \moldavaCantoB
    \moldavaCantoCoda
    \moldavaCantoASette \moldavaCantoAseconda
}
moldavaBasso = {
    \key mi \minor  \time 6/8
    \moldavaBassoIntro
    \moldavaBassoASette \moldavaBassoAprima
    \moldavaBassoB
    \moldavaBassoCoda
    \moldavaBassoASette \moldavaBassoAseconda
}
