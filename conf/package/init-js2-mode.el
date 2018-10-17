
(provide 'init-js2-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js2-mode-hook
          (lambda ()
			(define-key js2-mode-map (kbd "C-M-h") 'backward-kill-word)
			(define-key js2-mode-map (kbd "C-m") nil)))
(add-hook 'js2-mode-hook 'prettier-js-mode)

(setq js-indent-level 2)

(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))
