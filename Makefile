.PHONY: all

all:		thesis.pdf

thesis.pdf:	thesis.tex force
			latexmk -pdf $<

force:		;

.PHONY: clean

clean:
			latexmk -C
			rm -f *.auxlock *.snm *.nav *.out *.fdb_latexmk *.vrb *.table *.gnuplot *-blx.bib *.mtc* *.maf *.bbl *.run.xml


.PHONY: tikzclean

tikzclean:	clean
			rm -f tikz/*.pdf tikz/*.dpth tikz/*.log tikz/*.idx tikz/*.run.xml tikz/*.dep 

# .PHONY: nup

# nup:		thesis.pdf
# 			pdfnup thesis.pdf			
