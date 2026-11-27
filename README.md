# Trascrizioni per chitarra classica con LilyPond e un assistente AI

**Benvenuto a chiunque voglia contribuire**: chitarristi che provano una pagina e
dicono cosa non funziona, chi sa leggere una fonte meglio di noi, chi conosce
LilyPond. Vedi [Come contribuire](#come-contribuire).

## Ultimi lavori

Il più recente in alto. **Ogni passo di lavoro aggiunge qui una voce**: che cosa
è cambiato, perché, e che cosa resta non verificato. Vale per tutti, assistente
AI compreso (vedi [Come contribuire](#come-contribuire)). Le voci più vecchie
scendono in [docs/diario.md](docs/diario.md).

<!-- DIARIO:inizio -->
- **2026-11-27 · Diario dei lavori.** Aggiunta questa sezione e la regola che
  ogni passo la aggiorna. Nessuna partitura è cambiata.
- **2026-11-27 · Elijah, finale: voci interne (in corso).** Avviata la lettura
  delle voci interne e dell'armonia delle battute 57–77 sull'ultima pagina
  della Novello. *Non ancora nella partitura.* Salvati in `strumenti/` la
  griglia delle altezze e il controllo di suonabilità.
- **2026-11-27 · PDF da scaricare.** I 38 PDF sono in `pdf/<brano>/`, con la
  tabella qui sotto generata da `make pubblica`. Le date della tabella sono
  quelle di comparsa del file, non sempre quelle del primo lavoro.
- **2026-11-27 · README, scheda di revisione, fonti.** README riscritto intorno
  al processo e alle perplessità; nuovo strumento che affianca fonte e
  trascrizione ([esempio](docs/revisione/elijah-overture-57-77.pdf), provato su
  una sola pagina); i PDF delle fonti, che git scartava in silenzio, ora sono
  tracciati. Tutto portato su `main`.
- **2026-11-22 · Elijah, finale: confronto tra due edizioni.** Battute 57–77
  confrontate tra Novello e Peters: coincidono, salvo una legatura (aggiunta,
  battute 64–65) e il sol della battuta 71 (**aperto**: naturale nella Peters,
  diesis nella nostra lettura). Battuta 73 controllata solo in parte.
- **2026-11-22 · Vivaldi RV 93, primo movimento.** Tutte le voci su un rigo di
  chitarra, sesta corda in mi, un'ottava sotto, tempo ridotto a 76; ogni voce è
  un layer che si può togliere. La rimozione automatica dei raddoppi **non è
  riuscita**. Non confrontato con l'autografo, non provato sullo strumento.
- **2026-11-21 · Elijah: verifica avversariale completa.** Tre revisori
  indipendenti hanno trovato 11 errori (accordi del recitativo, alterazioni,
  note mancanti nel basso), tutti corretti. Aggiunti gli accordi degli ottoni
  del recitativo, con la linea interna che si muove.
- **2026-11-20 · Elijah: Overture intera.** 77 battute; dalla 39 solo canto e
  basso. Sigle degli accordi fino alla 38, dedotte e non lette.
<!-- DIARIO:fine -->

## Le partiture, da scaricare

Tutti i PDF prodotti finora, in ordine cronologico. Sono **bozze di lavoro**, non
edizioni: leggi [lo stato di ogni brano](#i-brani-in-corso) prima di fidarti di una nota.

<!-- TABELLA-PDF:inizio -->
| Data | Brano | PDF | Caratteristiche | Per rigenerarlo |
|---|---|---|---|---|
| 2026-11-18 | Händel, Messiah, «Comfort ye» | [comfort-ye-chitarra](pdf/messiah-comfort-ye/comfort-ye-chitarra.pdf) | Chitarra sola, con il testo sotto il canto. | `make build/messiah-comfort-ye/comfort-ye-chitarra.pdf` |
| 2026-11-18 | Händel, Messiah, «Comfort ye» | [comfort-ye-chitarra-accordi](pdf/messiah-comfort-ye/comfort-ye-chitarra-accordi.pdf) | Con sigle e note strutturali dell'accordo colorate. | `make build/messiah-comfort-ye/comfort-ye-chitarra-accordi.pdf` |
| 2026-11-18 | Händel, Messiah, «Comfort ye» | [comfort-ye-chitarra-tab](pdf/messiah-comfort-ye/comfort-ye-chitarra-tab.pdf) | Con intavolatura. | `make build/messiah-comfort-ye/comfort-ye-chitarra-tab.pdf` |
| 2026-11-18 | Händel, Messiah, «Comfort ye» | [comfort-ye-chitarra-voci](pdf/messiah-comfort-ye/comfort-ye-chitarra-voci.pdf) | Come sopra, con le quattro voci in colori diversi (canto in rosso). | `make build/messiah-comfort-ye/comfort-ye-chitarra-voci.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [allegro-bozza](pdf/messiah-overture/allegro-bozza.pdf) | Bozza di lavoro dell'Allegro: numero su ogni battuta, contato dall'inizio dell'Allegro come nel manoscritto. | `make build/messiah-overture/allegro-bozza.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [allegro-finale-bozza](pdf/messiah-overture/allegro-finale-bozza.pdf) | Bozza di lavoro: ultime 11 battute dell'Allegro, dal manoscritto. Un numero su ogni battuta, per il confronto. | `make build/messiah-overture/allegro-finale-bozza.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [allegro-shorts](pdf/messiah-overture/allegro-shorts.pdf) | Video verticali: due sistemi per pagina, voci colorate, intavolatura. | `make build/messiah-overture/allegro-shorts.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [allegro-voci-separate](pdf/messiah-overture/allegro-voci-separate.pdf) | Le quattro parti d'arco su righi separati (per studiare le voci). | `make build/messiah-overture/allegro-voci-separate.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-ariosa](pdf/messiah-overture/overture-ariosa.pdf) | Note grandi e larghe, per lo studio e la prima vista. | `make build/messiah-overture/overture-ariosa.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-classica](pdf/messiah-overture/overture-classica.pdf) | Edizione di riferimento: sola notazione con diteggiature, impaginazione da leggio. | `make build/messiah-overture/overture-classica.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-classica-accordi](pdf/messiah-overture/overture-classica-accordi.pdf) | Sigle jazz sopra il rigo e note strutturali dell'accordo colorate. | `make build/messiah-overture/overture-classica-accordi.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-classica-armonia](pdf/messiah-overture/overture-classica-armonia.pdf) | Come overture-classica, con le tre scritture dell'armonia: sigle jazz sopra il rigo, gradi e funzioni (in grassetto) sotto. | `make build/messiah-overture/overture-classica-armonia.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-classica-armonia-la-minore](pdf/messiah-overture/overture-classica-armonia-la-minore.pdf) | La stessa Overture trasportata in la minore: le note cambiano, l'armonia scritta sotto resta identica. Senza diteggiature. | `make build/messiah-overture/overture-classica-armonia-la-minore.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-classica-colori](pdf/messiah-overture/overture-classica-colori.pdf) | Come overture-classica, una voce per colore. | `make build/messiah-overture/overture-classica-colori.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-classica-doppio-rigo](pdf/messiah-overture/overture-classica-doppio-rigo.pdf) | Doppio rigo (violino + basso) ad altezze reali. | `make build/messiah-overture/overture-classica-doppio-rigo.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-classica-provenienza](pdf/messiah-overture/overture-classica-provenienza.pdf) | Colora le note che vengono dalle edizioni di riferimento. | `make build/messiah-overture/overture-classica-provenienza.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-classica-senza-dita](pdf/messiah-overture/overture-classica-senza-dita.pdf) | Come overture-classica, senza diteggiature, corde e barre'. | `make build/messiah-overture/overture-classica-senza-dita.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-classica-tab](pdf/messiah-overture/overture-classica-tab.pdf) | Come overture-classica, con il rigo di intavolatura. | `make build/messiah-overture/overture-classica-tab.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-compatta](pdf/messiah-overture/overture-compatta.pdf) | Tutto in una pagina, spaziatura stretta. | `make build/messiah-overture/overture-compatta.pdf` |
| 2026-11-18 | Händel, Messiah, Overture | [overture-telefono](pdf/messiah-overture/overture-telefono.pdf) | Schermo del cellulare, voci colorate. | `make build/messiah-overture/overture-telefono.pdf` |
| 2026-11-18 | Smetana, Vltava (La Moldava) | [moldava](pdf/smetana-moldava/moldava.pdf) | Notazione classica. | `make build/smetana-moldava/moldava.pdf` |
| 2026-11-18 | Smetana, Vltava (La Moldava) | [moldava-accordi](pdf/smetana-moldava/moldava-accordi.pdf) | Sigle e note strutturali dell'accordo colorate. | `make build/smetana-moldava/moldava-accordi.pdf` |
| 2026-11-18 | Smetana, Vltava (La Moldava) | [moldava-voci](pdf/smetana-moldava/moldava-voci.pdf) | Le tre voci in colori diversi: canto rosso, onda e accordi blu, bassi e armonici verdi. | `make build/smetana-moldava/moldava-voci.pdf` |
| 2026-11-18 | Vivaldi, Concerto RV 93 | [allegro1-chitarra](pdf/vivaldi-rv93/allegro1-chitarra.pdf) | Primo movimento per chitarra sola (bozza), numero su ogni battuta. | `make build/vivaldi-rv93/allegro1-chitarra.pdf` |
| 2026-11-18 | Vivaldi, Concerto RV 93 | [allegro1-chitarra-tab](pdf/vivaldi-rv93/allegro1-chitarra-tab.pdf) | Come allegro1-chitarra, con intavolatura. | `make build/vivaldi-rv93/allegro1-chitarra-tab.pdf` |
| 2026-11-18 | Vivaldi, Concerto RV 93 | [largo-chitarra](pdf/vivaldi-rv93/largo-chitarra.pdf) | Largo per chitarra sola: parte del liuto e basso ridotto. | `make build/vivaldi-rv93/largo-chitarra.pdf` |
| 2026-11-18 | Vivaldi, Concerto RV 93 | [largo-chitarra-accordi](pdf/vivaldi-rv93/largo-chitarra-accordi.pdf) | Come largo-chitarra, con sigle e note strutturali colorate. | `make build/vivaldi-rv93/largo-chitarra-accordi.pdf` |
| 2026-11-18 | Vivaldi, Concerto RV 93 | [largo-chitarra-tab](pdf/vivaldi-rv93/largo-chitarra-tab.pdf) | Come largo-chitarra, con intavolatura. | `make build/vivaldi-rv93/largo-chitarra-tab.pdf` |
| 2026-11-18 | Vivaldi, Concerto RV 93 | [largo-partitura](pdf/vivaldi-rv93/largo-partitura.pdf) | Partitura originale: liuto, due violini e basso. | `make build/vivaldi-rv93/largo-partitura.pdf` |
| 2026-11-19 | Smetana, Vltava (La Moldava) | [moldava-due-voci](pdf/smetana-moldava/moldava-due-voci.pdf) | Come moldava-voci, con la seconda voce dell'introduzione: i clarinetti (battute 17-27) e la sesta inferiore dei flauti (28-35), in viola. Per studiare la partitura o per due chitarre: su una sola e' al limite. | `make build/smetana-moldava/moldava-due-voci.pdf` |
| 2026-11-19 | Smetana, Vltava (La Moldava) | [moldava-onda](pdf/smetana-moldava/moldava-onda.pdf) | Il tema con l'onda di semicrome sotto, al posto degli accordi. | `make build/smetana-moldava/moldava-onda.pdf` |
| 2026-11-20 | Mendelssohn, Elijah | [elijah](pdf/mendelssohn-elijah/elijah.pdf) | Introduzione e Overture, notazione classica. | `make build/mendelssohn-elijah/elijah.pdf` |
| 2026-11-20 | Mendelssohn, Elijah | [elijah-accordi](pdf/mendelssohn-elijah/elijah-accordi.pdf) | Sigle in stile jazz sopra il rigo e note strutturali dell'accordo colorate. Gli accordi sono dedotti dalle voci trascritte (vedi armonia/accordi.ly). | `make build/mendelssohn-elijah/elijah-accordi.pdf` |
| 2026-11-20 | Mendelssohn, Elijah | [elijah-sigle](pdf/mendelssohn-elijah/elijah-sigle.pdf) | Solo le sigle in stile jazz sopra il rigo, note in nero. | `make build/mendelssohn-elijah/elijah-sigle.pdf` |
| 2026-11-20 | Mendelssohn, Elijah | [elijah-tab](pdf/mendelssohn-elijah/elijah-tab.pdf) | Come sopra, con intavolatura. | `make build/mendelssohn-elijah/elijah-tab.pdf` |
| 2026-11-20 | Mendelssohn, Elijah | [elijah-voci](pdf/mendelssohn-elijah/elijah-voci.pdf) | Come sopra, con le voci in colori diversi (la voce di Elia in rosso). | `make build/mendelssohn-elijah/elijah-voci.pdf` |
| 2026-11-22 | Vivaldi, Concerto RV 93 | [allegro1-chitarra-completo](pdf/vivaldi-rv93/allegro1-chitarra-completo.pdf) | Primo movimento: tutti e quattro i layer (violino, violoncello, pianoforte). | `make build/vivaldi-rv93/allegro1-chitarra-completo.pdf` |
| 2026-11-22 | Vivaldi, Concerto RV 93 | [allegro1-chitarra-senza-piano-sinistra](pdf/vivaldi-rv93/allegro1-chitarra-senza-piano-sinistra.pdf) | Stesso brano senza il layer del pianoforte sinistro (il basso del pianoforte). | `make build/vivaldi-rv93/allegro1-chitarra-senza-piano-sinistra.pdf` |
<!-- TABELLA-PDF:fine -->

