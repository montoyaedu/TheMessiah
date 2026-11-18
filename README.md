# Händel's Messiah Overture Transcription For Classical Guitar

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

## Build

    make                               # tutte le edizioni in PDF, dentro build/
    make png                           # anteprime PNG
    make build/overture-classica.pdf   # una sola edizione
    make stampa IMPAGINAZIONE=ariosa DITA=nessuna TAB=si COLORI=si   # combinazione a scelta

La musica è divisa in strati indipendenti:

| Cartella         | Contenuto                                                           |
|------------------|---------------------------------------------------------------------|
| `music/`         | solo note e durate, una variabile per voce, una battuta per riga    |
| `dita/`          | diteggiature, corde e barré: un file per diteggiatura               |
| `armonia/`       | l'armonia battuta per battuta: gradi (numeri romani) e funzioni     |
| `impaginazioni/` | formato pagina, grandezza e densità delle note                      |
| `fonti/`         | foto del manoscritto                                                |
| `layers/`        | assemblaggio delle voci, dinamiche, interruzioni, ritocchi          |
| `lib/`           | funzioni, opzioni e partiture comuni                                |
| `editions/`      | ricette: impaginazione + diteggiatura + opzioni + partitura         |

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
| `overture-classica-armonia`     | con gradi e funzioni armoniche sotto il rigo             |
| `overture-classica-armonia-la-minore` | la stessa, trasportata in la minore                |
| `overture-ariosa`               | note grandi e larghe                                     |
| `overture-compatta`             | tutto in una pagina                                      |
| `overture-telefono`             | per il cellulare, voci colorate                          |
| `allegro-voci-separate`         | le quattro parti d'arco dell'Allegro su righi separati   |
| `allegro-bozza`                 | l'Allegro da solo, con il numero su ogni battuta         |
| `allegro-finale-bozza`          | ultime 11 battute dell'Allegro, dal manoscritto (bozza)  |
| `allegro-shorts`                | video verticali, voci colorate, intavolatura             |

Le opzioni di un'edizione (`intavolatura`, `coloriVoci`, ...) sono elencate
in `lib/opzioni.ly`. `TheMessiah.ly` è la vecchia versione a file unico,
tenuta per riferimento.

Idee, stato della trascrizione e cose da decidere: vedi [IDEE.md](IDEE.md).

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

## Current Status

```bash
GNU LilyPond 2.24.1 (in esecuzione Guile 3.0)
Elaborazione di «TheMessiah.ly»
Analisi...
Interpretazione della musica...
Pre-elaborazione degli oggetti grafici...
Determinazione del numero ottimale di pagine...
Compressione della musica in una pagina...
Disegno dei sistemi...
Converting to `TheMessiah.pdf'...
Success: compilation successfully completed
```
