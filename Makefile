all: it en

SOURCES: awesome_cv.tex

it: ${SOURCES}
	latexmk -jobname=cv_it -pdf -pdflatex='xelatex %O -interaction=nonstopmode -synctex=1 "\newif\ifen\newif\ifit\ittrue\input{%S}"' awesome_cv

en: ${SOURCES}
	latexmk -jobname=cv_en -pdf -pdflatex='xelatex %O -interaction=nonstopmode -synctex=1 "\newif\ifen\newif\ifit\entrue\input{%S}"' awesome_cv

clean:
	rm -f *{aux,bbl,bcf,blg,fdb_latexmk,fls,log,xml,gz,out,pdf}