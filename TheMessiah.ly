\version "2.18.2"
\header {
	title = \markup { \sans "The Messiah - Overture" }
	subtitle = \markup { \sans "for solo guitar"}
	composer = \markup { \sans "G. F. Händel" }
	arranger = \markup { \sans "transcription. @martinovercesi" }
	tagline = \markup { \sans { \char ##x00A9 2022 Martino Vercesi } }
}
{
	\key e \minor
	\set fingeringOrientations = #'(left)

	% ##### BEGIN MEASURE 1 #####
        \new Voice << { \stemDown
            <e-0>2
        }>>
		<e-0 b-1 g'-0 e''-0>4.
	    <a-0 e'-3 c''-2>8
	    <b-1 g'-0 b'-0>4.
		% BEGIN BARRÈ II
		\textSpannerUp
		\override TextSpanner.bound-details.left.text = #"II"
	    <b-1 fis'-3 a'-1>8
		\startTextSpan
		|
	% ##### END MEASURE 1 #####

	% ##### BEGIN MEASURE 2 #####
	    <b-1 fis'-3 dis''-4>4.
		% END BARRÈ
		\stopTextSpan
	    << % BEGIN VOICED BLOCK
			\new Voice << { \stemDown
				\set fingeringOrientations = #'(left)
				<g-3 e'-1>8
			}>>
		    \new Voice << { \stemUp
				\set fingeringOrientations = #'(left)
		    	<cis''-2>16 <b'-0>16
		    }>>
	    >> % END VOICED BLOCK
	    <fis-2 b'-0 g''-4>4.
	    <e-0 b'-0 g''-4>8
		|
	% ##### END MEASURE 2 #####

	% ##### BEGIN MEASURE 3 #####
	    <ais-1 e'-2 cis''-3 g''-4>4.
	    <ais-1 e'-2 cis''-3 fis''-4>8
	    <ais-1 cis''-3 fis''-4>4.
	    <fis-1 ais'-4 cis''-3 e''-0>8
		|
	% ##### END MEASURE 3 #####

	% change line
	\break

	% ##### BEGIN MEASURE 4 #####
		% BEGIN BARRÈ II
		\textSpannerUp
		\override TextSpanner.bound-details.left.text = #"II"
	    <b-1 fis'-2 b'-3 dis''-4>4.
		\startTextSpan
	    <b-1 b'-2 dis''-3 fis''-1>8
		% END BARRÈ
		\stopTextSpan
	    <b-1 g'-0 d''-3 g''-4>4.
	    <g-1 g'-0 b'-0 b''-4>8
		|
	% ##### END MEASURE 4 #####

	% ##### BEGIN MEASURE 5 ##### (TODO)
	    <c'-3 g'-0 c''-1 e''-0>4.
	    <a''-4>8
	    <cis'-3 a'-1 cis''-1 g''-2>4.
	    <fis''-1>8
		|
	% ##### END MEASURE 5 #####

	% ##### BEGIN MEASURE 6 ##### (TODO)
	    r1
		|
	% ##### END MEASURE 6 #####

	% change line
	\break
}
