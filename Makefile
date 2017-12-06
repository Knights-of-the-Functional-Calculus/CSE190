main_file := main

sync:
	export TEXINPUTS=.:${TEXINPUTS}:../tla_styles; xelatex --interaction=nonstopmode --shell-escape --synctex=1 $(main_file).tex

bib:
	bibtex ./$(main_file).aux

clean:
	-rm -f *.aux *.blg *.log *.bbl *.lof *.tdo *.lot *.out *.toc *.synctex.gz
	-rm -f -r ./auxdir/*
	-rm -f ./tex/*.aux
#   # some PDF files may be sources, so not `*.pdf`
	-rm -f ./img/*.pdf_tex
