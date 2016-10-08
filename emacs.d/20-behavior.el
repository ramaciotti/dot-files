(setq-default inhibit-startup-screen t
              initial-scratch-message nil

              line-number-mode t
              column-number-mode t

              tab-width 4
              indent-tabs-mode nil

              make-backup-files nil
              read-file-name-completion-ignore-case t
              savehist-file "~/.emacs.d/.savehist"

              use-dialog-box nil)

(setq uniquify-buffer-name-style 'post-forward

      redisplay-dont-pause t

      scroll-margin 5
      scroll-conservatively 10000
      scroll-preserve-screen-position 1

      mouse-wheel-follow-mouse t
      mouse-wheel-scroll-amount '(1 ((shift) . 1)))

(evil-mode)
(pallet-mode)
(savehist-mode)
(semantic-mode)
(server-mode)
(show-paren-mode)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
