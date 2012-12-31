
(provide 'init-js2-mode)

(add-hook 'js2-mode-hook
          (lambda ()
			(define-key js2-mode-map (kbd "C-m") '(lambda ()
													(interactive)
													(js2-enter-key)
													(js2-indent-line)))))
