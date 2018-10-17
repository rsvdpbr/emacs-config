(provide 'init-web-mode)

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html?$" . web-mode))

(add-hook 'web-mode-hook '(lambda ()
                            (setq web-mode-html-offset   2)
                            (setq web-mode-style-padding 2)
                            (setq web-mode-css-offset    2)
                            (setq web-mode-code-indent-offset 2)
                            (setq web-mode-script-offset 2)
                            (setq web-mode-java-offset   2)
                            (setq web-mode-asp-offset    2)
                            (setq indent-tabs-mode nil)
                            (setq tab-width 2)
                            (setq web-mode-markup-indent-offset   2)


                            (local-set-key (kbd "C-m") 'newline-and-indent)
                            
                            (setq web-mode-enable-current-element-highlight t)
                            (setq web-mode-enable-current-column-highlight t)

                            (setq web-mode-tag-auto-close-style 2)

                             (linum-mode t)
                            ))
