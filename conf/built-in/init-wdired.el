
(provide 'init-wdired)

(require 'wdired)

(define-key dired-mode-map (kbd "r") 'wdired-change-to-wdired-mode)
