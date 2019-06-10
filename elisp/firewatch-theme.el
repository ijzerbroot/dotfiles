;;; firewatch-theme.el --- an Emacs 24 theme based on Firewatch (tmTheme)
;;
;;; Author: Auto Converted to Emacs 24 by tmtheme-to-deftheme (tm2deftheme)
;;; Version: 1471518115
;;; Original author: Sebastian Szutro (https://github.com/SebastianSzturo/firewatch-syntax); paradox41 https://github.com/paradox41/firewatch-color-scheme
;;; Url: https://github.com/emacsfodder/tmtheme-to-deftheme
;;; Package-Requires: ((emacs "24.0"))
;;
;;; Commentary:
;;  This theme was automatically generated by tmtheme-to-deftheme (tm2deftheme),
;;  from Firewatch (tmTheme) by Stephen Jahl
;;
;;; Code:

(deftheme firewatch
  "firewatch-theme - Created by tmtheme-to-deftheme - 2016-08-18 07:01:55 -0400")

(custom-theme-set-variables
 'firewatch
)

(custom-theme-set-faces
 'firewatch
 ;; basic theming.

 '(default ((t (:foreground "#ABB2BF" :background "#282C34" ))))
 '(region  ((t (:background "#3E4451"))))
 '(cursor  ((t (:background "#528BFF"))))

 ;; Temporary defaults
 '(linum                               ((t (:foreground "#424750"  :background "#353942" ))))
 '(fringe                              ((t (                       :background "#353942" ))))

 '(minibuffer-prompt                   ((t (:foreground "#1278A8"  :background nil       :weight bold                                  ))))
 '(escape-glyph                        ((t (:foreground "orange"   :background nil                                                     ))))
 '(highlight                           ((t (:foreground "#abb2bf"   :background "#353942"                                                     ))))
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

 '(mode-line-inactive                  ((t (:foreground "#828ca0"  :background "#353942" :box nil :weight light :inherit (mode-line)   ))))
 '(mode-line                           ((t (:foreground "#abb2bf"  :background "#353942" :box nil ))))

 '(isearch                             ((t (:foreground "#99ccee"  :background "#444444"                                               ))))
 '(isearch-fail                        ((t (                       :background "#ffaaaa"                                               ))))
 '(lazy-highlight                      ((t (:foreground "444444"   :background "#eab700"                                               ))))
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


 '(font-lock-comment-face ((t (:foreground "#5C6370"  :italic t))))
 '(font-lock-type-face ((t (:foreground "#E5C07B"  ))))
 '(font-lock-string-face ((t (:foreground "#C8AE9D"  ))))
 '(diff-added ((t (:foreground "#C8AE9D"  ))))
 '(font-lock-keyword-face ((t (:foreground "#DD672C"  ))))
 '(diff-changed ((t (:foreground "#DD672C"  ))))
 '(js3-function-param-face ((t (:foreground "#ABB2BF"  ))))
 '(js2-function-param ((t (:foreground "#ABB2BF"  ))))
 '(font-lock-function-name-face ((t (:foreground "#EBEBFF"  ))))
 '(font-lock-constant-face ((t (:foreground "#D19A66"  ))))
 '(font-lock-variable-name-face ((t (:foreground "#E06C75"  ))))
 '(diff-removed ((t (:foreground "#E06C75"  ))))
 '(error ((t (:foreground "#FFFFFF"  ))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#5C6370"  :italic t))))

;; Rainbow delimiters
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#9b491f"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#aa5022"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#ba5725"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#c95f28"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#d5672f"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#d8733f"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#db7e4e"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#df895e"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#e2956d"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#FF0000"))))
) ;; End face definitions

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'firewatch)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; firewatch-theme.el ends here