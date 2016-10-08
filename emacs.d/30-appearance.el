(setq custom-theme-directory "~/.emacs.d/themes"

      default-frame-alist '((font . "Terminus-9"))
      initial-frame-alist '((font . "Terminus-9")))

; unicode fallback
(when (functionp 'set-fontset-font)
  (set-fontset-font "fontset-default"
                    'unicode
                    (font-spec :family "DejaVu Sans Mono"
                               :width 'normal
                               :size 9
                               :weight 'normal)))

(when (window-system)
  (require 'git-gutter-fringe)

  (blink-cursor-mode 0)
  (global-git-gutter-mode 1)
  (menu-bar-mode 0)
  (scroll-bar-mode -1)
  (tool-bar-mode -1))

;(load-theme 'base16-grayscale-light t)

(powerline-center-theme)
