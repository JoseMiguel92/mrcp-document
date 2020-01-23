all: main.pdf

main.pdf: main.tex
	pdflatex main.tex; makeindex main; bibtex main; pdflatex main.tex; pdflatex main.tex

clean:
	rm -f main.dvi main.ps *.snm *.out *.nav *.log *.aux *.toc *.vrb *.pdf *~ *.lof *.blg *.bbl
