ALL: red-pixel.svg

%.pdf: %.tex
	pdflatex $(basename $<)

%.svg: %.pdf
	pdf2svg $< $@ && mv $@ ../images
