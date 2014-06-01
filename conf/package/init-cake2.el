
(provide 'init-cake2)

(require 'cake2)
(global-cake2 t)

(define-key cake2::key-map (kbd "C-c s") 'cake2::switch)

