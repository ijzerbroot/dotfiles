;;; two-firewatch-light-theme.el --- Theme

;; Copyright (C) 2016 , Debajit Adhikary

;; Author: Debajit Adhikary
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Created with ThemeCreator, https://github.com/mswift42/themecreator.


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;;; Code:

(deftheme two-firewatch-light)
(let ((class '((class color) (min-colors 89)))
      (violet-bright "#721cd4")
      (eggplant "#744c80")
      (red-bright "#fb4933")
      (dark-green "#007e33")
      (peacock-green "#43d08a")
      (seafoam-green2 "#b4ffc3")
      (seafoam-green "#c8ffe3")
      (pastel-yellow "#fdf4c1")

      (black-10 "#2d1f06")
      (brown-00 "#49330c")
      (brown-01 "#634105")
      (brown-10 "#89662c")              ; Duotone brown 1
      (brown-15 "#92723d")
      (brown-20 "#9c7e4e")
      (brown-25 "#a58b5f")
      (brown-30 "#b29566")              ; Duotone brown 2
      (brown-33 "#c49331")
      (brown-35 "#c0a386")
      (brown-40 "#b6ac9b")
      (brown-50 "#d1cec7")
      (pale-brown "#ece1cf")
      (blue-01 "#005486")               ; Duotone blue 1
      (blue-03 "#566e97")
      (blue-10 "#4280b8")
      (blue-15 "#7090ca")               ; Duotone blue 2
      (blue-20 "#8FC3F5")
      (blue-25 "#9bc4ed")
      (green-20 "#009c30")
      (green-50 "#97c378")
      (green-80 "#dce3d1")
      (red-10 "#ad3d3c")
      (red-30 "#cc4232")
      (red-40 "#e26776")
      (red-80 "#ffc9c9")
      (pale-orange-red "#fad3ca")
      (white-80 "#eae6e1")
      (white-99 "#faf8f5")
      (white-00 "#ffffff")

      (fg1 "#89662C")
      (fg2 "#92723d")
      (fg3 "#9c7e4e")
      (fg4 "#a58b5f")
      (fg5 "#aeb3b6")
      (fg6 "#d1cec7")
      (bg1 "#faf8f5")
      (bg2 "#e6e4e1")
      (bg3 "#d2d0ce")
      (bg4 "#bebcba")
      (bg5 "#f3efe8")

      (builtin "#B19465")
      (keyword "#2d1f06")
      (const   "#005486")
      (comment "#c0a386")
      (func    "#E26776")
      (str     "#005486")
      ;; (type    "#E26776")
      (type    "#4280b8")
      (var     "#7090CA")
      (warning "#009c30")
      (warning2 "#ff8800"))

  (custom-theme-set-faces
   'two-firewatch-light
   `(default ((,class (:background ,bg1 :foreground ,fg1))))
   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-negation-char-face ((,class (:foreground ,const))))
   `(font-lock-reference-face ((,class (:foreground ,const))))
   `(font-lock-constant-face ((,class (:foreground ,const))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,func ))))
   `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))

   ;; Strings
   `(font-lock-string-face ((,class (:foreground ,str :italic t))))

   `(font-lock-type-face ((,class (:foreground ,type ))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-warning-face ((,class (:foreground ,warning :background ,bg2))))

   ;; Selection
   `(region ((,class (:background ,eggplant :foreground ,white-00))))
   `(secondary-selection ((t (:background ,pale-brown))))

   `(highlight ((,class (:foreground ,fg3 :background ,bg3))))

   ;; Line numbers
   `(line-number ((,class (:background "#faf8f5" :foreground "#d1cec7"))))
   `(line-number-current-line ((,class (:background "#d1e1f9" :foreground "#7b8faf" :weight bold))))

   ;; Highlight current line
   `(hl-line ((,class (:background  ,bg5))))

   ;; Fringe (vertical line on left and right side of window)
   `(fringe ((,class (:background ,bg1 :foreground ,fg4))))

   ;; Cursor
   `(cursor ((,class (:background ,blue-10))))

   ;; Parentheses match
   `(show-paren-match-face ((,class (:background ,blue-25))))

   ;; Isearch (TODO: Reuse swiper faces)
   `(isearch ((,class (:bold nil :foreground ,white-00 :background ,red-30))))
   ;; (isearch                                   (:foreground gruvbox-black :background gruvbox-neutral_orange))
   ;; (lazy-highlight                            (:foreground gruvbox-black :background gruvbox-neutral_yellow))
   ;; (isearch-fail                              (:foreground gruvbox-light0 :background gruvbox-bright_red))

   ;; Headers
   `(header-line ((,class (:foreground ,pastel-yellow :background ,brown-00 :weight bold :box (:line-width 8 :color ,brown-00) :inherit nil))))

   ;; Company Mode
   `(company-tooltip ((t (:background ,pale-brown))))
   `(company-tooltip-common ((t (:background ,pale-brown))))

   ;; Swiper
   `(swiper-match-face-2 ((,class (:foreground ,pastel-yellow :background ,red-bright))))
   `(swiper-match-face-1 ((,class (:foreground ,black-10 :background ,peacock-green))))
   `(swiper-match-face-3 ((,class (:foreground ,pastel-yellow :background ,blue-01))))
   `(swiper-match-face-4 ((,class (:foreground ,pastel-yellow :background ,red-30))))
   `(swiper-line-face ((,class (:background ,green-80))))

   ;; Fill Column Indicator mode
   `(fci-rule-color ,bg2)
   ;; `(fci-rule-character-color ,fg6)

   ;; Highlights
   ;; `(hi-yellow ((t (:background ,"#dbff00"))))
   `(hi-yellow ((t (:background ,"#ebff00"))))
   `(hi-pink ((t (:background ,"#ffcfa3"))))
   ;; `(hi-pink ((t (:background ,"#cbdcff"))))

   ;; Iedit --- Edit multiple tokens
   `(iedit-occurrence ((,class (:foreground ,white-00 :background ,violet-bright))))

   ;; Ivy
   `(ivy-current-match ((,class (:background ,blue-10 :foreground ,white-00 :underline nil))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,red-bright :bold t))))
   `(ivy-minibuffer-match-face-1 ((,class (:foreground ,red-30 :bold t))))
   `(ivy-minibuffer-match-face-3 ((,class (:foreground ,blue-01 :bold t))))
   `(ivy-minibuffer-match-face-4 ((,class (:foreground ,green-20 :bold t))))

   ;; Linum mode
   `(linum ((t (:background ,bg5 :foreground ,fg6))))

   ;; Nxml mode
   `(nxml-element-local-name ((t (:foreground ,blue-10))))
   `(nxml-processing-instruction-target ((t (:foreground ,brown-35 :italic t))))
   `(nxml-processing-instruction-delimiter ((t (:foreground ,brown-35 :italic t))))
   `(nxml-tag-delimiter ((t (:foreground ,blue-25))))

   ;; Mode line
   `(mode-line ((,class (:box (:line-width 1 :color nil) :bold t :foreground ,keyword :background ,brown-40))))
   `(mode-line-inactive ((,class (:box (:line-width 1 :color nil :style pressed-button) :foreground ,keyword :background ,brown-50 :weight normal))))
   `(mode-line-buffer-id ((,class (:bold t :foreground ,keyword :background nil))))
   `(mode-line-highlight ((,class (:foreground ,keyword :box nil :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,fg1))))

   `(vertical-border ((,class (:foreground ,fg3))))
   ;; `(minibuffer-prompt ((,class (:bold t :foreground ,white-00 :background ,violet-bright))))
   ;; `(minibuffer-prompt ((,class (:bold t :foreground ,white-00 :background ,blue-01))))
   ;; `(minibuffer-prompt ((,class (:bold t :foreground ,red-40 :background ,white-99))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,blue-01 :background ,white-99))))
   ;; `(minibuffer-prompt ((,class (:bold t :foreground ,"#00601d" :background ,seafoam-green))))
   `(default-italic ((,class (:italic t))))
   `(link ((,class (:foreground ,const :underline t))))

   ;; CSS mode
   `(css-selector ((t (:foreground ,red-40))))


   ;; Markdown mode
   `(markdown-blockquote-face ((t (:foreground ,brown-10))))
   `(markdown-bold-face ((t (:foreground ,red-40 :bold t :italic nil))))
   `(markdown-header-delimiter-face ((,class (:foreground ,brown-50))))
   `(markdown-header-face-1 ((,class (:bold t :foreground ,blue-01 :height 2.4))))
   `(markdown-header-face-2 ((,class (:bold t :foreground ,blue-15 :height 1.8))))
   `(markdown-header-face-3 ((,class (:bold t :foreground ,brown-10 :height 1.5))))
   `(markdown-header-face-4 ((,class (:bold nil :foreground ,blue-01 :height 1.3))))
   `(markdown-italic-face ((t (:foreground ,red-bright :italic t))))
   `(markdown-link-face ((,class (:foreground ,blue-01 :italic nil))))
   `(markdown-markup-face ((,class (:foreground ,brown-50))))
   `(markdown-url-face ((,class (:foreground ,blue-15 :italic t))))

   ;; Multiple cursors
   `(mc/cursor-face ((t (:foreground ,pastel-yellow :background ,red-bright))))
   `(mc/region-face ((t (:foreground ,"white" :background ,"black"))))
   `(mc/cursor-bar-face ((t (:foreground ,pastel-yellow :background ,"black"))))

   ;; Neotree
   `(neo-dir-link-face ((,class (:foreground ,black-10))))
   `(neo-file-link-face ((,class (:foreground ,blue-01))))
   `(neo-root-dir-face ((,class (:foreground ,brown-10))))
   `(neo-header-face ((,class (:foreground ,comment))))

   ;; Treemacs
   `(treemacs-file-face ((,class (:foreground ,blue-01))))
   `(treemacs-directory-face ((,class (:foreground ,black-10))))
   `(treemacs-header-face ((,class (:foreground ,blue-01))))

   ;; Org mode
   `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
   `(org-agenda-date-today ((,class (:weight normal :foreground ,blue-01 :height 1.4 :italic nil))))
   `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
   `(org-agenda-done ((,class (:foreground ,bg4))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
   `(org-block ((,class (:foreground ,fg3))))
   `(org-code ((,class (:foreground ,fg2))))
   `(org-date ((,class (:underline t :foreground ,var) )))
   `(org-document-info-keyword ((,class (:foreground ,func))))
   `(org-document-title ((,class (:foreground ,blue-01 :bold t :height 2.4))))
   `(org-done ((,class (:box (:line-width 1 :color ,peacock-green) :bold t :foreground ,green-20 :background ,seafoam-green))))
   `(org-ellipsis ((,class (:foreground ,builtin))))
   `(org-footnote  ((,class (:underline t :foreground ,fg4))))
   `(org-formula  ((,class (:foreground ,red-30))))
   `(org-hide ((,class (:foreground ,fg4))))
   `(org-level-1 ((,class (:bold t :foreground ,blue-01 :height 1.5))))
   `(org-level-2 ((,class (:bold t :foreground ,blue-15 :height 1.5))))
   `(org-level-3 ((,class (:bold t :foreground ,brown-10 :height 1.5))))
   `(org-level-4 ((,class (:bold nil :foreground ,blue-01 :height 1.3))))
   `(org-level-5 ((,class (:bold nil :foreground ,black-10 :height 1.02))))
   `(org-link ((,class (:underline t :foreground ,type ))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-scheduled ((,class (:foreground ,type))))
   `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))
   `(org-special-keyword ((,class (:foreground ,func))))
   `(org-todo ((,class (:box (:line-width 1 :color ,brown-35) :foreground ,red-10 :bold t :background ,pale-brown))))
   `(org-verbatim ((,class (:foreground ,fg4))))
   `(org-verse ((,class (:inherit org-block :slant italic))))
   `(org-warning ((,class (:foreground ,red-10))))

   ;; RTF mode
   ;; `(rtf-loud-cword-face ((,class (:foreground ,blue-01 :bold t :background "#E5DCEB"))))
   `(rtf-loud-cword-face ((,class (:foreground ,black-10 :bold t :background ,blue-25))))

   ;; Smartparens
   `(sp-pair-overlay-face ((,class (:background ,green-80))))
   ;; (sp-show-pair-match-face                   (:background gruvbox-dark2)) ;; Pair tags highlight
   ;; (sp-show-pair-mismatch-face                (:background gruvbox-neutral_red)) ;; Highlight for bracket without pair
   ;;(sp-wrap-overlay-face                     (:inherit 'sp-wrap-overlay-face))
   ;;(sp-wrap-tag-overlay-face                 (:inherit 'sp-wrap-overlay-face))

   ;; whitespace-mode
   ;; `(whitespace-empty ((t (:background ,yellow-2))))
   ;; `(whitespace-hspace ((t (:foreground ,brown-4))))
   ;; `(whitespace-indentation ((t (:foreground ,brown-4))))
   `(whitespace-line ((t (:background ,white-99 :foreground ,brown-33))))
   ;; `(whitespace-newline ((t (:foreground ,brown-4))))
   ;; `(whitespace-space ((t (:foreground ,brown-4))))
   ;; `(whitespace-space-after-tab ((t (:foreground ,brown-4))))
   ;; `(whitespace-tab ((t (:foreground ,brown-4))))
   `(whitespace-trailing ((t (:background ,brown-33))))

   ;; Yard
   ;; TODO: extract constants
   `(yard-directive-face ((,class (:foreground ,"#789ec1" :italic t))))
   `(yard-name-face ((,class (:foreground ,"#44687d" :italic t :bold t))))
   `(yard-option-face ((,class (:foreground ,"#44687d" :italic t))))
   `(yard-tag-face ((,class (:foreground ,"#789ec1" :italic t))))
   `(yard-types-face ((,class (:foreground ,"#c25344" :italic t))))

   ;; Deft
   `(deft-header-face ((,class (:foreground ,blue-15 :bold t :height 2.4))))
   `(deft-title-face ((,class (:foreground ,blue-01))))

   ;; Diff.
   ;;
   ;; These foreground colors were generated using the Lab color space
   ;; to ensure the same level of lightness. (http://colorizer.org/)
   `(diff-added ((t (:foreground "#007e33" :background ,seafoam-green))))
   `(diff-removed ((t (:foreground "OrangeRed3" :background ,pale-orange-red))))

   ;; elfeed
   ;; TODO: complete this.
   `(elfeed-search-unread-title-face ((,class (:foreground ,blue-01 :bold t))))
   `(elfeed-search-title-face ((,class (:foreground ,brown-10))))
   `(elfeed-search-date-face ((,class (:foreground ,comment :underline nil))))
   ;; (elfeed-search-title-face                  (:foreground   ))
   ;; (elfeed-search-unread-title-face           (:foreground gruvbox-light0))
   ;; (elfeed-search-date-face                   (:inherit 'font-lock-builtin-face :underline t))
   ;; (elfeed-search-feed-face                   (:inherit 'font-lock-variable-name-face))
   ;; (elfeed-search-tag-face                    (:inherit 'font-lock-keyword-face))
   ;; (elfeed-search-last-update-face            (:inherit 'font-lock-comment-face))
   ;; (elfeed-search-unread-count-face           (:inherit 'font-lock-comment-face))
   ;; (elfeed-search-filter-face                 (:inherit 'font-lock-string-face))

   `(font-latex-bold-face ((,class (:foreground ,type))))
   `(font-latex-italic-face ((,class (:foreground ,var :italic t))))
   `(font-latex-string-face ((,class (:foreground ,str))))
   `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
   `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
   `(ido-only-match ((,class (:foreground ,warning))))
   `(org-sexp-date ((,class (:foreground ,fg4))))
   `(ido-first-match ((,class (:foreground ,keyword :bold t))))
   `(gnus-header-content ((,class (:foreground ,keyword))))
   `(gnus-header-from ((,class (:foreground ,var))))
   `(gnus-header-name ((,class (:foreground ,type))))
   `(gnus-header-subject ((,class (:foreground ,func :bold t))))
   `(mu4e-view-url-number-face ((,class (:foreground ,type))))
   `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
   `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
   `(mu4e-header-marks-face ((,class (:foreground ,type))))
   `(ffap ((,class (:foreground ,fg4))))
   `(js2-private-function-call ((,class (:foreground ,const))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,var))))
   `(js2-external-variable ((,class (:foreground ,type  ))))
   `(js2-function-param ((,class (:foreground ,const))))
   `(js2-jsdoc-value ((,class (:foreground ,str))))
   `(js2-private-member ((,class (:foreground ,fg3))))
   `(js3-warning-face ((,class (:underline ,keyword))))
   `(js3-error-face ((,class (:underline ,warning))))
   `(js3-external-variable-face ((,class (:foreground ,var))))
   `(js3-function-param-face ((,class (:foreground ,fg2))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
   `(js3-instance-member-face ((,class (:foreground ,const))))
   `(warning ((,class (:foreground ,warning))))
   `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
   `(info-quoted-name ((,class (:foreground ,builtin))))
   `(info-string ((,class (:foreground ,str))))
   `(icompletep-determined ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
   `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
   `(slime-repl-inputed-output-face ((,class (:foreground ,type))))
   `(trailing-whitespace ((,class :foreground nil :background ,warning)))

   `(rainbow-delimiters-depth-1-face ((,class :foreground ,fg1)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,fg1)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))

   `(magit-branch ((,class (:foreground ,const :weight bold))))
   `(magit-commit ((,class (:foreground ,white-00 :background ,black-10 :weight bold))))
   `(magit-branch-current ((,class (:foreground ,dark-green :background ,seafoam-green2 :weight bold))))
   `(magit-branch-local ((,class (:foreground ,green-20 :background ,seafoam-green :weight bold))))
   `(magit-branch-remote ((,class (:foreground ,red-40 :background ,pale-orange-red :weight bold))))
   `(magit-diff-added ((,class (:foreground ,dark-green :background ,seafoam-green))))
   `(magit-diff-added-highlight ((,class (:background ,seafoam-green :foreground ,dark-green))))
   `(magit-diff-context ((,class (:background ,bg1 :foreground ,fg3))))
   `(magit-diff-context-highlight ((,class (:background ,bg1 :foreground ,fg3))))
   `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
   `(magit-diff-file-heading ((,class (:foreground ,white-00 :background ,blue-01))))
   `(magit-diff-file-heading-highlight ((,class (:foreground ,white-00 :background ,blue-01))))
   `(magit-diff-hunk-heading ((,class (:foreground ,blue-01 :background ,white-99 :weight bold))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,blue-01 :background ,white-99 :weight bold))))
   `(magit-diff-removed ((,class (:background ,pale-orange-red :foreground ,"OrangeRed3"))))
   `(magit-diff-removed-highlight ((,class (:background ,pale-orange-red :foreground ,"OrangeRed3"))))
   `(magit-diffstat-added   ((,class (:foreground ,type))))
   `(magit-diffstat-removed ((,class (:foreground ,var))))
   `(magit-hash ((,class (:foreground ,brown-40))))
   `(magit-hunk-heading           ((,class (:background ,bg3))))
   `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
   `(magit-item-highlight ((,class :background ,bg3)))
   `(magit-log-author ((,class (:foreground ,fg3))))
   `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
   `(magit-process-ok ((,class (:foreground ,func :weight bold))))
   `(magit-section-heading ((,class (:foreground ,blue-01 :background ,bg1 :weight bold :family "Verlag" :height 1.5 :inherit nil))))
   `(magit-section-highlight      ((,class (:background ,white-80))))
   `(magit-section-secondary-heading ((,class (:foreground ,red-10 :weight bold))))
   `(magit-header-line ((,class (:family "Verlag" :height 1.5))))

   `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))

   `(term ((,class (:foreground ,fg1 :background ,bg1))))
   `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))
   `(term-color-blue ((,class (:foreground ,func :background ,func))))
   `(term-color-red ((,class (:foreground ,keyword :background ,bg3))))
   `(term-color-green ((,class (:foreground ,type :background ,bg3))))
   `(term-color-yellow ((,class (:foreground ,var :background ,var))))
   `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))
   `(term-color-cyan ((,class (:foreground ,str :background ,str))))
   `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))

   `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))

   ;; Helm
   `(helm-match ((,class (:foreground ,black-10 :background ,red-80))))
   `(helm-header ((,class (:foreground ,fg2 :background ,bg1 :underline nil :box nil))))
   `(helm-source-header ((,class (:foreground ,blue-01 :underline nil :weight bold :height 1.5))))
   `(helm-selection ((,class (:background ,blue-10 :underline nil))))
   `(helm-selection-line ((,class (:background ,bg2))))
   `(helm-visible-mark ((,class (:foreground ,bg1 :background ,bg3))))
   `(helm-candidate-number ((,class (:foreground ,bg1 :background ,fg1))))
   `(helm-separator ((,class (:foreground ,type :background ,bg1))))
   `(helm-time-zone-current ((,class (:foreground ,builtin :background ,bg1))))
   `(helm-time-zone-home ((,class (:foreground ,type :background ,bg1))))
   `(helm-buffer-not-saved ((,class (:foreground ,type :background ,bg1))))
   `(helm-buffer-process ((,class (:foreground ,builtin :background ,bg1))))
   `(helm-buffer-saved-out ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-buffer-size ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-ff-directory ((,class (:foreground ,func :background ,bg1 :weight bold))))
   `(helm-ff-file ((,class (:foreground ,fg1 :background ,bg1 :weight normal))))
   `(helm-ff-executable ((,class (:foreground ,var :background ,bg1 :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,warning2 :background ,bg1 :weight bold))))
   `(helm-ff-symlink ((,class (:foreground ,keyword :background ,bg1 :weight bold))))
   `(helm-ff-prefix ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
   `(helm-grep-cmd-line ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-grep-file ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-grep-finish ((,class (:foreground ,fg2 :background ,bg1))))
   `(helm-grep-lineno ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,func :background ,bg1))))
   `(helm-moccur-buffer ((,class (:foreground ,func :background ,bg1))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
   `(helm-bookmark-w3m ((,class (:foreground ,type))))
   `(helm-action ((t (:foreground ,brown-10))))

   ;; Helm Git
   `(helm-ls-git-modified-not-staged-face ((t (:foreground ,warning2))))
   `(helm-ls-git-added-copied-face ((t (:foreground ,dark-green))))

   ;; hl-todo mode
   `(hl-todo ((t (:background ,red-bright :foreground ,pastel-yellow :bold nil))))

   `(company-echo-common ((,class (:foreground ,bg1 :background ,fg1))))
   `(company-preview ((,class (:background ,bg1 :foreground ,var))))
   `(company-preview-common ((,class (:foreground ,bg2 :foreground ,fg3))))
   `(company-preview-search ((,class (:foreground ,type :background ,bg1))))
   `(company-scrollbar-bg ((,class (:background ,bg3))))
   `(company-scrollbar-fg ((,class (:foreground ,keyword))))
   `(company-tooltip ((,class (:foreground ,fg2 :background ,bg1 :bold t))))
   `(company-tooltop-annotation ((,class (:foreground ,const))))
   `(company-tooltip-common ((,class ( :foreground ,fg3))))
   `(company-tooltip-common-selection ((,class (:foreground ,str))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,bg3 :foreground ,fg3))))
   `(company-template-field ((,class (:inherit region))))

   ;; Shell script mode
   `(sh-quoted-exec ((t (:foreground ,eggplant :background "#E5DCEB" :bold nil))))

   ;; Web mode
   `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-current-element-highlight-face ((,t (:background ,blue-20 :foreground ,black-10 :bold t))))
   `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-html-attr-equal-face ((,class (:foreground ,brown-40))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,brown-15))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,eggplant :italic t))))
   `(web-mode-html-tag-bracket-face ((t (:foreground ,blue-25))))
   `(web-mode-html-tag-face ((,class (:foreground ,blue-10))))
   `(web-mode-keyword-face ((,class (:foreground ,keyword))))
   `(web-mode-string-face ((,class (:foreground ,str))))
   `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))

   `(jde-java-font-lock-package-face ((t (:foreground ,var))))
   `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
   `(jde-java-font-lock-modifier-face ((t (:foreground ,fg2))))
   `(jde-jave-font-lock-protected-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-number-face ((t (:foreground ,var))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'two-firewatch-light)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; two-firewatch-light-theme.el ends here
