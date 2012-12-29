
(provide 'init-slime)

;; なんか上手くロードできないから、またCommonLispいじる時までとりあえず放置

(setq inferior-lisp-program "sbcl")
(require 'slime)
;;(slime-setup '(slime-repl slime-autodoc))

(require 'hyperspec)
(setq common-lisp-hyperspec-root
      (concat "file://" (expand-file-name "/Users/ryo/Dropbox/emacs/.emacs.d/etc/HyperSpec/"))
      common-lisp-hyperspec-symbol-table
      (expand-file-name "/Users/ryo/Dropbox/emacs/.emacs.d/etc/HyperSpec/Data/Map_Sym.txt"))
(defadvice common-lisp-hyperspec
  (around hyperspec-lookup-w3m () activate)
  (let* ((window-configuration (current-window-configuration))
         (browse-url-browser-function
          `(lambda (url new-window)
             (w3m-browse-url url nil)
             (let ((hs-map (copy-keymap w3m-mode-map)))
               (define-key hs-map (kbd "q")
                 (lambda ()
                   (interactive)
                   (kill-buffer nil)
                   (set-window-configuration ,window-configuration)))
               (use-local-map hs-map)))))
    ad-do-it))
