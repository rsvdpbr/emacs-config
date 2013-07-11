
(provide 'init-elscreen)

(setq elscreen-tab-display-kill-screen nil)
(elscreen-start)

(global-set-key (kbd "M-t") 'elscreen-create)
(global-set-key (kbd "M-W") 'elscreen-kill)
(global-set-key (kbd "M-}") 'elscreen-next)
(global-set-key (kbd "M-{") 'elscreen-previous)
(global-set-key (kbd "C-<tab>") 'elscreen-next)
(when darwin-p
  (global-set-key (kbd "C-S-<tab>") 'elscreen-previous))
(when linux-p
  (global-set-key (kbd "C-S-<iso-lefttab>") 'elscreen-previous))
