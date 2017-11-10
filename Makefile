MD := $(shell ls *.md)
PDF := $(MD:.md=.pdf)
TEX := $(MD:.md=.tex)
HTML := $(MD:.md=.html)

all: pdf

pdf: $(PDF)

tex: $(TEX)

html: $(HTML)

%.pdf: %.md
	-pandoc --latex-engine=xelatex -s $^ -o $@

%.tex: %.md
	pandoc -s $^ -o $@

%.html: %.md
	pandoc -s $^ -o $@