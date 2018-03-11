LATEX_AUX=*.aux *.bbl *.bcf *.blg *.log *.run.xml

all: bst latexmk

bst:
	emacs --script org2bst.el

latexmk:
	latexmk -pdf konstantin-morenko.tex

pdf:
	pdflatex konstantin-morenko.tex

biber:
	biber konstantin-morenko.bcf

clear:
	rm $(LATEX_AUX)

articles:
	./parse-biblatex-to-yml.py > site/_data/articles.yml
