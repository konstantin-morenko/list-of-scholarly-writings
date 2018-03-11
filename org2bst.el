
(setq file-to-load "konstantin-morenko.org")

(progn
  (find-file file-to-load)		; load file
  (org-babel-tangle))			; tangle to bst
