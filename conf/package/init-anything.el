
(provide 'init-anything)

(require 'anything-match-plugin)
(require 'anything-migemo)
(when (require 'anything-complete nil t)
  (anything-lisp-complete-symbol-set-timer 150)
  (define-key emacs-lisp-mode-map "\C-\M-i" 'anything-lisp-complete-symbol-partial-match)
  (define-key lisp-interaction-mode-map "\C-\M-i" 'anything-lisp-complete-symbol-partial-match)
  (anything-read-string-mode 1))
(require 'anything-show-completion)
(require 'anything-git-project)
(when (require 'descbinds-anything nil t)
  (descbinds-anything-install))
(require 'anything-grep)
(require 'anything-config)
(setq anything-samewindow nil)


;; AnythingからTAGSを利用しやすくするコマンドを定義
(when (and (require 'anything-exuberant-ctags nil t)
		   (require 'anything-gtags nil t))
  ;; anything-for-tags用のソースを定義
  (setq anything-for-tags
		(list anything-c-source-imenu
			  anything-c-source-gtags-select
			  anything-c-source-etags-select
			  anything-c-source-exuberant-ctags-select))
  ;; anything-for-tagsコマンドを作成
  (defun anything-for-tags ()
	"Preconfigured `anything` for anything-for-tags."
	(interactive)
	(anything anything-for-tags
			  (thing-at-point 'symbol)
			  nil nil nil "*anything for tags*"))
  ;; M-,にanything-for-tagsを割り当て
  (define-key global-map (kbd "M-,") 'anything-for-tags)
  )

(global-set-key (kbd "M-x") 'anything-M-x)
(global-set-key (kbd "C-x b") 'anything-for-files)
(global-set-key (kbd "C-;") 'anything-git-project)
