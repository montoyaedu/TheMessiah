#!/usr/bin/env python3
"""Scheda di revisione: la fonte stampata e la nostra trascrizione, sistema per sistema.

Uso (dalla radice del repository):
  python3 strumenti/scheda_revisione.py \
      --pdf brani/mendelssohn-elijah/fonti/spartito-novello-IMSLP568788.pdf --pagina 13 --sistemi 7 \
      --ly brani/mendelssohn-elijah/music/overture.ly --voci elijahTerza elijahBasso \
      --da 57 --a 77 --per-sistema 3 --tonalita "re \\minor" --tempo 4/4 \
      --titolo "Elijah, Overture, battute 57-77" --fonte "Novello, pagina 13 del PDF" \
      --out docs/revisione/elijah-overture-57-77.pdf

Per ogni sistema della pagina stampata mette sopra il ritaglio della fonte e
sotto le stesse battute della trascrizione, con le caselle da spuntare e lo
spazio per le note. Le voci devono avere un commento "%N" prima di ogni battuta.
Richiede ghostscript, LilyPond e Pillow.
"""
import argparse, os, re, subprocess, sys, tempfile
import numpy as np
from PIL import Image, ImageDraw, ImageFont, ImageOps

FONT = "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf"
FONTB = "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf"


def fasce(img, attese, soglia=0.004):
    """Divide un'immagine in 'attese' fasce orizzontali separate dagli spazi bianchi piu' alti."""
    a = np.array(img.convert("L")) < 140
    righe = a.mean(axis=1) > soglia
    blocchi, inizio = [], None
    for y, pieno in enumerate(righe):
        if pieno and inizio is None:
            inizio = y
        if not pieno and inizio is not None:
            blocchi.append([inizio, y]); inizio = None
    if inizio is not None:
        blocchi.append([inizio, len(righe)])
    blocchi = [b for b in blocchi if b[1] - b[0] > 3]
    while len(blocchi) > attese:           # unisci i due blocchi separati dallo spazio piu' piccolo
        gap = [blocchi[i + 1][0] - blocchi[i][1] for i in range(len(blocchi) - 1)]
        i = gap.index(min(gap))
        blocchi[i][1] = blocchi[i + 1][1]; del blocchi[i + 1]
    return blocchi


def ritaglia(img, y0, y1, margine=18):
    y0 = max(0, y0 - margine); y1 = min(img.height, y1 + margine)
    c = img.crop((0, y0, img.width, y1))
    a = np.array(c.convert("L")) < 140
    col = np.where(a.any(axis=0))[0]
    if len(col):
        c = c.crop((max(0, col[0] - 10), 0, min(c.width, col[-1] + 10), c.height))
    return c


def battute(testo, voce):
    i = testo.index(voce + " = {"); j = testo.index("\n}\n", i); blocco = testo[i:j]
    d = {}
    for m in re.finditer(r"\n    %(\d+)[^\n]*\n(?:    %[^\n]*\n)*    ([^%\n][^\n]*?)\|", blocco):
        d[int(m.group(1))] = m.group(2).strip()
    return d


def trascrizione_png(args, tmp):
    testo = open(args.ly, encoding="utf-8").read()
    voci = [battute(testo, v) for v in args.voci]
    def corpo(d):
        out = ["\\key %s \\time %s \\set Score.currentBarNumber = #%d" % (args.tonalita, args.tempo, args.da)]
        for k, n in enumerate(range(args.da, args.a + 1)):
            b = d.get(n, "s1")
            if n == args.a:
                b = re.sub(r"~\s*$", "", b)
            out.append("%s |%s" % (b, " \\break" if (k + 1) % args.per_sistema == 0 else ""))
        return "\n  ".join(out)
    nomi = ["\\voiceOne", "\\voiceTwo", "\\voiceThree", "\\voiceFour"]
    ly = '\\version "2.24.0"\n\\language "italiano"\n#(set-default-paper-size "a4" \'landscape)\n'
    ly += "\\paper { indent = 0 tagline = ##f top-margin = 8 left-margin = 8 right-margin = 8 system-system-spacing.basic-distance = #22 ragged-last = ##f }\n"
    ly += "\\score { \\new Staff \\with { \\clef \"treble_8\" } <<\n"
    for k, d in enumerate(voci):
        ly += "  \\new Voice { %s\n  %s\n  }\n" % (nomi[k], corpo(d))
    ly += ">> \\layout { \\context { \\Score \\override BarNumber.break-visibility = ##(#f #t #t) } } }\n"
    f = os.path.join(tmp, "nostra.ly"); open(f, "w", encoding="utf-8").write(ly)
    r = subprocess.run(["lilypond", "-dno-point-and-click", "--png", "-dresolution=200", "-o", os.path.join(tmp, "nostra"), f],
                       capture_output=True, text=True)
    if r.returncode:
        sys.exit(r.stderr[-2000:])
    pagine = sorted(p for p in os.listdir(tmp) if p.startswith("nostra") and p.endswith(".png"))
    # LilyPond salva le pagine orizzontali ruotate: si raddrizzano
    return [Image.open(os.path.join(tmp, p)).rotate(-90, expand=True) for p in pagine]


