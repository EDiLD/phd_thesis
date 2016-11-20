.PHONY: all

all:		thesis.pdf

thesis.pdf:	thesis.tex force
			latexmk -pdf $<

force:		;

.PHONY: clean

clean:
			latexmk -C
			rm -rf **/*.auxlock **/*.snm **/*.nav **/*.out **/*.fdb_latexmk **/*.vrb **/*.table **/*.gnuplot **/*-blx.bib **/*.mtc* **/*.maf **/*.bbl **/*.run.xml **/*.dpth **/*.fls **/*.aux **/*.log **/*.idx **/*.dep **/*.md5


# .PHONY: tikzclean

# tikzclean:	clean
# 			rm -f tikz/*.pdf tikz/*.dpth tikz/*.log tikz/*.idx tikz/*.dep tikz/*.md5 tikz/*.run.xml

# .PHONY: nup

# nup:		thesis.pdf
# 			pdfnup thesis.pdf			
