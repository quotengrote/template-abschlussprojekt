#!/bin/bash

function convert {
  pandoc "$1"  --number-sections \
    --pdf-engine=lualatex  \
    -V papersize=a4  \
    -V geometry:margin=3cm  \
    -V lang=de-DE  \
    -f markdown+smart \
    --toc-depth=3 \
    -V breakurl  \
    -V hyphens=URL  \
    --highlight-style tango \
    -H header.tex \
    -o output.pdf 
}

case "$1" in
  --help)
    echo "Konvertiere *.md zu einem PDF"
    ;;
  "")
    echo "Input-Datei fehlt"
    ;;
  *)
    convert "$1" 
esac
