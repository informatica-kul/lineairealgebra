INTERACTION=nonstopmode
all:
	make lineaire_algebra_oplossingen.pdf #>/dev/null 2>/dev/null
	make clean >/dev/null 2>/dev/null
%.pdf: %.tex
	bash makepdf.sh $(INTERACTION) $<
clean:
	rm -f *.aux *.log *.bak *.bbl *.bcf *.bit *.blg *.dvi *.toc *.out *.fdb_latexmk *.fls *.glg *.glo *.gls *.idx *.ilg *.ind *.ist *.lof *.lot *~ *.*~* *.backup *.synctex.gz
