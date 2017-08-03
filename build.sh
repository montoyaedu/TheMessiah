#!/bin/bash
lilypond TheMessiah.ly
lilypond -dbackend=svg TheMessiah.ly
cp TheMessiah.svg docs
