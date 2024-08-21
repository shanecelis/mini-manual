ALL: red-pixel.svg grid.svg

%.pdf: %.tex
	pdflatex $(basename $<)

%.svg: %.pdf
	pdf2svg $< $@ && cp $@ ../images
