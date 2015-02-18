
(provide 'init-paredit)

(require 'paredit)
(dolist (hook (list
            'emacs-lisp-mode-hook
            'lisp-intraction-mode-hook
            'lisp-mode-hook
			'clojure-mode-hook
			'slime-repl-mode-hook
			'scala-mode-hook
             ))
(add-hook hook (lambda () (paredit-mode t))))

(define-key paredit-mode-map (kbd "C-M-f") 'paredit-forward-slurp-sexp)
(define-key paredit-mode-map (kbd "C-M-b") 'paredit-forward-barf-sexp)
(define-key paredit-mode-map (kbd "C-j")   'eval-print-last-sexp)

