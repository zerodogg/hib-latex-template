# A complete LaTeX project for students at Høgskolen i Bergen (Bergen University College)

This repository contains a complete ready-to-use LaTeX project for students
attending [Høgskolen i Bergen (HiB)](http://hib.no).

Citation and bibliography fits the Harvard style as presented on [Søk og
skriv](http://sokogskriv.no/kildebruk-og-referanser/referansestiler/harvard/).
It overrides the default LaTeX fonts and margins, and has a custom header,
which makes it fit the HiB style guidelines closely. Additionally it has a
titlepage fitting the HiB guidelines, and contains a Makefile that is ready to
compile the project.

## Dependencies

This project requires:

- XeTeX
- BibLaTeX
- biber

Additionally, to fully use the Makefile and word counting, you will need:

- GNU Make
- texcount

## Usage

Edit titlepage.tex to suit your class. Edit main.tex to set your name, the
title of the paper etc. Finally, edit content.tex, which is where you put the
actual content of your paper.

Run `make` to compile the project. This will count the words, download the HiB
logo if needed and compile the document.

## Other templates

Some simpler templates can be found in my more general LaTeX template
repository
[zerodogg/latex-templates](https://github.com/zerodogg/latex-templates).

## License

[![CC 0](http://i.creativecommons.org/p/zero/1.0/88x31.png)](http://creativecommons.org/publicdomain/zero/1.0/)

To the extent possible under law, Eskild Hustvedt has waived all copyright and
related or neighboring rights to this work. This work is published from:
Norway.