### Come rigenerarle

Servono [LilyPond](https://lilypond.org) 2.24 e `make`.

    make                               # tutte le edizioni, in build/<brano>/
    make BRANO=mendelssohn-elijah      # un solo brano
    make build/smetana-moldava/moldava.pdf    # una sola edizione
    make pubblica                      # ricompila, copia in pdf/ e aggiorna questa tabella

### Quali file modificare

Ogni brano è una cartella `brani/<brano>/`, divisa in strati indipendenti:

| Voglio cambiare… | File da modificare |
|---|---|
| una nota, un ritmo, una pausa | `brani/<brano>/music/*.ly`: una variabile per voce, una battuta per riga, preceduta dal suo numero (`%12`) e chiusa dal controllo di battuta |
| una diteggiatura, una corda, un barré | `brani/<brano>/dita/*.ly`: stesso ritmo delle note, scritto a spazi (`s4-3` = dito 3 sulla nota di quel quarto) |
| un accordo in sigla, un grado, una funzione | `brani/<brano>/armonia/*.ly` |
| quali voci stanno sul rigo, i colori, le dinamiche | `brani/<brano>/layers/*.ly` |
| il formato della pagina, la densità | `impaginazioni/*.ly` (comuni a tutti i brani) |
| che cosa stampa un PDF (impaginazione + opzioni) | `brani/<brano>/editions/<nome>.ly`: poche righe; copiarne una per fare una nuova edizione |
| una funzione o un'opzione comune | `lib/*.ly` (le opzioni sono elencate in `lib/opzioni.ly`) |

Le note sono in italiano (`do re mi`, `dod` = do diesis, `sib` = si bemolle;
`'` e `,` spostano l'ottava). Dopo ogni modifica si lancia `make`: se una battuta
non torna, LilyPond dice la riga. Dettagli in [brani/README.md](brani/README.md)
e più sotto in [Come si compila](#come-si-compila).

### Come contribuire

- **Suonare e riferire.** È il contributo più utile: apri un PDF, prova un
  passaggio, e scrivi in una *issue* la battuta e cosa non va (nota sbagliata,
  non sta sotto le dita, non rende l'effetto). Non serve conoscere LilyPond.
- **Rivedere con la scheda.** In [docs/revisione/](docs/revisione/) ci sono
  schede con la fonte sopra e la trascrizione sotto: si stampano, si spuntano,
  si fotografano.
- **Correggere i sorgenti.** Una battuta per riga: una *pull request* con la
  riga corretta e la fonte da cui viene è benvenuta.
- **Proporre un'altra soluzione.** Diteggiature e scelte di riduzione sono
  strati separati: si può aggiungere la propria senza cancellare quella che c'è.
- **Proporre un brano** di pubblico dominio, con la fonte.

**Tre regole per ogni contributo**, di una persona o di un assistente AI:

1. **Aggiorna [Ultimi lavori](#ultimi-lavori)** in testa a questo file con una
   voce datata: che cosa hai cambiato, perché, e che cosa non hai verificato.
   Deve bastare quella voce per capire l'ultimo lavoro fatto.
2. Di' se ogni nota è *letta* (da quale fonte), *dedotta* o *non verificata*.
3. Usa solo fonti di pubblico dominio o con licenza compatibile, e citale.

Se hai rigenerato i PDF, lancia `make pubblica` così la tabella resta allineata.

---

Un laboratorio: ridurre per **chitarra sola** musica nata per orchestra, coro o
ensemble (Händel, Mendelssohn, Vivaldi, Smetana), scrivendo le partiture in
LilyPond con l'aiuto di un assistente AI, e capire **quanto di questo lavoro si
può davvero affidare all'AI** e quanto va riletto, corretto e ascoltato da un
chitarrista.

È un cantiere aperto. Quasi tutto quello che c'è qui è una **bozza da
verificare**, non un'edizione.

## Il processo che stiamo seguendo

1. **Fonte.** Si parte da edizioni di pubblico dominio (IMSLP) o dal manoscritto;
   i PDF stanno in `brani/<brano>/fonti/`.
2. **Lettura.** L'AI legge la scansione battuta per battuta, con una griglia dei
   nomi delle note sovrapposta al rigo, e scrive le note in LilyPond.
3. **Strati.** Note, diteggiature, armonia, impaginazione stanno in file
   separati, così ogni scelta si può cambiare senza toccare le altre.
4. **Verifica avversariale.** Un secondo lettore, che non ha visto il lavoro del
   primo, confronta la trascrizione con la stampa partendo dal presupposto che
   sia sbagliata: prima i ritmi, poi le altezze. Dove esistono due edizioni si
   incrociano.
5. **Controllo automatico.** Uno script verifica che il basso stia sotto il
   canto e che le note stiano sotto le dita.
6. **Revisione umana.** Si stampa una *scheda di revisione* (fonte sopra,
   trascrizione sotto), si suona, si ascolta, si annota. È il passo che decide.

![Scheda di revisione: la fonte sopra, la trascrizione sotto](docs/img/scheda-revisione-elijah.png)

La scheda si genera con `strumenti/scheda_revisione.py`; un esempio completo è
[docs/revisione/elijah-overture-57-77.pdf](docs/revisione/elijah-overture-57-77.pdf).

## I tre criteri (e dove l'AI aiuta davvero)

Ogni battuta va giudicata tre volte, e sono tre giudizi diversi:

| Criterio | Domanda | Che cosa può fare l'AI | Che cosa resta al chitarrista |
|---|---|---|---|
| **Concordanza** con l'originale | Le note e i ritmi sono quelli della fonte? | Leggere, confrontare, far controllare da un secondo lettore. Funziona, ma sbaglia: vedi sotto. | Decidere i casi dubbi, soprattutto dove le edizioni non coincidono. |
| **Idiomaticità** ("chitarrabilità") | Sta sotto le dita? Suona naturale sullo strumento? | Controlli meccanici: estensione, apertura della mano, incroci delle voci. | Tutto il resto: diteggiatura, posizione, fatica, velocità. Si capisce solo suonando. |
| **Effetto** | Dà l'illusione dell'originale? | Proporre soluzioni (ottave, armonici, arpeggi al posto di accordi tenuti, dinamiche per voce). | Giudicare all'ascolto, e avere il coraggio di cambiare le note, come fa Villa-Lobos, quando l'effetto lo chiede. |

Per "chitarrabilità" il termine in uso è **idiomaticità**: una scrittura è
*idiomatica* quando sfrutta ciò che lo strumento fa bene (corde a vuoto,
posizioni fisse, armonici, campanelas). *Suonabilità* indica solo il livello
minimo: che il passo si possa eseguire.

### Perplessità, dichiarate

- **L'AI legge male più spesso di quanto sembri.** Nell'Overture di Elijah i
  controlli indipendenti hanno trovato 14 errori in battute già date per
  buone: ritmi invertiti, alterazioni mancanti, una nota legata che era
  ribattuta, accordi sbagliati. Senza il secondo lettore sarebbero rimasti.
- **L'AI non sente e non suona.** Tutto ciò che riguarda idiomaticità ed effetto
  è scritto "a tavolino": plausibile, mai provato. Tre errori li ha trovati
  l'orecchio del chitarrista prima dei controlli.
- **L'AI dichiara le incertezze, ma non sempre.** Più volte una lettura
  "dedotta" si è rivelata sbagliata. Regola adottata: ogni nota è *letta*,
  *dedotta* o *non verificata*, e va scritto quale.
- **Il costo della verifica è alto.** Controllare richiede più lavoro che
  scrivere. Resta da capire se, sommando tutto, si risparmia tempo rispetto a
  trascrivere a mano, o se il vantaggio è un altro: poter generare dalla stessa
  musica versioni, livelli e materiali di studio diversi.
- **Quanta libertà?** Una riduzione fedele nota per nota spesso non è
  chitarristica. Dove finisce la trascrizione e dove comincia una nuova
  scrittura è una decisione musicale, non tecnica.

## I brani in corso

| Brano | Stato | Da risolvere |
|---|---|---|
| **Händel, Messiah, Overture** (`messiah-overture`), trascrizione di M. Vercesi | Grave in bozza; Allegro battute 1–38 e le ultime 11 dal manoscritto | Mancano le battute 39–74 dell'Allegro; confronto col manoscritto; diteggiature del maestro M. Vercesi |
| **Händel, Messiah n. 2, «Comfort ye»** (`messiah-comfort-ye`) | Battute 1–13 | Battute 14–37 |
| **Mendelssohn, Elijah, Introduzione e Overture** (`mendelssohn-elijah`) | Recitativo completo; Overture intera, 77 battute; ritmi e altezze verificati; fine confrontata su due edizioni | Voci interne dalla battuta 39; battuta 71 (sol o sol♯: le edizioni non coincidono); mai provata sullo strumento |
| **Vivaldi, Concerto RV 93** (`vivaldi-rv93`) | Largo in bozza; primo movimento con tutte le voci su un rigo, a tempo ridotto | Scegliere le voci da tenere e togliere i raddoppi; confronto con l'autografo; terzo movimento |
| **Smetana, Vltava** (`smetana-moldava`) | Esperimento: 74 battute, i flauti dell'introduzione in una sola linea, tema sulla quarta corda | In pausa: revisione dell'effetto da parte del chitarrista |

### Come appaiono oggi

**Messiah, Overture**: in nero ciò che viene dalla trascrizione, in viola le
bozze prese dalle edizioni di riferimento.

![Messiah, Overture: provenienza delle note](docs/img/messiah-provenienza.png)

**Elijah**: il recitativo con la voce (rosso), gli accordi degli ottoni (blu) e
il basso (verde), poi l'inizio della fuga.

![Elijah: recitativo e inizio dell'Overture](docs/img/elijah-voci.png)

Lo stesso con le sigle degli accordi e le note strutturali colorate
(fondamentale, terza, quinta, settima):

![Elijah: sigle e note dell'accordo](docs/img/elijah-accordi.png)

**La Moldava**: l'introduzione dei due flauti e il tema, alla maniera del
Preludio n. 1 di Villa-Lobos.

![La Moldava](docs/img/moldava-voci.png)

**Vivaldi RV 93**, primo movimento: tutte le voci su un solo rigo. Non è ancora
chitarristico: è il materiale da cui scegliere.

![Vivaldi RV 93, tutte le voci](docs/img/vivaldi-tutte-le-voci.png)

**«Comfort ye»**: il canto col testo, da cantare o da suonare.

![Comfort ye](docs/img/comfort-ye.png)

## Dove leggere il resto

- [IDEE.md](IDEE.md): idee, piano di lavoro, cose da decidere, stato di ogni brano.
- [docs/cronologia-chat.md](docs/cronologia-chat.md): la conversazione con
  l'assistente, per risalire alle scelte (istantanea, solo testo).
- [brani/README.md](brani/README.md): come è fatta la cartella di un brano.

## Come si compila

    make                                                # tutte le edizioni di tutti i brani, in build/<brano>/
    make BRANO=messiah-overture                         # un solo brano
    make build/messiah-overture/overture-classica.pdf   # una sola edizione
    make stampa BRANO=messiah-overture IMPAGINAZIONE=ariosa DITA=nessuna TAB=si COLORI=si   # combinazione a scelta

Ogni brano ha la sua cartella in `brani/`; funzioni e impaginazioni sono in
comune. La musica è divisa in strati indipendenti:

| Cartella                   | Contenuto                                                      |
|----------------------------|----------------------------------------------------------------|
| `brani/<brano>/music/`     | solo note e durate, una variabile per voce, una battuta per riga |
| `brani/<brano>/dita/`      | diteggiature, corde e barré: un file per diteggiatura          |
| `brani/<brano>/armonia/`   | l'armonia battuta per battuta: accordi, gradi e funzioni       |
| `brani/<brano>/layers/`    | assemblaggio delle voci, dinamiche, provenienza, ritocchi      |
| `brani/<brano>/editions/`  | ricette: impaginazione + diteggiatura + opzioni + partitura    |
| `brani/<brano>/fonti/`     | foto del manoscritto e altre fonti                             |
| `brani/<brano>/brano.ly`   | l'unico file che un'edizione include per avere tutto il brano  |
| `impaginazioni/`           | formato pagina, grandezza e densità delle note (comuni)        |
| `lib/`                     | funzioni e opzioni comuni a tutti i brani                      |

Brani:

- `messiah-overture`: Händel, Overture del Messiah, trascrizione di M. Vercesi.
- `messiah-comfort-ye`: Händel, Messiah n. 2, recitativo «Comfort ye my people», riduzione per chitarra sola (battute 1–13, in bozza).
- `mendelssohn-elijah`: Mendelssohn, Elijah: il recitativo iniziale con un basso e l'Overture intera (77 battute), schizzo per chitarra sola.
- `smetana-moldava`: Smetana, Vltava: esperimento per chitarra sola (74 battute): i due flauti intrecciati dell'introduzione e il tema alla maniera di Villa-Lobos.
- `vivaldi-rv93`: Vivaldi, Concerto in re maggiore RV 93, riduzione per chitarra sola di tutta la partitura (primo movimento e Largo, in bozza).

| Impaginazione | Aspetto                                                              |
|---------------|----------------------------------------------------------------------|
| `classica`    | A4 da leggio, circa quattro battute per rigo, margini ampi           |
| `ariosa`      | A4, note grandi e larghe, per lo studio e la prima vista             |
| `compatta`    | A4, spaziatura stretta: tutto in una pagina                          |
| `telefono`    | pagina stretta e alta per lo schermo del cellulare                   |
| `shorts`      | A6 per video verticali, due sistemi per pagina                       |

| Edizione                        | Cosa stampa                                              |
|---------------------------------|----------------------------------------------------------|
| `overture-classica`             | Grave + Allegro, sola notazione con diteggiature         |
| `overture-classica-tab`         | come sopra, con il rigo di intavolatura                  |
| `overture-classica-colori`      | come sopra, una voce per colore                          |
| `overture-classica-senza-dita`  | senza diteggiature, corde e barré                        |
| `overture-classica-doppio-rigo` | doppio rigo (violino + basso) ad altezze reali           |
| `overture-classica-armonia`     | sigle jazz sopra, gradi e funzioni sotto il rigo         |
| `overture-classica-accordi`     | sigle jazz e note strutturali dell'accordo colorate      |
| `overture-classica-provenienza` | in colore le note prese dalle edizioni di riferimento    |
| `overture-classica-armonia-la-minore` | la stessa, trasportata in la minore                |
| `overture-ariosa`               | note grandi e larghe                                     |
| `overture-compatta`             | tutto in una pagina                                      |
| `overture-telefono`             | per il cellulare, voci colorate                          |
| `allegro-voci-separate`         | le quattro parti d'arco dell'Allegro su righi separati   |
| `allegro-bozza`                 | l'Allegro da solo, con il numero su ogni battuta         |
| `allegro-finale-bozza`          | ultime 11 battute dell'Allegro, dal manoscritto (bozza)  |
| `allegro-shorts`                | video verticali, voci colorate, intavolatura             |

Le opzioni di un'edizione (`intavolatura`, `coloriVoci`, `sigle`, ...) sono
elencate in `lib/opzioni.ly`. Per aggiungere un brano: vedi
[brani/README.md](brani/README.md).

## Crediti e fonti

La trascrizione per chitarra è di **M. Vercesi**; questo repository la
incide con LilyPond a partire dal suo manoscritto. Dove il manoscritto non
è ancora stato letto, le battute sono bozze segnate come tali nei file di
`music/`.

Per le note di Händel (dominio pubblico) si confrontano:

- l'edizione di riferimento: la riduzione per pianoforte di T. Tertius Noble
  e Max Spicker, G. Schirmer 1912 (dominio pubblico, IMSLP #11870);
- la partitura orchestrale in LilyPond delle Éditions Nicolas Sceaux
  (<https://github.com/nsceaux/nenuvar>, CC BY-SA 4.0), usata solo per
  confronto: nessun suo file è copiato in questo repository.

## La prima versione (2023)

Le immagini della prima incisione dell'Overture del Messiah, prima di questo lavoro:

![handels-messiah-overture-classical-guitar-1](https://user-images.githubusercontent.com/1033682/234232971-55f6bd90-d719-4058-944b-e0f909e71b0a.svg)
![handels-messiah-overture-classical-guitar-2](https://user-images.githubusercontent.com/1033682/234232975-840bd671-ea86-4726-a90b-08a999295f38.svg)
![handels-messiah-overture-classical-guitar-3](https://user-images.githubusercontent.com/1033682/234232978-c58dcacf-fe17-4ff9-aa67-bd7e1f981bb3.svg)
![handels-messiah-overture-classical-guitar-4](https://user-images.githubusercontent.com/1033682/234232981-4bc105c3-a713-4ffe-9c95-431ce8b13b97.svg)
![handels-messiah-overture-classical-guitar-5](https://user-images.githubusercontent.com/1033682/234232984-5604352d-f330-46ac-968b-3563e0bfd7b7.svg)
![handels-messiah-overture-classical-guitar-6](https://user-images.githubusercontent.com/1033682/234232988-8781caeb-fcb0-40c6-811c-129388cb474d.svg)
![handels-messiah-overture-classical-guitar-7](https://user-images.githubusercontent.com/1033682/234232990-b480c772-b0ad-4036-8690-35eb4040d884.svg)

![TheMessiah-1](https://user-images.githubusercontent.com/1033682/231300989-e09c048a-1281-4226-b93b-a779d9733a79.svg)
![TheMessiah-2](https://user-images.githubusercontent.com/1033682/231300991-9fb03c67-d6a5-42e7-adbe-8379de6ccc38.svg)
![TheMessiah-3](https://user-images.githubusercontent.com/1033682/231300997-70f13292-0ef7-42d8-9539-0756c4f303b5.svg)
![TheMessiah-4](https://user-images.githubusercontent.com/1033682/231301000-028f501a-40c7-4a4b-beab-0958c6a0852f.svg)

[TheMessiah.pdf](https://github.com/montoyaedu/TheMessiah/files/11205354/TheMessiah.pdf)
