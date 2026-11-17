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

    make                            # tutti i PDF in build/
    make png                        # anteprime PNG
    make svg                        # SVG
    make build/overture-a4.pdf      # una sola edizione

| Cartella    | Contenuto                                                            |
|-------------|----------------------------------------------------------------------|
| `music/`    | solo note, una variabile per voce, una battuta per riga              |
| `layers/`   | assemblaggio delle voci, dinamiche, interruzioni, ritocchi per formato |
| `lib/`      | funzioni condivise (`\barre`, `\colore`), opzioni e partiture comuni   |
| `editions/` | un file per impaginazione: formato carta, titoli, layer scelti       |

| Edizione                   | Cosa stampa                                               |
|----------------------------|-----------------------------------------------------------|
| `overture-a4`              | Grave + Allegro, A4, nero, sola notazione con diteggiature |
| `overture-a4-tab`          | come sopra, con il rigo di intavolatura                   |
| `overture-a4-colori`       | sola notazione, una voce per colore                       |
| `overture-a4-senza-dita`   | senza diteggiature, corde e barré                         |
| `overture-a4-doppio-rigo`  | doppio rigo (violino + basso) ad altezze reali            |
| `overture-telefono`        | pagina stretta per lo schermo del cellulare               |
| `allegro-voci-separate`    | le quattro parti d'arco dell'Allegro su righi separati    |
| `allegro-shorts`           | A6 per video verticali, voci colorate, intavolatura       |

Un'edizione imposta le sue opzioni (`intavolatura`, `coloriVoci`, breaks,
ritocchi: elenco in `lib/opzioni.ly`) e poi include `lib/tutto.ly`. Per una nuova impaginazione basta copiare un file in
`editions/`.

`TheMessiah.ly` è la vecchia versione a file unico, tenuta per riferimento:

    lilypond TheMessiah.ly

## Fonti

La trascrizione per chitarra è un lavoro originale; per le note di Händel
(dominio pubblico) si confrontano:

- la riduzione per pianoforte di T. Tertius Noble e Max Spicker, G. Schirmer
  1912 (dominio pubblico, IMSLP #11870);
- la partitura orchestrale in LilyPond delle Éditions Nicolas Sceaux
  (<https://github.com/nsceaux/nenuvar>, CC BY-SA 4.0), usata solo come
  riferimento: nessun suo file è copiato in questo repository.

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
