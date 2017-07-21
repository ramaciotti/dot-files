(setq default-frame-alist '((font . "Fira Code-10"))
      initial-frame-alist '((font . "Fira Code-10")))

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

(load-theme 'base16-ocean t)

;; Set the cursor color based on the evil state
(defvar my/base16-colors base16-ocean-colors)
(setq evil-emacs-state-cursor   `(,(plist-get my/base16-colors :base0D) box)
      evil-insert-state-cursor  `(,(plist-get my/base16-colors :base0D) bar)
      evil-motion-state-cursor  `(,(plist-get my/base16-colors :base0E) box)
      evil-normal-state-cursor  `(,(plist-get my/base16-colors :base0B) box)
      evil-replace-state-cursor `(,(plist-get my/base16-colors :base08) bar)
      evil-visual-state-cursor  `(,(plist-get my/base16-colors :base09) box))

(powerline-center-theme)
