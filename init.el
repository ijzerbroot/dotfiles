
(setq inhibit-startup-message t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)            ; Disable the menu bar

;; Set up the visible bell
(setq visible-bell t)

;; line height
(setq-default line-spacing 2)

(set-face-attribute 'default nil :font "Hack Nerd Font Mono" :height 155)


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
(straight-use-package 'vertico)
(straight-use-package 'good-scroll)
(straight-use-package 'org-mode)
(straight-use-package 'consult)
(straight-use-package 'marginalia)
;;(straight-use-package 'lsp-mode)
;; for lsp-bridge
(straight-use-package 'posframe)
(straight-use-package 'markdown-mode)
(straight-use-package 'yasnippet)
;;(straight-use-package 'lsp-bridge)
;;(straight-use-package 'lsp-ui)
(straight-use-package 'avy)
(straight-use-package 'embark)
;;(straight-use-package 'corfu)
(straight-use-package 'prescient)
;;(straight-use-package 'corfu-prescient)
;;(straight-use-package 'company-prescient)
(straight-use-package 'vertico-prescient)
(straight-use-package 'beacon)
(straight-use-package 'which-key)
(straight-use-package 'rustic)
;;(straight-use-package 'company-mode)
(straight-use-package 'go-mode)
(straight-use-package 'vterm)
(straight-use-package 'tree-sitter)
(straight-use-package 'tree-sitter-langs)
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
 '(completion-styles '(flex partial-completion emacs22))
 '(custom-safe-themes
   '("680f62b751481cc5b5b44aeab824e5683cf13792c006aeba1c25ce2d89826426" "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33" default)))
(load-theme 'doom-ayu-mirage)

(add-to-list 'load-path "~frank/emacs-lsp-bridge")

(require 'yasnippet)
(yas-global-mode 1)

(require 'lsp-bridge)
(global-lsp-bridge-mode)
