
(provide 'init-helm)

(require 'helm-config)
(require 'helm-command)
(require 'helm-descbinds)

;; (helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(define-key helm-map (kbd "C-h") 'delete-backward-char)

;; (setq helm-idle-delay             0.3
;;       helm-input-idle-delay       0.1
;;       helm-candidate-number-limit 200)

;; (let ((key-and-func
;;        `((,(kbd "C-r")   helm-for-files)
;;          (,(kbd "C-^")   helm-c-apropos)
;;          (,(kbd "C-;")   helm-resume)
;;          (,(kbd "M-s")   helm-occur)
;;          (,(kbd "M-x")   helm-M-x)
;;          (,(kbd "M-y")   helm-show-kill-ring)
;;          (,(kbd "M-z")   helm-do-grep)
;;          (,(kbd "C-S-h") helm-descbinds)
;;         )))
;;   (loop for (key func) in key-and-func
;;         do (global-set-key key func)))
