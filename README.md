% Autor
% Titel
% Datum

<!-- verstecke Seitenzahlen bis pagebreak -->
\pagenumbering{gobble}
\pagebreak
<!-- Inhaltsverzeichnis -->
\tableofcontents
\pagebreak
\pagenumbering{arabic}

# Dieses Repository enthalt ein Template für Facharbeiten/Projekte umgesetzt mit pandoc

## Installation

```bash
sudo apt install texlive-full pandoc pandoc-citeproc -y
```

## Für mermaid
1. Install [brew](https://brew.sh)
2. `brew install --build-from-source mermaid-cli`

## Befehl zum Rendern des PDFs

<!-- wird nicht automatisch umgebrochen -->
```bash
convert.sh <Datei_zum Rendern.md>
```


&nbsp; Umbruch

## Fußnoten
https://de.wikipedia.org/wiki/BibTeX + wie anzuwenden

# Beispiele Markdown{.unlisted .unnumbered}

**Überschrift wird nicht im ToC mit aufgezählt**

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
nostrud exer\-citation ullamco laboris nisi ut aliquip ex ea commodo consequat.

`\-` ist der Silbentrenner.

![Lokal eingebundenes Bild mit fester Breite](img/a.jpg){ width=50% }

## E-Book

* [kofler.info](https://kofler.info/free-ebooks/pandoc2.pdf)

## Aufzählung
1. Eins
2. Zwei
    1. Test
    2. Test 2
4. Drei
5. Vier
7. Fünf
11. Code `rm -rf /`


## Auflistung
- Erster Anstrich
- Zweiter Anstrich
  - Eingerückt
    - noch weiter eingerückt
- Irgendetwas...

## Tabelle

| Lorem       | _ipsum_    |
| --          | --         |
| dolor       | sit        |
| amet        | ```code``` |
| consectetur | adipiscing |


## Größere Tabelle

| Lorem       | _ipsum_    | 3. Spalte                                                |
| --          | --         | --                                                       |
| dolor       | sit        | lalala                                                   |
| dolor       | sit        | lalala                                                   |
| dolor       | sit        | lalala                                                   |
| amet        | ```code``` | lalila                                                   |
| consectetur | adipiscing | keine Idee mehr, aber ganz ganz ganz ganz ganz viel text |
| dolor       | sit        | lalala                                                   |
| amet        | ```code``` | lalila                                                   |
| consectetur | adipiscing | keine Idee mehr                                          |
| amet        | ```code``` | lalila                                                   |
| consectetur | adipiscing | keine Idee mehr                                          |
| amet        | ```code``` | lalila                                                   |
| consectetur | adipiscing | keine Idee mehr                                          |


## Kursiv/Fett

Dieser __Text__ ist fett.
Dieser _hier_ ist kursiv.


## Code in Aufzählung

1. Abschnitt

    ```javascript
    // This code chunk is indented by two tabs (four spaces)
    var x = 3
    print("Pandoc has made a mess out of Markdown!")
    ```

2. Abschnitt
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.


# Links

- [Titel](https://vijual.de/wp-content/uploads/2019/03/Artikel_schreiben_mit_Markdown_0.1.5.pdf)
- https://vijual.de/wp-content/uploads/2019/03/Artikel_schreiben_mit_Markdown_0.1.5.pdf



<!-- mehrere Leerzeilen werden zu einer -->




## Text gemischt

Lorem ipsum dolor sit amet, consetetur __sadipscing__ elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero **eos et accusam** et justo <!-- Hier steht ein Kommentar -->duo *dolores* et ea rebum. Stet clita kasd ``gubergren``, no sea takimata sanctus est Lorem ipsum dolor sit amet.

## Zitat mit Fußnoten

voluptua. At vero **eos et accusam** et justo <!-- Hier steht ein Kommentar -->duo *dolores* et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.[^1] At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.[^3]

[^1]: Fußnote Inline

Jetzt kommt ein Seitenumbruch:

\pagebreak


[^3]: Fußnote mit [Link](https://git.mgrote.net/mg/mirror-munin-contrib/raw/branch/master/images/t-shirts/logo-horizontal-tshirt-black-modified.svg)


# Überschrift 1 - Text Hoch/tiefgestellt und Formeln

a=b*c

a^2^=b

H~2~O

I^2^S

E=m*c^2^

$c = \sqrt{a^2 + b^2}$

Lorem ipsum dolor sit amet, consetetur __sadipscing__ elitr

## Überschrift 2

Lorem ipsum dolor sit amet, consetetur __sadipscing__ elitr

### Überschrift 3

Lorem ipsum dolor sit amet, consetetur __sadipscing__ elitr

#### Überschrift 4

Lorem ipsum dolor sit amet, consetetur __sadipscing__ elitr

##### Überschrift 5 - fett und kursiv

Lorem ***ipsum*** dolor sit amet, consetetur __sadipscing__ elitr

## Glossar

MTA
:    Text kommt hier,
     Lorem ipsum dolor sit amet, consetetur __sadipscing__ elitr

testelement
:    Noch mehr *Text*, hallowelt
     Noch mehr Text, hallowelt
     Noch mehr Text, hallowelt
     Noch mehr Text, hallowelt
     Noch mehr Text, hallowelt

<!-- Abbildungsverzeichnis -->

\pagenumbering{gobble}

\pagebreak
\listoffigures
