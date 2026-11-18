\version "2.24.0"
\language "italiano"

% SMETANA, Vltava (La Moldava) -- ESPERIMENTO per chitarra sola alla
% maniera del Preludio n. 1 di Villa-Lobos. Mi minore come l'originale,
% accordatura normale, altezze reali.
%
% Sezioni (43 battute):
%   Intro  8   le sorgenti: la figura dei flauti in V posizione; la prima
%              nota di ogni figura e' un armonico, l'accordo pizzicato sono
%              le corde acute a vuoto
%   A      8   il tema, tutto sulla quarta corda col pollice; sopra, accordi
%              sulle corde acute, a vuoto dove l'armonia lo permette
%   B      8   seconda frase del tema
%   Coda   9   la cadenza sospesa sulla dominante
%   A'     8   ritorno del tema
%   Fine   2   accordo di mi minore in armonici al XII tasto
%
% Tre voci:  moldavaSopra (onda e accordi), moldavaCanto (il tema),
%            moldavaBasso (armonici dell'introduzione e bassi a vuoto)
%
% COSA E' DI SMETANA E COSA NO: il tema (sezioni A, B, Coda) e' il suo,
% riscontrato con una riduzione pubblica. Dell'introduzione sono sue le
% battute 1-3, lette sulla partitura Eulenburg (fonti/); le battute 4-8
% proseguono liberamente la sua figura e vanno sostituite quando saranno
% lette. Armonia del tema, disposizione e armonici sono dell'esperimento.
% Tutto scritto a tavolino, non provato sullo strumento.
%
% ARMONICI NATURALI usati (testa a rombo, alla nota che si sente):
%   VII tasto, 5a corda -> mi      VII tasto, corde 2 e 1 -> fa diesis, si
%   XII tasto, corde 3-2-1 -> sol, si, mi

% ---------- le sorgenti ----------
% Battute 1-3: la figura VERA del primo flauto (mi fa# sol fa# sol la | si),
% l'entrata del secondo flauto una terza sopra (battuta 3), la nota
% dell'arpa sul battere e l'accordo pizzicato dei violini sull'ultima croma.
% Sulla chitarra la nota dell'arpa e la prima nota del flauto sono la
% stessa: si suona come ARMONICO (VII tasto, quinta corda) e il dito che lo
% ha sfiorato scende subito sul VII tasto della seconda corda.
% Battute 4-8: NON ancora lette sulla partitura; qui la figura di Smetana
% e' solo proseguita liberamente fino al levare del tema.
figuraUno  = { <mi'\harmonic>16 fad' sol' fad' sol' la' }    % primo flauto
figuraDue  = { sol'16 la' si' la' si' do'' }                 % secondo flauto
figuraGiu  = { re''16 do'' si' la' sol' fad' }               % (libera) discesa

moldavaSopraIntro = {
    %1
    \figuraUno            si'8-.     r    r                                      |
    %2
    \figuraUno            si'8-.     r    r                                      |
    %3
    \figuraUno            \figuraDue                                             |
    %4
    re''8-.    r    r     r4.                                                    |
    %5
    \figuraUno            si'8-.     r    r                                      |
    %6
    \figuraUno            \figuraDue                                             |
    %7
    \figuraGiu            mi'8-.     r    r                                      |
    %8
    \figuraUno            si'8-.     r    r                                      |
}

% L'accordo pizzicato dei violini: le tre corde acute a vuoto, sull'ultima croma.
moldavaBassoIntro = {
    %1
    r4.                   r4         <sol si mi'>8                               |
    %2
    r4.                   r4         <sol si mi'>8                               |
    %3
    s2.                                                                          |
    %4
    r4.                   r4         <sol si mi'>8                               |
    %5
    r4.                   r4         <sol si mi'>8                               |
    %6
    s2.                                                                          |
    %7
    r4.                   r4         <sol si mi'>8                               |
    %8
    s2.                                                                          |
}

moldavaCantoIntro = {
    s2.*7
    %8   levare del tema
    s4.                   s4         si,8                                        |
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
    r4.                   r4         si,8                                        |
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
