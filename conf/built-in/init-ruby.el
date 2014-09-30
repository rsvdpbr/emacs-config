(provide 'init-ruby)

(require 'ruby-mode)
(define-key ruby-mode-map (kbd "C-m") 'reindent-then-newline-and-indent)

(defun ruby-insert-end ()
  (interactive)
  (insert "end")
  (ruby-indent-line t)
  (end-of-line))
