
(provide 'init-howm)

(add-to-list 'load-path "~/.emacs.d/elisp/howm")
;; (setq howm-directory (concat user-emacs-directory "howm"))
(setq howm-directory "/Volumes/ryo.nishikawa/Howm")
(setq howm-file-name-format "%Y/%m/%Y-%m-%d-%H%M%S.howm")
(setq howm-menu-lang 'ja)
(require 'howm)
(require 'howm-mode)


(global-set-key (kbd "M-h") 'howm-menu)
(defun howm-save-buffer-and-kill ()
  "howmメモを保存と同時に閉じます。"
  (interactive)
  (when (and (buffer-file-name)
			 (string-match ".?*.howm" (buffer-file-name)))
	(save-buffer)
	(kill-buffer nil)))
(define-key howm-mode-map (kbd "C-c C-c") 'howm-save-buffer-and-kill)
