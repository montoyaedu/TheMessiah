# Idee e stato del progetto

Appunti di lavoro: cosa c'è, cosa è stato proposto, cosa resta da decidere.
Lo scopo finale è doppio: un'edizione curata della trascrizione di M.
Vercesi e, a partire dallo stesso materiale, un metodo per la chitarra.

## Già fatto

- Musica divisa in strati indipendenti: note (`music/`), diteggiature
  (`dita/`), armonia (`armonia/`), impaginazioni (`impaginazioni/`),
  ricette di stampa (`editions/`); una cartella per brano in `brani/`.
- Diteggiatura come layer: più diteggiature possibili per la stessa musica,
  una per file; l'intavolatura segue quella scelta.
- Impaginazioni a scelta: classica, ariosa, compatta, telefono, shorts.
- Opzioni di resa: intavolatura, voci colorate, doppio rigo da pianoforte,
  voci separate, senza diteggiature.
- Armonia del Grave in due scritture (gradi e funzioni) e trasporto in
  un'altra tonalità con l'armonia che resta identica.
- Layer di accordi veri per il Grave (`armonia/accordi.ly`): sigle jazz
  sopra il rigo e note strutturali colorate (fondamentale, terza, quinta,
  settima).
- Provenienza delle note: in colore quelle prese dalle edizioni di
  riferimento, in nero quelle della trascrizione (`layers/provenienza.ly`).
- Foto del manoscritto in `fonti/manoscritto/`.

## Stato della trascrizione

| Parte | Battute | Stato |
|-------|---------|-------|
| Grave | 1–2 | dalla trascrizione esistente |
| Grave | 3–13 | bozza dalle parti d'arco, da confrontare col manoscritto |
| Allegro | 1–11 | dalla trascrizione esistente |
| Allegro | 12–38 | bozza grezza a quattro parti, non adattata alla chitarra |
| Allegro | 39–74 | da trascrivere |
| Allegro | 75–85 | dal manoscritto; letture incerte segnate con "?" |

Da chiarire: Grave battuta 2 (re o re♯), Allegro battuta 6 secondo violino
(do o do♯), le cinque letture dubbie del finale, le diteggiature del
manoscritto ancora da copiare.

## Idee per l'edizione

- **Varianti come layer**: la versione del manoscritto e quella
  dell'esecuzione attuale (che in alcuni punti è cambiata) affiancate,
  scegliendo in stampa quale usare o mostrandole come "ossia".
- **Diteggiatura del maestro M. Vercesi** in `dita/maestro.ly`, accanto alla principale.
- **Stampa di passaggi**: dividere la musica in sezioni con un nome
  (esposizione, episodi, coda) stampabili da sole; l'estratto per numeri
  di battuta non rende bene in LilyPond.
- **PDF sempre aggiornati**: pubblicazione automatica a ogni modifica, con
  una pagina leggibile dal telefono.
- **Ascolto**: file MIDI/audio di ogni edizione, anche a velocità ridotta.
- **Controlli automatici**: battute incomplete (già attivo), segni di
  diteggiatura senza nota (già attivo), note fuori dall'estensione,
  apertura della mano troppo larga calcolata da corde e tasti.

## Idee per il metodo

Obiettivo dichiarato: leggere a prima vista una partitura orchestrale o una
riduzione per pianoforte e scegliere in tempo reale posizioni e diteggiature
(la prima vista "che intendeva Mozart"), dopo aver imparato la tastiera e
le posizioni comuni.

- **Tastiera e posizioni**: lo stesso passaggio in più posizioni (II, V,
  VII, su una corda sola), come file di diteggiatura alternativi.
- **Lettura della partitura**: le quattro parti d'arco nelle chiavi
  originali (violino, contralto, basso), poi il doppio rigo, poi la
  chitarra come soluzione.
- **Riduzione a gradini**: solo melodia, melodia e basso, tutto ciò che sta
  sotto le dita; ogni gradino è un'edizione.
- **Armonia in tempo reale**: sapere a ogni passo l'accordo corrente e dove
  vuole andare. Oggi c'è l'accordo corrente; mancano cadenze, modulazioni
  e l'analisi dell'Allegro.
- **Tre scritture dell'armonia**: funzionale e classica (fatte per il
  Grave), più le **sigle popolari/jazz** (Mi−, Si7/Re♯).
