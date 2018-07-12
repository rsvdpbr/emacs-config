
(provide 'init-js2-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js2-mode-hook
          (lambda ()
			(define-key js2-mode-map (kbd "C-M-h") 'backward-kill-word)
			(define-key js2-mode-map (k2bd "C-m") nil)))
(add-hook 'js2-mode-hook 'prettier-js-mode)

(setq js-indent-level 2)
