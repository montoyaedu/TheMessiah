# Brani

Una cartella per brano. Per aggiungerne uno, copiare la struttura di
`messiah-overture/`:

| File o cartella  | Cosa metterci |
|------------------|---------------|
| `music/`         | le note, una variabile per voce (`\\language "italiano"`, una battuta per riga, controllo `|`) |
| `dita/`          | per ogni voce `NOME` una variabile `NOMEDita` con lo stesso ritmo scritto a spazi |
| `armonia/`       | accordi (`\\chordmode`), gradi e funzioni |
| `layers/`        | come le voci si combinano sul rigo (`\\voce "NOME"`), dinamiche, provenienza |
| `partiture.ly`   | le partiture pronte (`\\score`) che le edizioni stampano |
| `intestazione.ly`| titolo, autore, trascrittore |
| `brano.ly`       | include `../../lib/*.ly` e poi tutti i file sopra, in quest'ordine |
| `editions/`      | una ricetta per ogni stampa: impaginazione, diteggiatura, opzioni, partitura |
| `fonti/`         | manoscritti e fonti, con un README che dice cosa sono |

`make BRANO=<nome>` compila tutte le edizioni del brano in `build/<nome>/`.
