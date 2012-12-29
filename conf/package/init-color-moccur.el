
(provide 'init-color-moccur)

(require 'color-moccur)

(setq moccur-split-word t)							; スペース区切りでAND検索
(add-to-list 'dmoccur-exclusion-mask "\\.DS_Store") ; ディレクトリ検索にて除外
(add-to-list 'dmoccur-exclusion-mask "^#.+#$")		; ディレクトリ検索にて除外
(setq moccur-use-migemo t)							; migemoを利用可能に

(global-set-key (kbd "M-o") 'occur-by-moccur)
