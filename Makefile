.PHONY: all clean clean_temp

all: slide.pdf clean_temp

slide.pdf: slide.tex ref.bib
	xelatex slide.tex
	bibtex slide
	xelatex slide.tex
	xelatex slide.tex

clean_temp:
	rm -f slide.aux slide.log slide.nav slide.out slide.snm slide.toc missfont.log slide.bbl slide.blg slide.vrb

clean: clean_temp
	rm -f slide.pdf
