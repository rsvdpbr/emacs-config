
(provide 'init-server)

(require 'server)
;; 複数サーバ起動を防ぐ
(unless (server-running-p)
  (server-start))
