#!/bin/bash



function convert {
  # create header.tex
  cat > ./header.tex <<EOF
% Tabellen linksbündig
\usepackage{floatrow}
\floatsetup[figure]{objectset=raggedright}
\floatsetup[table]{objectset=raggedright}
% Tabellenzeilen etwas großzügiger dimensionieren
\renewcommand*{\arraystretch}{1.25}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{calc}              % einfache Arithmetik in latex
\usepackage{longtable}         % Pandoc-Tabellen
\usepackage[normalem]{ulem}    % für \sout (strike out)
\usepackage[draft]{addlines}   % Seiten manuell größer machen mit \addline[1]
\usepackage{textcomp}          % diverse Symbole, setzt Pandoc voraus

\usepackage[document]{ragged2e}  % kein Blocksatz
\parindent0pt           % verzichte auf Einrücken der ersten Zeile
\parskip1.2ex           % vernünftiger Leerraum zw. Absätzen; früher 2
\raggedbottom           %kein vertikaler Randausgleich nach unten
\widowpenalty=10000     %Schusterjungen und Hurenkinder möglichst
\clubpenalty=10000      %ausschließen
\displaywidowpenalty = 10000
\sloppy                 %Anzahl der Warnungen reduzieren (es bleiben genug!)
\doublehyphendemerits=1000000  % zuviele Trennungen hintereinander vermeiden

% alternierende Hintergrundfarben
\usepackage[table]{xcolor}
\definecolor{lightgray1}{gray}{0.88}
\definecolor{lightgray2}{gray}{0.94}
\let\oldlongtable\longtable
\let\endoldlongtable\endlongtable
\renewenvironment{longtable}%
  {\rowcolors{2}{lightgray2}{lightgray1}\oldlongtable}%
  {\endoldlongtable}

% Farbe und Breite der Tabellenlinien
\usepackage{colortbl}
\arrayrulecolor{black}%
\setlength\arrayrulewidth{1pt}% wirkt für /hline, nicht für /toprule etc.

% Tabellenzeilen etwas großzügiger dimensionieren
\renewcommand*{\arraystretch}{1.25}

EOF
  echo "MD --> Latex"
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
    -H ./header.tex \
    -o tmp.tex \
    --to latex

  echo "sed"
  # https://kofler.info/free-ebooks/pandoc2.pdf S. 145
  sed -e 's,\@{},,g' \
   -e 's,\\toprule,\\hline,' \
   -e 's,\\bottomrule,\\hline,' \
   -e 's,\\midrule,\\hline,' \
   -e '/\\endfirsthead/,/\\endhead/d' \
   < tmp.tex > tst.tex

  echo "Latex --> PDF"
  pdflatex -jobname "$1" tst.tex 


  rm header.tex
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
