.PHONY: all thesis synopsis clean

all: thesis synopsis

thesis:
	pdflatex -interaction=nonstopmode -file-line-error thesis
	rubibtex thesis
	pdflatex -interaction=nonstopmode -file-line-error thesis
	pdflatex -interaction=nonstopmode -file-line-error thesis

synopsis:
	-pdflatex -interaction=nonstopmode -file-line-error synopsis
	-pdflatex -interaction=nonstopmode -file-line-error synopsis
	-pdflatex -interaction=nonstopmode -file-line-error synopsis
	@echo "Ignore titlesec errors (disser is not compatible with titlesec)"

clean:
	rm -f *~ *.pdf *.aux* *.bbl *.blg *.lof *.log *.out *.toc
