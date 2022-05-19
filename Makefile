all: it en

SOURCES: cv.tex

it: ${SOURCES}
	latexmk -jobname=cv_it -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\newif\ifen\newif\ifit\ittrue\input{%S}"' cv

en: ${SOURCES}
	latexmk -jobname=cv_en -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\newif\ifen\newif\ifit\entrue\input{%S}"' cv

clean:
	rm -f *{aux,bbl,bcf,blg,fdb_latexmk,fls,log,xml,gz,out}