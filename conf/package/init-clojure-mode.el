
(provide 'init-clojure-mode)

;;; clojure-jack-inを使うときは、init.elの(require 'init-slime)をコメントアウトする
;;; swankのバージョンが違うため、上手く起動出来ない

(require 'clojure-mode)
(add-hook 'slime-repl-mode-hook (lambda () (clojure-mode-font-lock-setup)))
(setq slime-net-coding-system 'utf-8-unix)
