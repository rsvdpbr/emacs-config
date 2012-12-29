
(provide 'init-auto-complete)

(require 'auto-complete-config)

(global-auto-complete-mode t)
(ac-config-default)

(define-key  ac-completing-map (kbd "<tab>") 'ac-next)
(define-key  ac-completing-map (kbd "C-<tab>") 'ac-previous)
(define-key  ac-completing-map (kbd "C-n") 'ac-next)
(define-key  ac-completing-map (kbd "C-p") 'ac-previous)

