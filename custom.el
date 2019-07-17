;;; custom.el --- user customization file    -*- no-byte-compile: t -*-
;;; Commentary:
;;;       Copy custom-template.el to custom.el and change the configurations, then restart Emacs.
;;;       Put your own configurations in custom-post.el to override default configurations.
;;; Code:

;; (setq centaur-logo nil)                        ; Logo file or nil (official logo)
;; (setq centaur-full-name "user name")           ; User full name
;; (setq centaur-mail-address "user@email.com")   ; Email address
;; (setq centaur-proxy "127.0.0.1:1080")          ; Network proxy
(setq centaur-package-archives 'melpa)   ; Package repo: melpa, melpa-mirror, emacs-china netease or tuna
;; (setq centaur-theme 'classic)                  ; Color theme: default, classic, doom, dark, light or daylight
;; (setq centaur-dashboard nil)                   ; Use dashboard at startup or not: t or nil
;; (setq centaur-lsp 'eglot)                      ; Set LSP client: lsp-mode, eglot or nil
;; (setq centaur-chinese-calendar nil)            ; Use Chinese calendar or not: t or nil
;; (setq centaur-benchmark t)                     ; Enable initialization benchmark or not: t or nil

;; For Emacs devel
;; (setq package-user-dir (locate-user-emacs-file (format "elpa-%s" emacs-major-version)))
;; (setq desktop-base-file-name (format ".emacs-%s.desktop" emacs-major-version))
;; (setq desktop-base-lock-name (format ".emacs-%s.desktop.lock" emacs-major-version))

;; Fonts
(when (display-graphic-p)
  ;; Set default font
  (catch 'loop
    (dolist (font '("SF Mono" "Hack Nerd Font Regular" "Source Code Pro" "Fira Code"
                    "Menlo" "Monaco" "DejaVu Sans Mono" "Consolas"))
      (when (member font (font-family-list))
        (set-face-attribute 'default nil :font font)
        (set-face-attribute 'default nil :height (cond (sys/macp 200)
                                                       (sys/win32p 150)
                                                       (sys/linuxp 150)
                                                       (t 120)))
        (throw 'loop t))))

  ;; Specify font for all unicode characters
  (catch 'loop
    (dolist (font '("Apple Color Emoji" "Symbola"))
      (when (member font (font-family-list))
        (set-fontset-font t 'unicode font nil 'prepend)
        (throw 'loop t))))

  ;; Specify font for Chinese characters
  (catch 'loop
    (dolist (font '("WenQuanYi Micro Hei" "Microsoft Yahei"))
      (when (member font (font-family-list))
        (set-fontset-font t '(#x4e00 . #x9fff) font)
        (throw 'loop t))))
  )

;; Misc.
;; (setq confirm-kill-emacs 'y-or-n-p)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(custom-safe-themes
   (quote
    ("84da7b37214b4ac095a55518502dfa82633bee74f64daf6e1785322e77516f96" "82358261c32ebedfee2ca0f87299f74008a2e5ba5c502bde7aaa15db20ee3731" "57b579184165225924f7fdb67ecabce23fffed85f0bcbea5cfb7c69079e33b1b" "68bf77811b94a9d877f9c974c19bafe5b67b53ed82baf96db79518564177c0fb" "fd944f09d4d0c4d4a3c82bd7b3360f17e3ada8adf29f28199d09308ba01cc092" "ef07cb337554ffebfccff8052827c4a9d55dc2d0bc7f08804470451385d41c5c" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "abf61595613add01aa964eaf601bca886202a16aaa2fbfe136d710b929d8f6a7" "b0e790ae74e416ac3ea947e07fdd97794ae4c7f5fd04d6c980da8bb88ae587ac" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "14de8f58ad656af5be374086ae7ab663811633fc1483a02add92f7a1ff1a8455" "2f4f50d98073c01038b518066840638455657dc91dd1a225286d573926f36914" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "886fe9a7e4f5194f1c9b1438955a9776ff849f9e2f2bbb4fa7ed8879cdca0631" default)))
 '(fci-rule-color "#5B6268")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(objed-cursor-color "#ff6c6b")
 '(vc-annotate-background "#282c34")
 '(vc-annotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#b4be6c")
    (cons 60 "#d0be73")
    (cons 80 "#ECBE7B")
    (cons 100 "#e6ab6a")
    (cons 120 "#e09859")
    (cons 140 "#da8548")
    (cons 160 "#d38079")
    (cons 180 "#cc7cab")
    (cons 200 "#c678dd")
    (cons 220 "#d974b7")
    (cons 240 "#ec7091")
    (cons 260 "#ff6c6b")
    (cons 280 "#cf6162")
    (cons 300 "#9f585a")
    (cons 320 "#6f4e52")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#CCC9C2" :background "#212733"))))
 '(all-the-icons-dired-dir-face ((t (:foreground nil))))
 '(all-the-icons-dsilver ((((background dark)) :foreground "#838484") (((background light)) :foreground "#838484")))
 '(all-the-icons-lsilver ((((background dark)) :foreground "#B9B6AA") (((background light)) :foreground "#7F7869")))
 '(all-the-icons-silver ((((background dark)) :foreground "#716E68") (((background light)) :foreground "#716E68")))
 '(aw-leading-char-face ((t (:inherit error :bold t :height 1.1))))
 '(aw-mode-line-face ((t (:inherit mode-line-emphasis :bold t))))
 '(dashboard-heading ((t (:inherit (font-lock-string-face bold)))))
 '(diff-hl-change ((t (:inherit (quote highlight)))))
 '(diff-hl-delete ((t (:inherit (quote error) :inverse-video t))))
 '(diff-hl-insert ((t (:inherit (quote success) :inverse-video t))))
 '(git-timemachine-minibuffer-author-face ((t (:inherit success))))
 '(git-timemachine-minibuffer-detail-face ((t (:inherit warning))))
 '(hl-todo ((t (:box t :inherit))))
 '(lsp-ui-doc-background ((t (:background nil))))
 '(lsp-ui-doc-header ((t (:inherit (font-lock-string-face italic)))))
 '(macrostep-expansion-highlight-face ((t (:background "#23272e"))))
 '(org-ellipsis ((((class color) (min-colors 89)) (:foreground "#e2c3e0"))))
 '(symbol-overlay-default-face ((t (:inherit (quote region)))))
 '(symbol-overlay-face-1 ((t (:inherit (quote highlight)))))
 '(symbol-overlay-face-2 ((t (:inherit (quote font-lock-builtin-face) :inverse-video t))))
 '(symbol-overlay-face-3 ((t (:inherit (quote warning) :inverse-video t))))
 '(symbol-overlay-face-4 ((t (:inherit (quote font-lock-constant-face) :inverse-video t))))
 '(symbol-overlay-face-5 ((t (:inherit (quote error) :inverse-video t))))
 '(symbol-overlay-face-6 ((t (:inherit (quote dired-mark) :inverse-video t :bold nil))))
 '(symbol-overlay-face-7 ((t (:inherit (quote success) :inverse-video t))))
 '(symbol-overlay-face-8 ((t (:inherit (quote dired-symlink) :inverse-video t :bold nil)))))

;;; custom.el ends here
