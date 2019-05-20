  (push "C:\\Users\\Fhoeben\\elisp\\" load-path)

  (add-hook 'go-mode-hook #'lsp)

  (use-package lsp-mode
    :defer t
    :commands lsp-mode
    :init (setq lsp-before-save-edits t
                lsp-inhibit-message t))
  (use-package lsp-ui
    :commands lsp-ui-mode
    :hook (lsp-mode . lsp-ui-mode)
    :config (add-hook 'lsp-mode-hook 'lsp-ui-mode)
    (setq lsp-ui-doc-max-height 24
          lsp-ui-doc-max-width 50))
  (use-package company-lsp
    :hook (lsp-mode . company-mode)
    :init (setq company-lsp-cache-candidates 'auto
                company-lsp-enable-snippet t)
              )
(require 'company)
(setq company-idle-delay 5
      company-minimum-prefix-length 3)
(global-set-key "S-TAB" 'company-complete-common)

(add-hook 'go-mode-hook #'lsp)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(setq powerline-default-separator 'arrow)
(with-eval-after-load 'go-mode
  (require 'go-autocomplete)
  (auto-complete-mode 1))
;;  (beacon-mode 1)
(display-time-mode 1)
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(setq neo-theme 'nerd)
(setq neo-vc-integration '(face))
(setq neo-autorefresh t)
(setq auto-revert-check-vc-info t)
(setq auto-revert-interval 5)
(setq default-directory "C:\\Users\\Fhoeben\\Documents")
(setq-default line-height 0.80)
(setq auto-revert-check-vc-info t)

(defun my-disable-auto-revert-vc-in-tramp ()
  (when (and buffer-file-name (file-remote-p buffer-file-name))
    (setq-local auto-revert-check-vc-info nil)))

(add-hook 'find-file-hook #'my-disable-auto-revert-vc-in-tramp)
'(version-control :variables
                  version-control-diff-tool 'diff-hl)
'(version-control :variables
                  version-control-global-margin t)

;; key bindings
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key [f8] 'origami-toggle-node)
(global-set-key [f9] 'origami-toggle-all-nodes)
(global-set-key (kbd "C-\\") 'kill-buffer-and-window)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-f") 'search-forward)
(global-set-key (kbd "C-b") 'beginning-of-line)

(setq-default buffer-file-coding-system 'utf-8-unix)

(setq path-to-ctags "/usr/local/bin/ctags") ;; <- your ctags path here

(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (format "%s -f TAGS -e -R %s" path-to-ctags (directory-file-name dir-name)))
  )

;; Disable company mode on startup
(global-company-mode)
