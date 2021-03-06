;;; ayu-theme.el --- an Emacs 24 theme based on ayu (tmTheme)
;;
;;; Author: Auto Converted to Emacs 24 by tmtheme-to-deftheme (tm2deftheme)
;;; Version: 1533971289
;;; Original author: Ike Ku
;;; Url: https://github.com/emacsfodder/tmtheme-to-deftheme
;;; Package-Requires: ((emacs "24.0"))
;;
;;; Commentary:
;;  This theme was automatically generated by tmtheme-to-deftheme (tm2deftheme),
;;  from ayu (tmTheme) by Ike Ku
;;
;;; Code:

(deftheme ayu_light
  "ayu_light-theme - Created by tmtheme-to-deftheme - 2018-08-11 09:08:09 +0200")

(custom-theme-set-variables
 'ayu_light
)

(custom-theme-set-faces
 'ayu_light
 ;; basic theming.

 '(default ((t (:foreground "#61676C" :background "#FAFAFA" ))))
 '(region  ((t (:background "#E9F2F8"))))
 '(cursor  ((t (:background "#FF8F40"))))

 ;; Temporary defaults
 '(linum                               ((t (:foreground "#c0c3c6"  :background "#afafaf" ))))
 '(fringe                              ((t (                       :background "#afafaf" ))))

 '(minibuffer-prompt                   ((t (:foreground "#1278A8"  :background nil       :weight bold                                  ))))
 '(escape-glyph                        ((t (:foreground "orange"   :background nil                                                     ))))
 '(highlight                           ((t (:foreground "orange"   :background nil                                                     ))))
 '(shadow                              ((t (:foreground "#777777"  :background nil                                                     ))))

 '(trailing-whitespace                 ((t (:foreground "#FFFFFF"  :background "#C74000"                                               ))))
 '(link                                ((t (:foreground "#00b7f0"  :background nil       :underline t                                  ))))
 '(link-visited                        ((t (:foreground "#4488cc"                        :underline t :inherit (link)                  ))))
 '(button                              ((t (:foreground "#FFFFFF"  :background "#444444" :underline t :inherit (link)                  ))))
 '(next-error                          ((t (                                             :inherit (region)                             ))))
 '(query-replace                       ((t (                                             :inherit (isearch)                            ))))
 '(header-line                         ((t (:foreground "#EEEEEE"  :background "#444444" :box nil :inherit (mode-line)                 ))))

 '(mode-line-highlight                 ((t (                                             :box nil                                      ))))
 '(mode-line-emphasis                  ((t (                                             :weight bold                                  ))))
 '(mode-line-buffer-id                 ((t (                                             :box nil :weight bold                         ))))

 '(mode-line-inactive                  ((t (:foreground "#61676c"  :background "#e1e1e1" :box nil :weight light :inherit (mode-line)   ))))
 '(mode-line                           ((t (:foreground "#61676c"  :background "#c8c8c8" :box nil ))))

 '(isearch                             ((t (:foreground "#99ccee"  :background "#444444"                                               ))))
 '(isearch-fail                        ((t (                       :background "#ffaaaa"                                               ))))
 '(lazy-highlight                      ((t (                       :background "#77bbdd"                                               ))))
 '(match                               ((t (                       :background "#3388cc"                                               ))))

 '(tooltip                             ((t (:foreground "black"    :background "LightYellow" :inherit (variable-pitch)                 ))))

 '(js3-function-param-face             ((t (:foreground "#BFC3A9"                                                                      ))))
 '(js3-external-variable-face          ((t (:foreground "#F0B090"  :bold t                                                             ))))

 '(secondary-selection                 ((t (                       :background "#342858"                                               ))))
 '(cua-rectangle                       ((t (:foreground "#E0E4CC"  :background "#342858" ))))

 ;; Magit hightlight
 '(magit-item-highlight                ((t (:foreground "white" :background "#1278A8" :inherit nil ))))

 ;; flyspell-mode
 '(flyspell-incorrect                  ((t (:underline "#AA0000" :background nil :inherit nil ))))
 '(flyspell-duplicate                  ((t (:underline "#009945" :background nil :inherit nil ))))

 ;; flymake-mode
 '(flymake-errline                     ((t (:underline "#AA0000" :background nil :inherit nil ))))
 '(flymake-warnline                    ((t (:underline "#009945" :background nil :inherit nil ))))

 ;;git-gutter
 '(git-gutter:added                    ((t (:foreground "#609f60" :bold t))))
 '(git-gutter:modified                 ((t (:foreground "#3388cc" :bold t))))
 '(git-gutter:deleted                  ((t (:foreground "#cc3333" :bold t))))

 '(diff-added                          ((t (:background "#305030"))))
 '(diff-removed                        ((t (:background "#903010"))))
 '(diff-file-header                    ((t (:background "#362145"))))
 '(diff-context                        ((t (:foreground "#E0E4CC"))))
 '(diff-changed                        ((t (:foreground "#3388cc"))))
 '(diff-hunk-header                    ((t (:background "#242130"))))


 '(font-lock-comment-face ((t (:foreground "#ABB0B6"  :italic t))))
 '(font-lock-variable-name-face ((t (:foreground "#61676C"  ))))
 '(font-lock-string-face ((t (:foreground "#86B300"  ))))
 '(font-lock-builtin-face ((t (:foreground "#FF8F40"  ))))
 '(font-lock-function-name-face ((t (:foreground "#F29718"  ))))
 '(js3-function-param-face ((t (:foreground "#FF8F40"  ))))
 '(js2-function-param ((t (:foreground "#FF8F40"  ))))
 '(font-lock-warning-face ((t (:foreground "#FFFFFF" :background "#FA6E32" ))))
 '(diff-added ((t (:foreground "#86B300"  ))))
 '(diff-changed ((t (:foreground "#55B4D4"  ))))
 '(diff-removed ((t (:foreground "#F07171"  ))))
 '(git-gutter:added ((t (:foreground "#86B300"  ))))
 '(git-gutter:modified ((t (:foreground "#55B4D4"  ))))
 '(git-gutter:deleted ((t (:foreground "#F51818"  ))))
 '(git-gutter:untracked ((t (:foreground "#DEE0E1"  ))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#ABB0B6"  :italic t))))

;; Rainbow delimiters
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#ac1111"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#bd1313"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#ce1514"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#df1716"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#e9201f"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#eb3130"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#ec4242"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#ee5353"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#f06464"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#FF0000"))))
) ;; End face definitions

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'ayu_light)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; ayu_light-theme.el ends here
