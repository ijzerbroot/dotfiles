
(setq inhibit-startup-message t)
(setq-default doom-modeline-height 18)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)            ; Disable the menu bar

;; Set up the visible bell
(setq visible-bell t)

;; line height
(setq-default line-spacing 2)

(set-face-attribute 'default nil :font "Courier Prime Code" :height 135)


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
 '(mode-line ((t (:box nil :height 0.9 :family "Courier Prime")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(completion-styles '(flex partial-completion emacs22))
 '(custom-safe-themes
   '("dc8285f7f4d86c0aebf1ea4b448842a6868553eded6f71d1de52f3dcbc960039" "6454421996f0508c38215a633256e36c19a28591542fb0946cfc40f1dceb89cf" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f" "f458b92de1f6cf0bdda6bce23433877e94816c3364b821eb4ea9852112f5d7dc" "7ea883b13485f175d3075c72fceab701b5bf76b2076f024da50dff4107d0db25" "ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0" "9d29a302302cce971d988eb51bd17c1d2be6cd68305710446f658958c0640f68" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" "991ca4dbb23cab4f45c1463c187ac80de9e6a718edc8640003892a2523cb6259" "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4" "545ab1a535c913c9214fe5b883046f02982c508815612234140240c129682a68" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "00cec71d41047ebabeb310a325c365d5bc4b7fab0a681a2a108d32fb161b4006" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" "680f62b751481cc5b5b44aeab824e5683cf13792c006aeba1c25ce2d89826426" "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33" default))
 '(doom-modeline-height 18))
(load-theme 'doom-ayu-mirage)

(add-to-list 'load-path "~frank/emacs-lsp-bridge")

(require 'yasnippet)
(yas-global-mode 1)

(require 'lsp-bridge)
(global-lsp-bridge-mode)

(good-scroll-mode 1)
(doom-modeline-mode 1)
(vertico-mode)
(beacon-mode 1)
(which-key-mode 1)

(set-frame-parameter nil 'alpha-background 95) ; For current frame
(add-to-list 'default-frame-alist '(alpha-background . 95)) ; For all new frames henceforth

(setq default-frame-alist '((width . 150)
			    (height . 50)
                            (alpha-background . 90)
			   ))
