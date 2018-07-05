# list-of-scholarly-writings

My list of scholarly writings

There are:
- main database *konstantin-morenko.org*
- (generating) LaTeX/BibLaTeX database *konstantin-morenko.bst*
- template for LaTeX/PDF *konstantin-morenko.tex*
- (generating) PDF formatted list *konstantin-morenko.pdf*
- *source-prepage.tex* for creating title pages for publushed writings

Extracting code from main database into BibLaTeX database file could
be made with emacs command `org-babel-tangle`, bound to keys
`C-c C-v t`.

TODO:

- [X] create Makefile to automatically process .org -> .bst -> .pdf
- [ ] separate build/ folder
- [ ] add «№» sign to journal issues
- [ ] add descriptions of the tools
  - [ ] LaTeX
  - [ ] Biblatex-Gost
- [ ] list according VAK