def main():
    ap = argparse.ArgumentParser()
    for nome in ("pdf", "ly", "titolo", "fonte", "out", "tonalita", "tempo"):
        ap.add_argument("--" + nome, required=True)
    ap.add_argument("--pagina", type=int, required=True); ap.add_argument("--sistemi", type=int, required=True)
    ap.add_argument("--da", type=int, required=True); ap.add_argument("--a", type=int, required=True)
    ap.add_argument("--per-sistema", type=int, required=True, dest="per_sistema")
    ap.add_argument("--voci", nargs="+", required=True)
    ap.add_argument("--anteprima", help="salva anche la prima pagina come PNG")
    args = ap.parse_args()

    with tempfile.TemporaryDirectory() as tmp:
        src = os.path.join(tmp, "fonte.png")
        subprocess.run(["gs", "-q", "-dSAFER", "-dNOPAUSE", "-dBATCH", "-sDEVICE=pnggray", "-r300",
                        "-dFirstPage=%d" % args.pagina, "-dLastPage=%d" % args.pagina, "-sOutputFile=" + src, args.pdf], check=True)
        fonte = ImageOps.autocontrast(Image.open(src), cutoff=2)
        # togli intestazione e pie' di pagina: si tengono le fasce piu' alte
        f_fonte = fasce(fonte, 99)
        alte = sorted(f_fonte, key=lambda b: b[1] - b[0], reverse=True)
        soglia_h = 0.35 * (alte[0][1] - alte[0][0])
        f_fonte = [b for b in f_fonte if b[1] - b[0] > soglia_h]
        primo, ultimo = f_fonte[0][0], f_fonte[-1][1]
        corpo = fonte.crop((0, max(0, primo - 40), fonte.width, min(fonte.height, ultimo + 40)))
        sis_fonte = [ritaglia(corpo, y0, y1) for y0, y1 in fasce(corpo, args.sistemi)]

        sis_nostri = []
        for pag in trascrizione_png(args, tmp):
            pag = pag.convert("L")
            for y0, y1 in fasce(pag, 99):
                if y1 - y0 > 60:
                    sis_nostri.append(ritaglia(pag, y0, y1))
        n = min(len(sis_fonte), len(sis_nostri))
        if len(sis_fonte) != len(sis_nostri):
            print("attenzione: sistemi fonte %d, nostri %d" % (len(sis_fonte), len(sis_nostri)))

        W, H, M = 1654, 2339, 70            # A4 a 200 dpi
        ft = ImageFont.truetype(FONTB, 34); fb = ImageFont.truetype(FONTB, 24); fn = ImageFont.truetype(FONT, 22)
        pagine = []
        def nuova(prima):
            p = Image.new("RGB", (W, H), "white"); d = ImageDraw.Draw(p); y = M
            if prima:
                d.text((M, y), args.titolo, font=ft, fill="black"); y += 52
                for riga in ("Sopra: la fonte stampata (%s). Sotto: la nostra trascrizione per chitarra." % args.fonte,
                             "La trascrizione puo' essere a un'ottava diversa e omette raddoppi e voci interne: non sono errori.",
                             "Per ogni sistema: confronta le note e i ritmi, prova sulla chitarra, ascolta l'effetto. Spunta e annota."):
                    d.text((M, y), riga, font=fn, fill=(40, 40, 40)); y += 32
                y += 14
            return p, d, y
        pag, d, y = nuova(True)
        for k in range(n):
            a = sis_fonte[k]; b = sis_nostri[k]
            la = W - 2 * M
            a2 = a.resize((la, int(a.height * la / a.width)))
            lb = min(la, int(b.width * 0.72)); b2 = b.resize((lb, int(b.height * lb / b.width)))
            blocco = 40 + a2.height + 12 + b2.height + 110
            if y + blocco > H - M:
                pagine.append(pag); pag, d, y = nuova(False)
            b0 = args.da + k * args.per_sistema; b1 = min(args.a, b0 + args.per_sistema - 1)
            d.text((M, y), "Battute %d-%d" % (b0, b1), font=fb, fill=(0, 70, 140)); y += 38
            pag.paste(a2.convert("RGB"), (M, y)); y += a2.height + 12
            pag.paste(b2.convert("RGB"), (M, y)); y += b2.height + 10
            x = M
            for voce in ("note", "ritmo", "sta sotto le dita", "effetto"):
                d.rectangle([x, y + 4, x + 22, y + 26], outline="black", width=2)
                d.text((x + 30, y), voce, font=fn, fill="black"); x += 60 + int(d.textlength(voce, font=fn)) + 30
            d.text((x + 10, y), "appunti:", font=fn, fill="black")
            d.line([x + 110, y + 28, W - M, y + 28], fill=(120, 120, 120)); y += 44
            d.line([M, y + 22, W - M, y + 22], fill=(120, 120, 120)); y += 50
            d.line([M, y - 8, W - M, y - 8], fill=(200, 200, 200), width=1); y += 10
        pagine.append(pag)
        os.makedirs(os.path.dirname(args.out) or ".", exist_ok=True)
        pagine[0].save(args.out, save_all=True, append_images=pagine[1:], resolution=200)
        if args.anteprima:
            pagine[0].resize((W // 2, H // 2)).save(args.anteprima)
        print("scritto", args.out, "pagine", len(pagine), "sistemi", n)


if __name__ == "__main__":
    main()
