build:checkGetHibLogo compile clean
compile: count
	xelatex paper.tex
	biber paper
	xelatex paper.tex
	xelatex paper.tex
clean:
	rm -f paper.aux paper.bbl paper.blg paper.log paper.out paper.toc paper-blx.bib paper.bcf paper.run.xml titlepage.aux content.aux
count:
	texcount -merge -total paper.tex|grep 'in text' |perl -pe 's/\D//g' > .x-count
watch:
	while :; do inotifywait -q -q paper.tex; make --no-print-directory build;done
checkGetHibLogo:
	@-[ -e hiblogo.png ] || make --no-print-directory getHibLogo
getHibLogo:
	wget http://www.hib.no/siteassets/dokumenter-skjema/forside-bacheloroppgava-nynorsk.docx -O logosource.zip
	unzip logosource.zip word/media/image1.png
	mv word/media/image1.png hiblogo.png
	rm -rf word logosource.zip
