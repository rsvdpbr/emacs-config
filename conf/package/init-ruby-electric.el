
(provide 'init-ruby-electric)

(require 'ruby-electric)

(dolist (hook (list
			   'ruby-mode-hook))
  (add-hook hook (lambda () (ruby-electric-mode t))))

(setq ruby-electric-expand-delimiters-list nil)
