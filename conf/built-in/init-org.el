
(provide 'init-org)

(require 'org-install)
(setq org-export-html-xml-declaration
	 '(("html" . "")
	   ("php" . "")))
(setq org-directory "/Volumes/ryo.nishikawa/Org/")
(setq org-agenda-files (list org-directory
							 "/Volumes/ryo.nishikawa/Org/TaskManagement/"
							 ))
(setq org-default-notes-file "notes.org")
(setq auto-mode-alist
 (append
  '(
	("\.txt$" . org-mode)
    )auto-mode-alist))

(add-hook 'org-mode-hook (lambda ()
						   (define-key org-mode-map (kbd "C-<tab>") 'elscreen-next)))
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c r") 'org-remember)

