LATEX_AUX = *.aux *.bbl *.bcf *.blg *.log *.run.xml
PDFLATEX_AUX = *.run.xml
LATEXMK_AUX = *.fdb_latexmk *.fls
AUX_FILES = $(LATEX_AUX) $(PDFLATEX_AUX) $(LATEXMK_AUX)

konstantin-morenko.pdf: konstantin-morenko.bst konstantin-morenko.tex
	latexmk -pdf konstantin-morenko.tex

konstantin-morenko.bst: konstantin-morenko.org
	emacs --script org2bst.el

pdf:
	pdflatex konstantin-morenko.tex

biber:
	biber konstantin-morenko.bcf

clean:
	rm $(AUX_FILES)

articles:
	./parse-biblatex-to-yml.py > site/_data/articles.yml
