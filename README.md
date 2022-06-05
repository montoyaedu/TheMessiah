## First 6 measures

![The Messiah Overture](https://montoyaedu.s3.eu-south-1.amazonaws.com/TheMessiah-ver1.2.svg)

## The Messiah Overture

The following is an image of the resulting result of a lilypond document based on a transcription of the Messiah Overture
done by [@martinovercesi](https://www.instagram.com/martinovercesi/).

## Build

    lilypond TheMessiah.ly

## Svg

    lilypond -dbackend=svg TheMessiah.ly

## Current Status

```bash
GNU LilyPond 2.22.1 (running Guile 2.2)
Processing `TheMessiah.ly'
Parsing...
Interpreting music...
TheMessiah.ly:25:17: warning: barcheck failed at: 1/2
		
                |
warning: forced break was overridden by some other event, should you be using bar checks?
warning: forced break was overridden by some other event, should you be using bar checks?
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
Success: compilation successfully completed
```
