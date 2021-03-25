MASTERNAME=main

default : pdf

pdf:
	latexmk $(MASTERNAME)

nomen:
	makeindex $(MASTERNAME).nlo -s nomencl.ist -o $(MASTERNAME).nls

bib:
	bibtex $(MASTERNAME)

clean:
	rm -fv *aux *log *bbl *blg *~ *out *toc *lof *lot *.nlo *nls *abk *sav *.fdb_latexmk *fls *.ilg
