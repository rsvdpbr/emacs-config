
(provide 'init-coffee-mode)

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
(defun coffee-custom ()
  "coffee-mode-hook"
	(make-local-variable 'tab-width)
	(make-local-variable 'coffee-tab-width)
	(set 'tab-width 2)
	(set 'coffee-tab-width 2)
	(setq coffee-args-compile '("-c" "--bare"))
	(setq coffee-debug-mode t)
	(define-key coffee-mode-map (kbd "M-r") 'coffee-compile-buffer)
	(setq coffee-command "coffee")
	(coffee-cos-mode t)
	(setq indent-tabs-mode t))
(add-hook 'coffee-mode-hook 'coffee-custom)
