
(provide 'init-chrome)

(defun google-search (string)
  "Search string with google"
  (interactive "sGoogle Search: ")
  (cond
   ((not (zerop (length string)))
	(browse-url
	 (concat "http://google.com/search?q=" (encode-coding-string string 'utf-8))))))
(defun chrome-search (string)
  (interactive "sGoogle Search: ")
  (shell-command (concat
				  "osascript ~/.emacs.d/etc/chrome/interface.applescript search "
				  "'" (encode-coding-string string 'utf-8) "'")))

(defun chrome-scroll-next ()
  (interactive)
  (shell-command "osascript ~/.emacs.d/etc/chrome/interface.applescript next"))
(defun chrome-scroll-previous ()
  (interactive)
  (shell-command "osascript ~/.emacs.d/etc/chrome/interface.applescript previous"))


(defun chrome-reload ()
  (interactive)
  (shell-command "osascript ~/.emacs.d/etc/chrome/interface.applescript reload"))


(defun chrome-go-forward ()
  (interactive)
  (shell-command "osascript ~/.emacs.d/etc/chrome/interface.applescript go-forward"))
(defun chrome-go-back ()
  (interactive)
  (shell-command "osascript ~/.emacs.d/etc/chrome/interface.applescript go-back"))


(defun chrome-next-tab ()
  (interactive)
  (shell-command "osascript ~/.emacs.d/etc/chrome/interface.applescript next-tab"))
(defun chrome-prev-tab ()
  (interactive)
  (shell-command "osascript ~/.emacs.d/etc/chrome/interface.applescript prev-tab"))
(defun chrome-tab-close ()
  (interactive)
  (shell-command "osascript ~/.emacs.d/etc/chrome/interface.applescript tab-close"))


(global-set-key (kbd "C-S-g") 'google-search)
(global-set-key (kbd "s-s") 'chrome-search)

(global-set-key (kbd "s-n") 'chrome-scroll-next)
(global-set-key (kbd "s-p") 'chrome-scroll-previous)

(global-set-key (kbd "s-r") 'chrome-reload)

(global-set-key (kbd "s-f") 'chrome-go-forward)
(global-set-key (kbd "s-b") 'chrome-go-back)

(global-set-key (kbd "s-<tab>") 'chrome-next-tab)
(global-set-key (kbd "s-C-<tab>") 'chrome-prev-tab)
(global-set-key (kbd "s-w") 'chrome-tab-close)
