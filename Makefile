ALL: nano-9.pdf

.PHONY: graphs

%.pdf: %.adoc mini-manual.yml Makefile graphs
	asciidoctor-pdf \
	-a pdf-themesdir=. \
	-a pdf-theme=mini-manual.yml \
	-a pdf-fontsdir=fonts \
	-a imagesdir=images \
	-a iconsdir=icons \
	$< \

graphs:
	$(MAKE) -C graphs
