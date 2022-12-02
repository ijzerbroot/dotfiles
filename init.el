
(setq inhibit-startup-message t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)            ; Disable the menu bar

;; Set up the visible bell
(setq visible-bell t)

(set-face-attribute 'default nil :font "IBM Plex Mono" :height 170)


;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(setq package-enable-at-startup nil)
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'doom-themes)
(straight-use-package 'all-the-icons)
(straight-use-package 'doom-modeline)
(straight-use-package 'magit)
(straight-use-package 'projectile)
(straight-use-package 'counsel)
(straight-use-package 'vertico)
(straight-use-package 'good-scroll)
(straight-use-package 'org-mode)
(straight-use-package 'consult)
(straight-use-package 'marginalia)
(straight-use-package 'lsp-mode)
(straight-use-package 'avy)
(straight-use-package 'embark)
(straight-use-package 'corfu)
(straight-use-package 'beacon)
(straight-use-package 'which-key)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(good-scroll-mode 1)
(doom-modeline-mode 1)
(vertico-mode)
(beacon-mode 1)
(which-key-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33" default)))
(load-theme 'doom-snazzy)
