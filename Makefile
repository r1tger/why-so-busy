# makefile for pdflatex
LATEX=xelatex

why-so-busy.pdf: why-so-busy.tex
	while ($(LATEX) $< ; \
	grep -q "Rerun to get" why-so-busy.log ) do true ; \
	done

pdf: why-so-busy.pdf
	xreader why-so-busy.pdf

clean:
	rm -f *.pdf *.aux *.log *.out *.toc *.nav *.snm

