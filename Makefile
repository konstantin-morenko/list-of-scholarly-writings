LATEX_AUX = *.aux *.bbl *.bcf *.blg *.log *.run.xml
PDFLATEX_AUX = *.run.xml
LATEXMK_AUX = *.fdb_latexmk *.fls
AUX_FILES = $(LATEX_AUX) $(PDFLATEX_AUX) $(LATEXMK_AUX)

all: konstantin-morenko.bst latexmk

konstantin-morenko.bst: konstantin-morenko.org
	emacs --script org2bst.el

latexmk:
	latexmk -pdf konstantin-morenko.tex

pdf:
	pdflatex konstantin-morenko.tex

biber:
	biber konstantin-morenko.bcf

clean:
	rm $(AUX_FILES)

articles:
	./parse-biblatex-to-yml.py > site/_data/articles.yml
