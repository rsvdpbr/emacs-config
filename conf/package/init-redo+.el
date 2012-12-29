
(provide 'init-redo+)

(require 'redo+)

(setq undo-no-redo t)
(setq undo-limit 60000)
(setq undo-strong-limit 60000)

(global-set-key (kbd "C-M-/") 'redo)
