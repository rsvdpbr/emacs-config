(provide 'init-ruby)

(require 'ruby-mode)
(define-key ruby-mode-map (kbd "C-m") 'reindent-then-newline-and-indent)