- **Note strutturali colorate**: fondamentale, terza, quinta e settima
  dell'accordo in colori diversi, per vedere la forma dell'accordo come
  posizione trasportabile lungo il manico.
- **Trasporto**: lo stesso brano o passaggio in altre tonalità, con
  l'armonia invariata sotto.
- **Tecnica**: estratti per difficoltà (accordi puntati del Grave, scale a
  due voci, terze parallele del finale).

### Suggerimenti di realizzazione

- **Un solo layer di accordi "veri"** (Mi minore, Si7 con Re♯ al basso…),
  da cui ricavare in automatico le sigle jazz, i colori delle note
  strutturali e i diagrammi di tastiera. Si trasporta da solo insieme alla
  musica; gradi e funzioni restano scritti a mano perché sono
  un'interpretazione.
- **Diagrammi di tastiera** sopra il rigo per le posizioni principali.
- **Analisi della fuga** come layer: soggetto, risposta e controsoggetto
  etichettati o colorati nelle voci.
- **Schede di studio**: una pagina per passaggio difficile, con due o tre
  diteggiature a confronto.
- **Registro delle letture incerte**: elenco unico dei punti da verificare
  sul manoscritto, generato dai "?" nei file.

## Più brani con la stessa tecnica

Obiettivo: aprire diversi brani, studiarne la struttura e allenare la
meccanica della mano fino a suonare qualsiasi cosa, anche a orecchio.

