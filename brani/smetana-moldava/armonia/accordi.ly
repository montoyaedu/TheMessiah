\version "2.24.0"
\language "italiano"

moldavaArmoniaA = \chordmode { mi2.:m | mi2.:m | do2./mi | sol2. | la2.:m | mi2.:m | si2.:7 | mi2.:m | }

moldavaArmonia = \chordmode {
  % Intro
  mi2.:m | mi2.:m | la2.:m | mi2.:m | si2.:7 | mi2.:m | si2.:7 | mi2.:m |
  % A
  \moldavaArmoniaA
  % B
  do2./mi | sol2. | re2.:7 | sol2. | la2.:m | mi2.:m | si2. | mi2.:m |
  % Coda
  lad2.:dim7 | si2. | lad2.:dim7 | si2. | si2. | si2. | si2. | si2. | si2. |
  % A'
  \moldavaArmoniaA
  mi2.:m |
}
