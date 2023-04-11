\version "2.22.2"

grave = {
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
  % BAR 3
  <<
  	r1
  >>
  % BAR 4
  <<
  	r1
  >>
  \break
  % BAR 5
  <<
  	r1
  >>
  % BAR 6
  <<
  	r1
  >>
  % BAR 7
  <<
  	r1
  >>
  % BAR 8
  <<
  	r1
  >>
  \break
  % BAR 9
  <<
  	r1
  >>
  % BAR 10
  <<
  	r1
  >>
  % BAR 11
  <<
  	r1
  >>
  % BAR 12
  <<
  	r1
  >>
  \break
  % BAR 13
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
  % BAR 14
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
  % BAR 15
  <<
  	r1
  >>
  % BAR 16
  <<
  	r1
  >>
  \break
  % BAR 17
  <<
  	r1
  >>
  % BAR 18
  <<
  	r1
  >>
  % BAR 19
  <<
  	r1
  >>
  % BAR 20
  <<
  	r1
  >>
  \break
  % BAR 21
  <<
  	r1
  >>
  % BAR 22
  <<
  	r1
  >>
  % BAR 23
  <<
  	r1
  >>
  % BAR 24
  <<
  	r1
  >>
  \break
}

allegro_moderato = {
  \key e \minor
  % BAR 25
  <<
  	r1
  >>
  % BAR 26
  <<
  	r1
  >>
  % BAR 27
  <<
  	r1
  >>
  % BAR 28
  <<
  	r1
  >>
  \break
}

Piano = #(make-dynamic-script #{ \markup \text "pp" #})
Mezzoforte = #(make-dynamic-script #{ \markup \text "mf" #})
Forte = #(make-dynamic-script #{ \markup \text "f" #})

\book {
  \header {
    title = ""
    tagline = ""
  }
  \score {
    <<
      \new Staff {
        \tempo \markup "Grave"
      	\clef "treble_8"
        \grave
        \bar "||"
        \tempo \markup "Allegro Moderato"
        \allegro_moderato
      }
      \new Dynamics {
      	s1\Forte
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
      	s1\Piano
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
      	s1\Mezzoforte
      }
      \new TabStaff {
        \grave
        \allegro_moderato
      }
    >>
  }
}

