(provide 'init-scss-mode)

(require 'scss-mode)
(setq scss-sass-command (expand-file-name "~/.rbenv/shims/sass"))
(setq scss-sass-options '("--style compressed"))