- **Secondo brano proposto**: Vivaldi, Concerto in re maggiore RV 93 (liuto,
  due violini e basso continuo), in riduzione per chitarra sola.
  - Largo: breve, melodia su accordi tenuti e basso; il più adatto per
    cominciare.
  - Primo e terzo movimento: forma in due parti con ritornelli, melodia per
    terze su un basso ribattuto di re e la; con la sesta corda in re i bassi
    cadono a vuoto. Il basso ribattuto va semplificato.
  - **Scopo della riduzione**: la chitarra suona tutto (tutti e soli), non
    solo la parte del liuto, sulla falsariga della trascrizione del Messiah.
  - **Primo movimento: bozza grezza fatta** (`music/allegro1.ly`, 51
    battute): voce principale un'ottava sotto con la seconda voce in
    bicordi, basso con le crome ribattute ridotte a semiminime. Da adattare
    alle dita, verificare sull'autografo, armonizzare.
  - **Largo: prima bozza fatta** (`brani/vivaldi-rv93/`): parte del liuto e
    basso ridotto a una nota per accordo, sesta corda in re; partitura
    originale a quattro righi; accordi con sigle e colori. Da fare: le terze
    dei violini dove stanno sotto le dita, diteggiature, gradi e funzioni,
    verifica nota per nota sull'autografo.
  - Fonti di dominio pubblico individuate su IMSLP (pagina "Chamber Concerto
    in D major, RV 93"), ancora da scaricare:
    - autografo di Torino, ca. 1731, 10 pagine: file #779675, **ricevuto**
      e messo in `brani/vivaldi-rv93/fonti/`;
    - parti incise da Orhun Orhon nel 2020, dedicate al pubblico dominio:
      liuto #665543, violini I #665541, violini II #665542, bassi #665545.
    - Da evitare: la partitura Ricordi/Malipiero del 1949 (#1003067) e la
      partitura e il continuo di Orhon (#1012698, #1012699), che IMSLP segna
      come non di pubblico dominio in Europa.
- **Organizzazione** (fatta): una cartella per brano (`brani/<nome>/` con
  le sue note, diteggiature, armonia ed edizioni) e in comune funzioni e
  impaginazioni. Il Messiah è in `brani/messiah-overture/`.
- **Schemi ricorrenti come layer**: progressioni, cadenze e formule di
  accompagnamento etichettate nella musica. Sono poche e tornano in tutti i
  brani barocchi: riconoscerle è la base per suonare a orecchio, e ognuna
  corrisponde a una posizione della mano trasportabile.
- **Catalogo degli schemi**: una pagina che raccoglie lo stesso schema preso
  da brani diversi e in tonalità diverse.

## Il Messiah oltre l'Overture

- **N. 2, «Comfort ye my people»** (`brani/messiah-comfort-ye/`): battute
  1–13 in bozza dalla Schirmer. Quattro voci su un rigo: il canto del tenore
  ad altezza reale con il testo sotto, i violini un'ottava sotto, gli
  accordi ribattuti ridotti, il basso a una nota per accordo.
- Proseguire il recitativo (37 battute) e poi l'aria «Ev'ry valley».
- **Il canto come voce a sé**: nei brani vocali la linea del cantante resta
  distinta (colore, testo sotto), così si può suonare tutto oppure solo
  accompagnare.

## Esperimenti di "chitarrabilità"

- **Smetana, Vltava (La Moldava)** (`brani/smetana-moldava/`): 74 battute a
  tavolino, da provare sullo strumento. Introduzione: la figura dei flauti
  in V posizione, con la prima nota in armonico; tema in mi
  minore tutto sulla quarta corda, accordi sulle corde acute a vuoto, bassi
  a vuoto, alla maniera del Preludio n. 1 di Villa-Lobos; chiusa in armonici
  al XII tasto.
  - Introduzione completa, 39 battute come nell'originale: i flauti letti
    sulla partitura Eulenburg (in `fonti/`) e riuniti in una sola linea di
    semicrome. Battute 3–7 a pitch in V posizione, con la nota dell'arpa
    resa come armonico; dalla 8 un'ottava sotto i flauti. Battute 28–35:
    solo la voce superiore delle terze. Battute 36–39: gli archi, letti
    sulla partitura (lo schema delle battute 3–4 un'ottava sotto).
  - Il tema parte dalla quinta corda: il si del levare striscia fino al mi
    (VII tasto), come all'inizio del Preludio n. 1; dalla seconda battuta
    passa sulla quarta. Le corde stanno in `dita/villa-lobos.ly`.
  - Seconda voce dell'introduzione, come opzione (`seconda = ##t`, edizione
    `moldava-due-voci`): i clarinetti delle battute 17–27 letti sulla
    partitura, e la sesta inferiore dei flauti alle battute 28–35, dedotta.
    Su una chitarra sola è al limite: serve per studiare la partitura o per
    un duo.
  - **Da leggere ancora**: la sesta inferiore dei flauti nota per nota
    (28–35), i clarinetti dalla 28.
  - Variante del tema con l'onda sotto (`onda = ##t`, edizione
    `moldava-onda`): al posto degli accordi, un arpeggio di semicrome che
    sale e scende sulle corde acute, con le stesse note e le stesse corde a
    vuoto. È un adattamento: gli archi di Smetana ("sempre ondeggiante", da
    battuta 40) hanno una figura per gradi, non ancora trascritta.
  - Da fare se funziona: le due sorgenti che si intrecciano, la sezione in
    mi maggiore, una diteggiatura per gli accordi tastati.
- **Armonici come layer d'effetto**: gli armonici naturali disponibili in una
  posizione (V, VII, XII) sono pochi e fissi; una tabella per posizione dice
  subito quali "pizzicati" sono possibili senza muovere la mano.
- **Mendelssohn, Elijah** (`brani/mendelssohn-elijah/`), dallo spartito
  Novello (in `fonti/`):
  - Introduzione: il recitativo di Elia, 12 battute. La voce col testo, da
    cantare o da suonare, e un basso sotto (pedali di re e di la letti,
    battute 7–10 dedotte).
  - Overture, fuga in re minore: schizzo delle prime diciassette
    battute: il semitono la–si♭ del basso, soggetto, coda, risposta col controsoggetto,
    terza entrata un'ottava sopra e inizio della quarta. Dalla battuta 10
    c'è soprattutto la voce superiore.
  - Da fare: l'accompagnamento vero del recitativo, le voci sotto la terza
    entrata (battute 10–17), dalla battuta 18 in poi; provare la sesta corda in re per il
    recitativo.
- **Registro e dinamica**: quando un'entrata è troppo acuta per stare sotto
  le dita insieme al basso, si abbassa di un'ottava e il registro si rende
  con la dinamica (forte per l'acuto). Fatto per la quarta entrata
  dell'Overture di Elijah (battute 14–17).
- **Cantare e suonare**: nei brani vocali la voce è una linea a sé col
  testo; un'edizione potrebbe togliere la voce dal rigo della chitarra e
  lasciare solo l'accompagnamento per chi canta.
- **Idea generale**: per ogni brano cercare prima la tonalità e la corda che
  lo rendono "chitarristico" (corde a vuoto come pedale o come accordo), e
  solo dopo ridurre le parti.

## Lo studio come schizzo

Osservazione sui 12 Studi di Villa-Lobos: più che testi fissati, sembrano
schizzi di come si scrive uno studio sulla chitarra. Uno studio è una
formula della mano destra più una forma della sinistra che si sposta lungo
il manico; le note sono una delle realizzazioni possibili.

- **Formula e forma come layer separati**: scrivere uno studio come schema
  (la formula di arpeggio, la successione di posizioni) e generarne le
  realizzazioni, invece di fissare una sola stesura.
- **Lo stesso schema su altro materiale**: applicare una formula a
  un'armonia presa dal repertorio (la progressione del Largo di Vivaldi, il
  tema della Moldava) per ottenere uno studio nuovo.
- Vale già per la Moldava: accordi e onda sotto il tema sono due
  realizzazioni dello stesso schema.
- **Esempio proposto**: lo Studio n. 1 richiama la scena del Commendatore
  nel Don Giovanni di Mozart («Don Giovanni, a cenar teco m'invitasti»):
  settime diminuite che scivolano per semitoni. Mozart è di pubblico
  dominio: si può scrivere uno studio che applica una formula di arpeggio
  all'armonia di quella scena. Serve la partitura (IMSLP) per leggere la
  successione degli accordi.
- Nota: le opere di Villa-Lobos (morto nel 1959) non sono di pubblico
  dominio; servono come modello di metodo, non come testo da incidere.

## Repertorio e studi propri

- **Repertorio da studiare e recuperare**: per ora solo brani di pubblico
  dominio. Tenere un elenco (`REPERTORIO.md`) con, per ogni brano: autore,
  se è di pubblico dominio, quale fonte libera esiste, a che punto è.
- **Fonti già pronte**: Mutopia pubblica molto repertorio per chitarra già
  in LilyPond con licenza chiara (Sor, Giuliani, Carcassi, Tárrega…). Un
  brano preso da lì si può dividere negli strati di questo progetto molto
  più in fretta che partendo da una scansione.
- **Studi propri**: trascrivere le idee che nascono sulla chitarra come
  piccoli studi, in `brani/studi/`. Serve un modo rapido per dettarle: per
  corda e tasto, a parole, o con la foto di un appunto.
- **Dallo studio allo schema**: ogni studio proprio dichiara quale schema o
  quale difficoltà allena, così entra nel catalogo degli schemi insieme ai
  passaggi presi dal repertorio.

## Piano: un passo per volta

Regola di lavoro: ogni passo aggiunge **un solo layer o una sola edizione**,
si prova prima sul Grave (13 battute, armonia chiara) e finisce con un PDF
da giudicare. Solo dopo si estende all'Allegro.

Due binari paralleli:

- **Testo** (serve il manoscritto o l'orecchio dell'interprete): correggere
  le bozze, sciogliere le letture dubbie, copiare le diteggiature.
- **Strumenti** (si possono costruire subito sulle battute già sicure).

| Passo | Cosa | Binario | Dipende da |
|-------|------|---------|------------|
| 1 | Layer di accordi veri per il Grave: sigle jazz e note strutturali colorate — **fatto**, da giudicare | strumenti | niente |
| 2 | Varianti come layer (manoscritto / esecuzione attuale), provate su una battuta | strumenti | niente |
| 3 | Correzioni al PDF completo: Grave 3–13 e Allegro 12–38 adattati alla chitarra | testo | lettura dell'interprete |
| 4 | Bozza delle battute 39–74: il brano diventa intero | testo | passo 3, per sapere come ridurre |
| 5 | Diteggiatura del maestro M. Vercesi, posizioni alternative, controllo dell'apertura della mano | entrambi | manoscritto leggibile |
| 6 | Armonia dell'Allegro, cadenze e modulazioni, analisi della fuga | strumenti | passo 1 e testo stabile |
| 7 | Materiali del metodo: partitura d'archi in chiavi originali, riduzione a gradini, schede di studio | strumenti | passi 4 e 6 |
| 8 | Pubblicazione automatica dei PDF, ascolto MIDI | strumenti | quando serve |

## Da decidere

- Sigle funzionali preferite (sP o tG per il VI grado; DD o (D) per la
  doppia dominante).
- Che cosa si intende per "trasporto meccanico".
- Se pubblicare i PDF in automatico.
