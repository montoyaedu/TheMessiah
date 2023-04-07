\version "2.22.2"

symbols = {
  \key e \minor
  % BAR 1
  % chord 1 and 2
  <<
     \stemUp
     { <  e'        >     4.              <  c'        >     8 } \\ % voice 1 mi  do
     \stemUp
     { <  g         >     4.  \hide Stem  <  e         >     8 } \\ % voice 2 sol mi
     \stemDown
     \set fingeringOrientations = #'(left)
     { <  b,  -3    >     4.              <  a,        >     8 } \\ % voice 3 si  la
     { <  e,        >     2                                    } \\ % voice 4 mi
  >>
  % chord 3
  <<
     <<
       <  b         >     4.    % si
       <  g         >     4.    % sol
       <  b,        >     4.    % si
     >>
  >>
  % chord 4
  <<
     <<
       <  a         >     8     % la
       <  fis       >     8     % fa#
       <  b,        >     8     % si
     >>
  >>
  % BAR 2
  % chord 1
  <<
     <<
       <  d'        >     4.    % re
       <  fis       >     4.    % fa#
       <  b,        >     4.    % si
     >>
  >>
  % chord 2
  <<
     \stemUp
     { <  cis'      >     16              <  b         >     16 } \\ % voice 1 do#  si
     <<
       <  e         >     8                                          %         mi
       <  g,        >     8                                          %         sol
     >>
  >>
  % chord 3
  <<
     <<
       <  g'        >     4.    % sol
       <  b         >     4.    % si
       <  fis,      >     4.    % fa
     >>
  >>
  % chord 4
  <<
     <<
       <  g'        >     8     % sol
       <  b         >     8     % si
       <  e,        >     8     % mi
     >>
  >>
  \break
}

\book {
  \header {
    title = ""
    tagline = ""
  }
  \score {
    <<
      \new Staff {
      	\clef "treble_8"
        \symbols
      }
      \new TabStaff { \symbols }
    >>
  }
}

