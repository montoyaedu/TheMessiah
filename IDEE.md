# Idee e stato del progetto

Appunti di lavoro: cosa c'è, cosa è stato proposto, cosa resta da decidere.
Lo scopo finale è doppio: un'edizione curata della trascrizione di M.
Vercesi e, a partire dallo stesso materiale, un metodo per la chitarra.

## Già fatto

- Musica divisa in strati indipendenti: note (`music/`), diteggiature
  (`dita/`), armonia (`armonia/`), impaginazioni (`impaginazioni/`),
  ricette di stampa (`editions/`).
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
