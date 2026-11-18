\version "2.24.0"

% Partiture pronte, comuni a tutte le edizioni.
% Il rigo di intavolatura compare solo se l'edizione imposta
% intavolatura = ##t  (vedi lib/opzioni.ly). Diteggiature, corde e barre'
% compaiono solo se l'edizione include un file di dita/ prima di brano.ly.

% ---------- solo Allegro ----------
allegroRigo = \new Staff \with {
  \clef "treble_8"
  \consists Merge_rests_engraver
} {
  \tempo \markup "Allegro moderato"
  << \allegroNotazione \allegroRitocchi \allegroBreaks \allegroProvenienza >>
  \bar "|."
}

allegroScore = \score {
  <<
    \allegroRigo
    \seIntavolatura \new TabStaff \allegroIntavolatura
  >>
}

% Le quattro parti d'arco originali, un rigo ciascuna.
allegroScoreVociSeparate = \score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Violino I"  \clef "treble_8" }
      { \tempo \markup "Allegro moderato" \violinoA \bar "|." }
    \new Staff \with { instrumentName = "Violino II" \clef "treble_8" } \violinoB
    \new Staff \with { instrumentName = "Viola"      \clef "treble_8" } \viola
    \new Staff \with { instrumentName = "Bassi"      \clef "treble_8" } \bassi
  >>
  \layout { indent = 22\mm }
}

% Finale dell'Allegro (battute 88-98), da solo, per il confronto col manoscritto.
finaleScore = \score {
  <<
    \new Staff \with {
      \clef "treble_8"
      \consists Merge_rests_engraver
    } {
      \set Score.currentBarNumber = #88
      \override Score.BarNumber.break-visibility = ##(#f #t #t)
      << \finaleNotazione \finaleProvenienza >>
      \bar "|."
    }
    \seIntavolatura \new TabStaff \finaleIntavolatura
  >>
}

% ---------- Overture completa: Grave + Allegro ----------

% Battute dell'Allegro non ancora trascritte, tra l'ultima di
% music/allegro.ly (38) e la prima di music/allegro-finale.ly (75).
% Quando la trascrizione avanza, ridurre il numero qui sotto.
overtureVuoto = {
  \compressEmptyMeasures
  \once \override MultiMeasureRest.minimum-length = #45
  R1*36 ^\markup \italic "battute 39–74 dell'Allegro: da trascrivere"
  \expandEmptyMeasures
}
overtureVuotoMuto = { s1*36 }

overtureRigo = \new Staff \with {
  \clef "treble_8"
  \consists Merge_rests_engraver
} <<
  {
    \tempo \markup "Grave"
    << \graveNotazione \graveProvenienza >>
    \bar "||" \aCapo
    \tempo \markup "Allegro moderato"
    << \allegroNotazione \allegroRitocchi \allegroProvenienza >>
    \overtureVuoto
    << \finaleNotazione \finaleProvenienza >>
    \bar "|."
  }
  \overtureBreaks
>>

overtureDinamiche = \new Dynamics { \graveDinamiche \allegroDinamiche \overtureVuotoMuto s1*11 }

% Righe dell'armonia sotto il rigo (opzioni gradi / funzioni).
rigaArmonia = \with {
  \override LyricText.self-alignment-X = #LEFT
  \override LyricText.font-size = #0
  \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.2
}
overtureArmonia = <<
  \seOpzione #'gradi \new Lyrics \with { \rigaArmonia }
    { \graveGradi \allegroGradi }
  \seOpzione #'funzioni \new Lyrics \with { \rigaArmonia \override LyricText.font-series = #'bold }
    { \graveFunzioni \allegroFunzioni }
>>

% Sigle degli accordi sopra il rigo (opzione sigle).
overtureSigle = \seOpzione #'sigle \new ChordNames \with {
  chordChanges = ##t
  \override ChordName.font-size = #-0.5
} { \lingueSigle \conTrasporto \graveAccordi }

overtureScore = \score {
  <<
    \overtureSigle
    \overtureRigo
    \overtureArmonia
    \overtureDinamiche
    \seIntavolatura \new TabStaff { \graveIntavolatura \allegroIntavolatura \overtureVuoto \finaleIntavolatura }
  >>
}

% Doppio rigo "da pianoforte": chiave di violino e chiave di basso,
% ad altezze reali (un'ottava sotto la scrittura abituale per chitarra).
overtureScoreDoppioRigo = \score {
  \new PianoStaff <<
    \new Staff \with { \consists Merge_rests_engraver } <<
      {
        \clef treble
        \tempo \markup "Grave"
        \graveRigoSu
        \bar "||" \aCapo
        \tempo \markup "Allegro moderato"
        \allegroRigoSu
        \overtureVuoto
        \finaleRigoSu
        \bar "|."
      }
      \overtureBreaks
    >>
    \overtureDinamiche
    \new Staff \with { \consists Merge_rests_engraver } {
      \clef bass
      \graveRigoGiu
      \allegroRigoGiu
      \overtureVuoto
      \finaleRigoGiu
    }
  >>
}
