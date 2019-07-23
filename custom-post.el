(push "C:/Users/Fhoeben/elisp/" load-path)
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/"))
(add-hook 'go-mode-hook #'lsp)


;; transparency!
;;(set-frame-parameter (selected-frame) 'alpha '(97 . 97))
;;(add-to-list 'default-frame-alist '(alpha . (97 . 97)))

(require 'company)

(setq company-idle-delay 3
      company-minimum-prefix-length 2)

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
(setq default-directory "C:/Users/Fhoeben/Documents")
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

(use-package toml-mode)

(use-package rust-mode
  :hook (rust-mode . lsp))

;; Add keybindings for interacting with Cargo
(use-package cargo
  :hook (rust-mode . cargo-minor-mode))

(use-package flycheck-rust
  :config (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
(use-package lsp-mode
  :ensure t
  :config
  (setq lsp-enable-snippet 'nil)
  (setq lsp-print-io t)
  (setq lsp-rust-rls-command '("rls"))
  ;; (setq lsp-rust-rls-command '("rustup" "run" "nightly" "rls"))
  ;; (setq lsp-rust-rls-command '("rustup" "run" "nightly-2018-12-06" "rls"))
  (setenv "RUST_BACKTRACE" "full")
  (setenv "RUST_LOG" "rls::=debug")

  ;; Fix problem seems to be caused by upgrading lsp-mode package to v3.
  (unless (fboundp 'lsp-rust-enable)
    (defun diabolo-lsp-rust-window-progress (_workspace params)
      "Progress report handling.
PARAMS progress report notification data."
      ;; Minimal implementation - we could show the progress as well.
      (setq id (gethash "id" params))
      (setq title (gethash "title" params))
      (setq msg (gethash "message" params))
      (setq done (gethash "done" params))
      (message "RLS: %s%s%s"
               title
               (if msg (format " \"%s\"" msg) "")
               (if done " done" "")))

    (defun lsp-rust-enable ()
      (require 'lsp-clients)
      ;; We don't realy need lsp-rust-rls-command for now, but we will support it
      (when (boundp 'lsp-rust-rls-command)
        (lsp-register-client
         (make-lsp-client :new-connection (lsp-stdio-connection lsp-rust-rls-command)
                          :major-modes '(rust-mode)
                          :server-id 'rls
                          :notification-handlers (lsp-ht ("window/progress" 'diabolo-lsp-rust-window-progress)))))
      (lsp)))
  )

(require 'cc-mode)
(require 'lsp-java)
(setq lsp-java-workspace-dir (f-join lsp-java-test-root "workspace")
      lsp-java-pop-buffer-function 'pop-to-buffer
      lsp-print-io t
      lsp-inhibit-message nil
      lsp-java-workspace-cache-dir (f-join lsp-java-test-root "workspace-cache")
      lsp-java-server-install-dir '"C:/Users/Fhoeben/lsp/java/redhat.java-0.47.0/server/"
      lsp-response-timeout 30)
(when (file-exists-p lsp-java-test-root)
  (delete-directory lsp-java-test-root t))
(setq lsp--session (make-lsp-session))
(add-hook 'java-mode-hook #'lsp)
(condition-case nil
    (require 'use-package)
  (file-error
   (require 'package)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
   (package-initialize)
   (package-refresh-contents)
   (package-install 'use-package)
   (require 'use-package)))

(use-package projectile :ensure t)
;;(use-package yasnippet :ensure t)
(use-package lsp-mode :ensure t)
(use-package hydra :ensure t)
(use-package company-lsp :ensure t)
;;(use-package lsp-ui :ensure t)
(use-package lsp-java :ensure t :after lsp
  :config (add-hook 'java-mode-hook 'lsp))

(use-package dap-mode
  :ensure t :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))

(use-package dap-java :after (lsp-java))
