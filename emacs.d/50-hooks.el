(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-hook 'c-mode-common-hook
          (lambda ()
            (setq c-basic-offset 4)
            (c-set-offset 'substatement-open 0)))

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(add-hook 'caml-mode-hook 'merlin-mode)
(add-hook 'tuareg-mode-hook 'merlin-mode)

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
