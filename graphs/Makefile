# # Requires
# * pdflatex
#
# `brew install --cask mactex`
# * pdf2svg
#
# `brew install pdf2svg`
#
ALL: red-pixel.svg grid.svg image-grid.svg

%.pdf: %.tex
	pdflatex $(basename $<)

%.svg: %.pdf
	pdf2svg $< $@ && cp $@ ../images
