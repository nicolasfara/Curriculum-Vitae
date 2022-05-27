all: it en

SOURCES: farabegoli-nicolas-cv.tex

it: ${SOURCES}
	latexmk -jobname=farabegoli-nicolas-cv_it -pdf -pdflatex='xelatex %O -interaction=nonstopmode -synctex=1 "\newif\ifen\newif\ifit\ittrue\input{%S}"' farabegoli-nicolas-cv

en: ${SOURCES}
	latexmk -jobname=farabegoli-nicolas-cv_en -pdf -pdflatex='xelatex %O -interaction=nonstopmode -synctex=1 "\newif\ifen\newif\ifit\entrue\input{%S}"' farabegoli-nicolas-cv

clean:
	rm -f *{aux,bbl,bcf,blg,fdb_latexmk,fls,log,xml,gz,out,pdf}