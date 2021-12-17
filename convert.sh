#!/bin/bash

function convert {
  pandoc $1  --number-sections \
    --pdf-engine=lualatex  \
    -V papersize=a4paper  \
    -V geometry:margin=3cm  \
    -V lang=de-DE  \
    -V breakurl  \
    -V hyphens=URL  \
    -V colorlinks \
    --highlight-style tango \
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
    convert
esac
