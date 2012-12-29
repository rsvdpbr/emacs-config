
(provide 'init-cake)

(add-to-list 'load-path "~/.emacs.d/elisp/cake")
(require 'cake)
(global-cake t)

(define-key cake-key-map (kbd "C-c s") 'cake-switch)

