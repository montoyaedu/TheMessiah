# Bozza: messaggio per la lista lilypond-user

**Non inviato.** Da rivedere e mandare a mano, quando il repository è pubblico.
In inglese, perché la lista è in inglese. `<URL>` va sostituito con l'indirizzo
del repository.

---

**Subject:** Layered sources for guitar reductions, written with an AI assistant: looking for advice on structure

Hello,

I am a classical guitarist working on solo-guitar reductions of orchestral and
choral music (Handel, Mendelssohn, Vivaldi, Smetana). I write the LilyPond
sources with the help of an AI assistant and keep everything in git:

<URL>

Everything there is a working draft; most of it has not yet been checked on
the instrument.

What may interest this list is the structure, and I would like your opinion on
it before it grows further:

- one folder per piece; notes only in `music/` (one variable per voice, one
  bar per line with a bar check);
- fingerings in a separate file with the same rhythm written in spacers,
  merged into the notes by a music function, so that several fingerings can
  coexist;
- harmony (chord symbols, Roman numerals) in another layer, also used to
  colour chord tones;
- page layouts shared by all pieces, and small "edition" files that pick
  layout + options (tab or not, coloured voices, transposition).

It grew by trial and error. My questions:

1. Is there an established way to do this that I am reinventing badly? I have
   seen openLilyLib's edition-engraver; would you build on it?
2. How do you keep fingerings and editorial marks apart from the notes in real
   editions?
3. Any conventions for recording, bar by bar, what is read from a source and
   what is editorial?

The repository also documents where the AI got things wrong when reading
scans (quite often) and how a second, independent reading caught the errors.

Thank you for LilyPond, and for any pointer.
