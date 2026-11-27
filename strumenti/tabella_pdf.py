#!/usr/bin/env python3
"""Aggiorna nel README la tabella dei PDF pubblicati.

Uso (dalla radice):  python3 strumenti/tabella_pdf.py
Per ogni edizione brani/<brano>/editions/<nome>.ly legge la prima riga di
commento (le caratteristiche) e la data del primo commit, e scrive la tabella
tra i due segnaposto TABELLA-PDF del README, in ordine cronologico.
Di solito si lancia con `make pubblica`, che prima copia i PDF in pdf/.
"""
import glob, os, subprocess

BRANI = {
    "messiah-overture": "Händel, Messiah, Overture",
    "messiah-comfort-ye": "Händel, Messiah, «Comfort ye»",
    "mendelssohn-elijah": "Mendelssohn, Elijah",
    "vivaldi-rv93": "Vivaldi, Concerto RV 93",
    "smetana-moldava": "Smetana, Vltava (La Moldava)",
}
INIZIO, FINE = "<!-- TABELLA-PDF:inizio -->", "<!-- TABELLA-PDF:fine -->"


def descrizione(percorso):
    righe = []
    for r in open(percorso, encoding="utf-8"):
        r = r.strip()
        if r.startswith("%"):
            righe.append(r.lstrip("% ").strip())
        elif righe:
            break
    return " ".join(righe).replace("|", "/") or "—"


def data(percorso):
    r = subprocess.run(["git", "log", "--diff-filter=A", "--format=%as", "--", percorso],
                       capture_output=True, text=True).stdout.split()
    return r[-1] if r else "non ancora nel repository"


def main():
    voci = []
    for ed in glob.glob("brani/*/editions/*.ly"):
        brano = ed.split("/")[1]
        nome = os.path.basename(ed)[:-3]
        pdf = "pdf/%s/%s.pdf" % (brano, nome)
        if not os.path.exists(pdf):
            continue
        voci.append((data(ed), brano, nome, pdf, descrizione(ed)))
    voci.sort(key=lambda v: (v[0], v[1], v[2]))
    out = ["| Data | Brano | PDF | Caratteristiche | Per rigenerarlo |", "|---|---|---|---|---|"]
    for d, brano, nome, pdf, desc in voci:
        out.append("| %s | %s | [%s](%s) | %s | `make build/%s/%s.pdf` |"
                   % (d, BRANI.get(brano, brano), nome, pdf, desc, brano, nome))
    testo = open("README.md", encoding="utf-8").read()
    i = testo.index(INIZIO) + len(INIZIO)
    j = testo.index(FINE)
    open("README.md", "w", encoding="utf-8").write(testo[:i] + "\n" + "\n".join(out) + "\n" + testo[j:])
    print("PDF in tabella:", len(voci))


if __name__ == "__main__":
    main()
