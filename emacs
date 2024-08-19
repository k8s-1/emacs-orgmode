;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

;; Enable transient mark mode
(transient-mark-mode 1)

;; Enable mouse mode
(xterm-mouse-mode 1)

;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacs

(setq org-todo-keywords
      '((sequence
	 "TODO(t)"
	 "DONE(d)"
	 )))

(setq org-todo-keyword-faces
      '(("TODO" . "orange")
        ("DONE" . "green")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(org-agenda-files '("~/org/life.org"))
 '(org-log-into-drawer t)
 '(org-modules
   '(ol-docview ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)

;; disable emacs backup files
(setq make-backup-files nil)
