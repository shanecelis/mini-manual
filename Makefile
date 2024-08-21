ALL: nano-9.pdf graphs

.PHONY: graphs

%.pdf: %.adoc mini-manual.yml Makefile
	asciidoctor-pdf \
	-a pdf-themesdir=. \
	-a pdf-theme=mini-manual.yml \
	-a pdf-fontsdir=fonts \
	-a imagesdir=images \
	-a iconsdir=icons \
	$< \

graphs:
	$(MAKE) -C graphs
