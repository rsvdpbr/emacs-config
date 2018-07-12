(provide 'init-typescript-mode)

(require 'typescript-mode)
(require 'tide)

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

(add-hook 'typescript-mode-hook (lambda ()
                                  (tide-setup)
                                  (prettier-js-mode)
                                  (eldoc-mode t)
                                  (flycheck-mode t)
                                  (setq flycheck-check-syntax-automatically '(save mode-enabled))
                                  (company-mode-on)))

(setq typescript-indent-level 2)
