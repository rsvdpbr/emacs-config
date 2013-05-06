
(provide 'init-php-mode)

(require 'php-mode)
(setq php-mode-force-pear t)
(add-hook 'php-mode-hook
          (lambda ()
            (require 'php-completion)
            (c-set-offset 'case-label' 4)
            (c-set-offset 'arglist-intro' 4)
            (c-set-offset 'arglist-cont-nonempty' 4)
            (c-set-offset 'arglist-close' 0)
			(setq indent-tabs-mode t)
            (php-completion-mode t)
			(define-key php-mode-map (kbd "C-c C-<SPC>") 'phpcmp-complete) ;補完キー
			(define-key php-mode-map (kbd "C-M-h") 'backward-kill-word)
            (make-local-variable 'ac-sources)
            (setq ac-sources '(
                               ac-source-words-in-same-mode-buffers
                               ac-source-php-completion
                               ac-source-filename
                               ))))
(setq auto-mode-alist
 (append
  '(
    ("\.ctp$" . php-mode)
    ("/\\(PEAR\\|pear\\)/" . php-mode)
    ("\.php$" . php-mode)
    )auto-mode-alist))
