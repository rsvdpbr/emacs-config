
;; emacs-24.2 for mac os x

(add-to-list 'load-path "~/.emacs.d/elisp")

;; common
(add-to-list 'load-path "~/.emacs.d/conf/common")
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
(require 'init-uniquify)
(require 'init-wdired)
(require 'init-tramp)

;; package
(add-to-list 'load-path "~/.emacs.d/conf/package")
(require 'init-package)
(require 'init-anything)
(require 'init-applescript-mode)
(require 'init-auto-complete)
;;(require 'init-clojure-mode)
(require 'init-coffee-mode)
(require 'init-color-moccur)
(require 'init-color-theme)
(require 'init-elscreen)
(require 'init-jade-mode)
(require 'init-js2-mode)
(require 'init-magit)
(require 'init-paredit)
(require 'init-php-mode)
(require 'init-python-mode)
(require 'init-redo+)
(require 'init-scala-mode2)
;;(require 'init-slime)
(require 'init-undo-tree)
(require 'init-w3m)
(require 'init-yasnippet)

;; elisp
(add-to-list 'load-path "~/.emacs.d/conf/elisp")
(require 'init-ace-jump-mode)
(require 'init-historyf)
(require 'init-cake)
(require 'init-howm)
(require 'init-undohist)

;; dependency
(require 'init-cc-mode)


