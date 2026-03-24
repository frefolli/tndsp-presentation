SLIDES=slides
SHORT=short

@all: ${SHORT}.pdf ${SLIDES}.pdf

${SHORT}.pdf: ${SHORT}.tex ./figures/*.png quotes.bib
	pdflatex ${SHORT}.tex
	pdflatex ${SHORT}.tex

${SLIDES}.pdf: ${SLIDES}.tex ./figures/*.png quotes.bib
	pdflatex ${SLIDES}.tex
	pdflatex ${SLIDES}.tex

clean:
	rm -rf *.idx ${SLIDES}.pdf ${SHORT}.pdf *-blx.bib *.aux *.log *.run.xml *.toc *.ilg *.ind *.bbl  *.blg *.out *.nav *.snm *.vrb
