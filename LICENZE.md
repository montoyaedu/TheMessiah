# Licenze: che cosa copre che cosa

**Bozza da confermare.** Questo file descrive lo stato di fatto e una
proposta; le righe segnate «da decidere» non danno ancora nessun permesso.

| Materiale | Dove | Licenza |
|---|---|---|
| Script, Makefile, funzioni LilyPond comuni | `strumenti/`, `Makefile`, `lib/`, `impaginazioni/` | **MIT**, come dal file [LICENSE](LICENSE) già presente nel repository |
| Edizioni a stampa e autografi usati come fonte | `brani/*/fonti/*.pdf` | **Pubblico dominio**; la provenienza (IMSLP) è indicata nel nome del file o nel README del brano |
| Trascrizione per chitarra dell'Overture del Messiah e foto del manoscritto | `brani/messiah-overture/` (le parti dal manoscritto), `brani/messiah-overture/fonti/manoscritto/` | **Del maestro M. Vercesi. Tutti i diritti riservati**, finché non decide lui se e come concederla. *Da chiedere.* |
| Riduzioni scritte in questo repository con l'aiuto dell'AI (Elijah, «Comfort ye», RV 93, Moldava, bozze del Messiah) | `brani/*/music`, `dita`, `armonia`, `layers`, `editions`, `pdf/` | **Da decidere.** Proposta: [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.it), la stessa di Mutopia e di molte edizioni in LilyPond: chiunque può usarle e modificarle citando la fonte e condividendo allo stesso modo |
| Testi (README, idee, diario, cronologia della chat) | `*.md`, `docs/` | **Da decidere.** Proposta: CC BY-SA 4.0 |

## Perché non è ancora deciso

- La trascrizione del Messiah non è nostra da licenziare: serve il consenso
  del maestro M. Vercesi, anche per la foto del manoscritto.
- Il file `LICENSE` (MIT) è nato nel 2017 per il codice. Per le partiture una
  licenza da software è poco adatta: per questo la proposta Creative Commons.
- Chi contribuisce deve sapere prima sotto quale licenza va il suo lavoro:
  quando la scelta è fatta, va scritta anche in `CONTRIBUTING.md`.
