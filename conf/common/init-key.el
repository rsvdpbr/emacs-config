
(provide 'init-key)

;;; 左commandキーをMetaにする
(setq ns-command-modifier (quote meta))
;;; 右commandキーをHyperにする
(setq mac-right-command-modifier (quote hyper))
;;; OptionキーをSuperにする
(setq ns-alternate-modifier (quote super))

;;; 正規表現置き換え
(global-set-key (kbd "C-%") 'query-replace-regexp)
;;; フルスクリーン化
(global-set-key (kbd "C-c f") 'ns-toggle-fullscreen)

;; Delete
(global-set-key (kbd "C-h") 'delete-backward-char)

;; 行の折り返し表示を切り替える
(global-set-key (kbd "C-c l") 'toggle-truncate-lines)

;; Enterでインデントをする
(global-set-key (kbd "C-m") 'newline-and-indent)

;; ウィンドウ移動
(global-set-key (kbd "C-q") 'other-window)

;; ウィンドウサイズ変更
(global-set-key (kbd "M-p") 'enlarge-window)
(global-set-key (kbd "M-P") 'shrink-window)
(global-set-key (kbd "M-n") 'shrink-window)
(global-set-key (kbd "M-N") 'enlarge-window)
(global-set-key (kbd "M-f") 'enlarge-window-horizontally)
(global-set-key (kbd "M-F") 'shrink-window-horizontally)
(global-set-key (kbd "M-b") 'shrink-window-horizontally)
(global-set-key (kbd "M-B") 'enlarge-window-horizontally)

