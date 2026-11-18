\version "2.24.0"

% Partiture pronte, comuni a tutte le edizioni.
% Il rigo di intavolatura compare solo se l'edizione imposta
% intavolatura = ##t  (vedi lib/opzioni.ly). Diteggiature, corde e barre'
% compaiono solo se l'edizione include un file di dita/ prima di tutto.ly.

% ---------- solo Allegro ----------
allegroRigo = \new Staff \with {
  \clef "treble_8"
  \consists Merge_rests_engraver
} {
  \tempo \markup "Allegro moderato"
  << \allegroNotazione \allegroRitocchi \allegroBreaks >>
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
      \finaleNotazione
      \bar "|."
    }
    \seIntavolatura \new TabStaff \finaleIntavolatura
  >>
}

% ---------- Overture completa: Grave + Allegro ----------
overtureRigo = \new Staff \with {
  \clef "treble_8"
  \consists Merge_rests_engraver
} <<
  {
    \tempo \markup "Grave"
    \graveNotazione
    \bar "||"
    \tempo \markup "Allegro moderato"
    << \allegroNotazione \allegroRitocchi >>
    \bar "|."
  }
  \overtureBreaks
>>

overtureDinamiche = \new Dynamics { \graveDinamiche \allegroDinamiche }

overtureScore = \score {
  <<
    \overtureRigo
    \overtureDinamiche
    \seIntavolatura \new TabStaff { \graveIntavolatura \allegroIntavolatura }
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
        \bar "||"
        \tempo \markup "Allegro moderato"
        \allegroRigoSu
        \bar "|."
      }
      \overtureBreaks
    >>
    \overtureDinamiche
    \new Staff \with { \consists Merge_rests_engraver } {
      \clef bass
      \graveRigoGiu
      \allegroRigoGiu
    }
  >>
}
