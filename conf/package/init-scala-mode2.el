
(provide 'init-scala-mode2)

(require 'scala-mode2)


(add-to-list 'load-path "~/.emacs.d/elisp/ensime/elisp/")
(require 'ensime)


(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook
		  (lambda ()
			(define-key scala-mode-map (kbd "C-m") 'newline-and-indent)
			(define-key scala-mode-map (kbd "C-<tab>") 'elscreen-next) ; elscreen
			))
