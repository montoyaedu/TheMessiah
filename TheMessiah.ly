\version "2.22.2"
\header {
  title = \markup { \sans "Händel's Messiah Overture Transcription For Classical Guitar" }
}
{
  \key e \minor
<<
  \new Voice = "first" <<
    \set fingeringOrientations = #'(left)
    { \voiceOne     e''4.   <c''-1>8     b'4.     a'8    }
    { \voiceTwo   <b-3>4.    <e'-2>8     g'4.   fis'8    }
    { \voiceThree    g'4.         a8  <b-3>4.      b8    }
  >>
  \new Voice= "fourth"
    { \voiceFour  e2         r2           }
>> |
<<
  \new Voice = "first" <<
    \set fingeringOrientations = #'(left)
    { \voiceOne  dis''4.   <cis''-2>16 <b'-0>16    <g''-4>4.   g''8    }
    { \voiceTwo }
    { \voiceThree }
  >>
  \new Voice= "fourth" <<
    \set fingeringOrientations = #'(left)
    { \voiceTwo  fis'4.    <e'-1>8                  b'4.       b'8    }
    { \voiceFour b4.       <g-3>8                  <fis-2>4.   e8     }
  >>
>> |
\break
<<
  \new Voice = "first" <<
    \set fingeringOrientations = #'(right)
    { \voiceOne     g''4.    fis''8   fis''4.     e''8      }
    { \voiceTwo     cis''4.  cis''8   cis''4.    <cis''-3>8 }
    { \voiceThree }
  >>
  \new Voice= "fourth" <<
    \set fingeringOrientations = #'(right)
    { \voiceThree   e'4.     e'8      fis'4.   << <fis'>8 <ais'-4>8 >> }
    { \voiceFour    ais4.    ais8     ais4.    <fis-1>8                }
  >>
>> |
<<
  \new Voice = "first" <<
    \set fingeringOrientations = #'(left)
    { \voiceOne dis''4. fis''8 <g''-4>4. b''8 }
    { \voiceTwo b'4.   <dis''-3>8   <dis''-3>4.  g'8 }
    { \voiceThree }
  >>
  \new Voice= "fourth" <<
    \set fingeringOrientations = #'(left)
    { \voiceThree fis'4. <b'-2>8 g'4. d'8 }
    { \voiceFour b4. b8 <b-1>4. g8}
  >>
>> |
\break
<<
  \new Voice = "first" <<
    \set fingeringOrientations = #'(left)
    { \voiceOne e''4. <a''-4>8 g''4. fis''8}
    { \voiceOne c''4. }
    { \voiceOne g'4. }
  >>
  \new Voice= "fourth" <<
    \set fingeringOrientations = #'(left)
    { \voiceThree e'2 << a'4 e'4 >> << cis''4 e'4 >> }
    { \voiceFour c'2 <cis'-3>4 a4 }
  >>
>> |
<<
  \new Voice = "first" <<
    \set fingeringOrientations = #'(left)
    { \voiceOne <g''-1>4. a''8 d''4. d''8 }
    { \voiceOne <d''-2>2   b'4. b'8}
 >>
  \new Voice= "fourth" <<
    \set fingeringOrientations = #'(left)
    { \voiceThree <a'-1>4. <fis'-3>8 fis'4. fis'8 }
    { \voiceThree \once \hide d'2 b4. b8 }
    { \voiceFour d'2 }
  >>
>> |
\break
<<
>> |
<<
>> |
\break
}

