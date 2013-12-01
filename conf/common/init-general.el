
(provide 'init-general)

;; 通信プロキシの設定
(setq url-proxy-services '(("http" . "www-proxy.waseda.jp:8080")))
(setq url-proxy-services nil)

;; フルスクリーンの設定
(when darwin-p
  (setq ns-use-native-fullscreen nil)
  )

;; IMEの設定
(when darwin-p
  (setq default-input-method "MacOSX")
  ;;(mac-add-key-passed-to-system 'shift)
  ;;(add-hook 'minibuffer-setup-hook 'mac-change-language-to-us)
  )
(when linux-p
  (setq default-input-method "japanese-mozc"))

;; window
(set-frame-parameter nil 'alpha 80)

;; フォント
(when darwin-p
  (create-fontset-from-ascii-font "Ricty-13:weight=normal:slant=normal" nil "ricty")
  (set-fontset-font "fontset-ricty"
					'unicode
					(font-spec :family "Ricty" :size 13)
					nil
					'append)
  )
(when linux-p
  (create-fontset-from-ascii-font "Ricty-10:weight=normal:slant=normal" nil "ricty")
  (set-fontset-font "fontset-ricty"
					'unicode
					(font-spec :family "Ricty" :size 11)
					nil
					'append)
  )
(add-to-list 'default-frame-alist '(font . "fontset-ricty"))

;; ユーザーの設定
(setq user-full-name "Ryo Nishikawa")
(setq user-mail-address "water.leads.itiv.se@gmail.com")

;; ドラッグアンドドロップでファイルを開く
(define-key global-map [ns-drag-file] 'ns-find-file)
(setq ns-pop-up-frames nil)

;; バックアップを~/.emacs.d/backups以下に保存する
(add-to-list 'backup-directory-alist
			 (cons "." "~/.emacs.d/backups/"))

;; オートセーブの間隔を縮める
(setq auto-save-timeout 15)
(setq auto-save-interval 60)

;; 対応する括弧を光らせる
(setq show-paren-delay 0)
(show-paren-mode 1)
;;(setq show-paren-styfffle 'expression)	; 括弧内も強調標示

;; 現在の行を目立たせる
(global-hl-line-mode)

;; 現在行を表示する
(dolist (hook (list
	       'c-mode-hook
	       'emacs-lisp-mode-hook
	       'lisp-intraction-mode-hook
	       'lisp-mode-hook
	       'clojure-mode-hook
	       'java-mode-hook
	       'scala-mode-hook
	       'html-mode-hook
	       'sh-mode-hook
	       'org-mode-hook
	       'js2-mode-hook
	       'coffee-mode-hook
	       'css-mode-hook
	       'python-mode-hook
	       'c++-mode-hook
	       'ruby-mode-hook
             ))
(add-hook hook (lambda () (linum-mode t))))

;; カーソルの点滅を止める
(blink-cursor-mode nil)

;; カーソルの位置を表示する
(line-number-mode t)
(column-number-mode t)

;; 選択範囲の情報表示
(defun count-lines-and-chars ()
  (if mark-active
      (format "[%3d:%4d]"
              (count-lines (region-beginning) (region-end))
              (- (region-end) (region-beginning)))
    ""))
(add-to-list 'default-mode-line-format
             '(:eval (count-lines-and-chars)))

;; カーソルの位置を保存する
(require 'saveplace)

;; 履歴を次回Emacs起動時にも保存する
(savehist-mode 1)

;; ログの記録行数を増やす
(setq message-log-max 10000)

;; 履歴の保存数を増やす
(setq history-length 1000)

;; モードラインに時刻を表示する
(setq display-time-24hr-format t) 
(display-time-mode t)
;; モードラインにバッテリー容量を表示する
(display-battery-mode 1)
;; ツールバーを消す
(tool-bar-mode -1)
;; スクロールバーを消す
(scroll-bar-mode -1)
;; スクロールを一行ずつに
(setq scroll-conservatively 35
  scroll-margin 0
  scroll-step 1)

;; CUAモード
(cua-mode t)
(setq cua-enable-cua-keys nil)

;; タブ設定
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq default-tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
                      64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

;; 略語展開・補完
(setq hippie-expand-try-functions-list
	  '(try-complete-file-name-parially	   ; ファイル名の一部
		try-complete-file-name			   ; ファイル名全体
		try-expand-all-abbrevs			   ; 静的略語展開
		try-expand-all-dabbrev			   ; 動的略語展開(カレントバッファ)
		try-expand-all-dabbrev-all-buffers ; 動的略語展開（全バッファ）
		try-expand-all-dabbrev-from-kill   ; 動的略語展開（キルリング）
		try-complete-lisp-symbol-partially ; Lispシンボル名の一部
		try-complete-lisp-symbol		   ; Lispシンボル名全体
		))

;; yesをyに省略
(defalias 'yes-or-no-p 'y-or-n-p)

;; ブックマークを変更したら保存する
(setq-default bookmark-save-flag 1)
;; ブックマークは最近使ったものを上に持ってくる
(progn
  (setq bookmark-sort-flag nil)
  (defun bookmark-arrange-latest-top ()
	(let ((latest (bookmark-get-bookmark bookmark)))
	  (setq bookmark-alist (cons latest (delq latest bookmark-alist))))
	(bookmark-save))
  (add-hook 'bookmark-after-jump-hook 'bookmark-arrange-latest-top)
)

;; 現在のディレクトリをFinderで開く
(defun open-current-directory ()
  (interactive)
  (shell-command "open ."))
