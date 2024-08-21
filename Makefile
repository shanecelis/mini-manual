ALL: nano-9.pdf coord3.pdf

%.pdf: %.adoc mini-manual.yml Makefile
	asciidoctor-pdf \
	-a pdf-themesdir=. \
	-a pdf-theme=mini-manual.yml \
	-a pdf-fontsdir=fonts \
	-a imagesdir=images \
	-a iconsdir=icons \
	$< \

coord3.pdf: coord3.tex
	pdflatex $<
