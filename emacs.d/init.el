(package-initialize)

; load all files that match the format "~/.emacs.d/00-description.el"
(let ((files (sort (file-expand-wildcards "~/.emacs.d/??-*.el") 'string<)))
  (mapc (lambda (file) (load file)) files))
