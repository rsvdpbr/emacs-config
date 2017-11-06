;; emacs-24.2 for mac os x


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(add-to-list 'load-path "~/.emacs.d/elisp")

;; common
(add-to-list 'load-path "~/.emacs.d/conf/common")
(require 'init-environment)
(require 'init-server)
(require 'init-key)
(require 'init-general)
(require 'init-chrome)

;; built-in
(add-to-list 'load-path "~/.emacs.d/conf/built-in")
(require 'init-cl)
(require 'init-migemo)
(require 'init-org)
(require 'init-recentf)
(require 'init-ruby)
(require 'init-shell-script)
(require 'init-uniquify)
(require 'init-wdired)
(require 'init-tramp)

;; package
(add-to-list 'load-path "~/.emacs.d/conf/package")
(require 'init-package)
(require 'init-ace-jump-mode)
(require 'init-anything)
(require 'init-applescript-mode)
(require 'init-auto-complete)
;; (require 'init-clojure-mode)
(require 'init-coffee-mode)
(require 'init-color-moccur)
(require 'init-color-theme)
(require 'init-elscreen)
(require 'init-eredis)
(require 'init-go-mode)
(require 'init-jade-mode)
(require 'init-js2-mode)
(require 'init-magit)
(require 'init-markdown-mode)
(require 'init-multiple-cursors)
(require 'init-paredit)
(require 'init-php-mode)
(require 'init-python-mode)
;; (require 'init-redo+)
(require 'init-rhtml-mode)
(require 'init-ruby-block)
(require 'init-ruby-electric)
(require 'init-scss-mode)
(require 'init-scala-mode2)
(require 'init-slime)
(require 'init-typescript-mode)
(require 'init-undohist)
(require 'init-undo-tree)
(require 'init-virtualenv-mode)
(require 'init-w3m)
(require 'init-yasnippet)

;; elisp
(add-to-list 'load-path "~/.emacs.d/conf/elisp")
(require 'init-historyf)
(require 'init-howm)

;; dependency
(require 'init-cake2)
(require 'init-cc-mode)

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(package-selected-packages
;;    (quote
;; 	(ng2-mode tss yasnippet yaml-mode w3m virtualenv undohist undo-tree smartrep slime scss-mode scala-mode2 ruby-electric ruby-block rhtml-mode redo+ python-mode powershell php-mode paredit multiple-cursors markdown-mode magit js2-mode jade-mode helm-descbinds haml-mode go-eldoc go-autocomplete flymake-go flymake flycheck eredis elscreen descbinds-anything company-go color-theme color-moccur coffee-mode clojure-mode cake2 applescript-mode anything-show-completion anything-obsolete anything-match-plugin anything-exuberant-ctags anything-config anything-complete ace-jump-mode))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(yasnippet yaml-mode w3m virtualenv undohist undo-tree smartrep slime scss-mode scala-mode2 ruby-electric ruby-block rhtml-mode redo+ python-mode powershell php-mode paredit ng2-mode multiple-cursors markdown-mode magit js2-mode jade-mode helm-descbinds haml-mode go-eldoc go-autocomplete flymake-go flymake flycheck eredis elscreen descbinds-anything company-go color-theme color-moccur coffee-mode clojure-mode cake2 applescript-mode anything-show-completion anything-obsolete anything-match-plugin anything-exuberant-ctags anything-config anything-complete ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
