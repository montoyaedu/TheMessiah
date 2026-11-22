#!/usr/bin/env python3
"""Esporta in Markdown il testo di una sessione Claude Code.

Uso:  python3 strumenti/esporta_chat.py SESSIONE.jsonl docs/cronologia-chat.md

Il file della sessione sta in ~/.claude/projects/<cartella-progetto>/<id>.jsonl.
Si tengono i messaggi dell'utente e le risposte di testo di Claude. Si
lasciano fuori chiamate di strumenti, risultati, immagini e ragionamenti.
Si tolgono gli indirizzi email e i nomi dei modelli. I messaggi automatici
(report dei sotto-agenti, notifiche) sono in blocchi <details> chiusi.
"""
import json, re, sys, datetime

EMAIL = re.compile(r"[\w.+-]+@[\w-]+\.[\w.-]+")
MODELLI = re.compile(r"\b(?:claude[- ])?(?:fable|mythos|opus|sonnet|haiku)(?:[- ]?[\d.]+)*\b", re.I)
REMINDER = re.compile(r"<system-reminder>.*?</system-reminder>", re.S)
AUTOMATICI = ("Another Claude session", "[SYSTEM NOTIFICATION", "<task-notification",
              "<agent-message", "<local-command", "<command-name>", "The user sent a new message",
              "This session's worker process", "<system-reminder>")


def pulisci(t):
    t = REMINDER.sub("", t)
    t = EMAIL.sub("[email]", t)
    t = MODELLI.sub("[modello]", t)
    return t.strip()


def testi(content):
    """Testi e segnalazioni di allegati di un messaggio."""
    if isinstance(content, str):
        return [content], []
    out, allegati = [], []
    for b in content:
        if not isinstance(b, dict):
            continue
        if b.get("type") == "text":
            out.append(b.get("text", ""))
        elif b.get("type") == "image":
            allegati.append("[immagine allegata]")
    return out, allegati


def main(src, dst):
    voci = []   # (timestamp, ruolo, testo)
    viste = set()
    with open(src, encoding="utf-8") as fh:
        for riga in fh:
            try:
                d = json.loads(riga)
            except ValueError:
                continue
            if d.get("isSidechain"):
                continue
            ts = d.get("timestamp", "")
            t = d.get("type")
            if t == "user":
                msg = d.get("message", {})
                parti, allegati = testi(msg.get("content", ""))
                umano = (d.get("origin") or {}).get("kind") == "human"
                for p in parti:
                    grezzo = p.strip()
                    if not grezzo:
                        continue
                    auto = (not umano) or grezzo.startswith(AUTOMATICI)
                    p = pulisci(p)
                    if not p:
                        continue
                    chiave = ("u", p[:200])
                    if chiave in viste and not auto:
                        continue
                    viste.add(chiave)
                    voci.append((ts, "auto" if auto else "utente", p))
                for a in allegati:
                    voci.append((ts, "nota", a))
            elif t == "attachment":
                a = d.get("attachment", {})
                if a.get("type") == "queued_command":
                    p = pulisci(a.get("prompt", ""))
                    chiave = ("u", p[:200])
                    if p and chiave not in viste:
                        viste.add(chiave)
                        voci.append((ts, "utente", p))
                elif a.get("type") == "pdf_reference":
                    nome = a.get("filename", "").split("/")[-1]
                    voci.append((ts, "nota", "[PDF allegato: %s]" % nome))
            elif t == "assistant":
                parti, _ = testi(d.get("message", {}).get("content", []))
                p = pulisci("\n\n".join(x for x in parti if x.strip()))
                if p:
                    voci.append((ts, "claude", p))

    voci.sort(key=lambda v: v[0])
    with open(dst, "w", encoding="utf-8") as out:
        out.write("# Cronologia della conversazione\n\n")
        out.write("Esportata da %s con `strumenti/esporta_chat.py`.\n\n" % src.split("/")[-1])
        out.write("Contiene i messaggi dell'utente e le risposte di testo di Claude, in ordine di tempo.\n")
        out.write("**Non contiene** chiamate di strumenti, risultati dei comandi, immagini, ragionamenti interni.\n")
        out.write("Email e nomi dei modelli sono sostituiti da `[email]` e `[modello]`.\n")
        out.write("I messaggi automatici (report dei sotto-agenti, notifiche) sono in blocchi chiusi.\n\n")
        giorno = None
        for ts, ruolo, testo in voci:
            g = ts[:10]
            if g != giorno:
                giorno = g
                out.write("\n---\n\n## %s\n\n" % g)
            ora = ts[11:16]
            if ruolo == "utente":
                out.write("### Utente (%s)\n\n%s\n\n" % (ora, testo))
            elif ruolo == "claude":
                out.write("### Claude (%s)\n\n%s\n\n" % (ora, testo))
            elif ruolo == "nota":
                out.write("_%s_\n\n" % testo)
            else:
                riga1 = testo.splitlines()[0][:90]
                out.write("<details><summary>messaggio automatico (%s): %s</summary>\n\n%s\n\n</details>\n\n"
                          % (ora, riga1.replace("<", "&lt;"), testo.replace("<", "&lt;")))
    print("voci:", len(voci))


if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    main(sys.argv[1], sys.argv[2])
