;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
(package! powershell)
(package! swoop)
(package! selectrum)
(package! selectrum-prescient)
(package! prescient)
(package! consult)
(package! marginalia)
(package! embark)
(package! wakib-keys)
;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)
(selectrum-mode +1)
;; to make sorting and filtering more intelligent
(selectrum-prescient-mode +1)

;; to save command history on disk, so the sorting gets more intelligent over time
(prescient-persist-mode +1)

(require 'wakib-keys)
(wakib-keys 1)

(use-package marginalia
  :ensure t
  :config
  (marginalia-mode))

(use-package embark
  :ensure t
  :bind
    ("C-S-a" . embark-act)               ; pick some comfortable binding
    :config
    ;; For Selectrum users:
    (defun current-candidate+category ()
      (when selectrum-active-p
        (cons (selectrum--get-meta 'category)
              (selectrum-get-current-candidate))))

    (add-hook 'embark-target-finders #'current-candidate+category)

    (defun current-candidates+category ()
      (when selectrum-active-p
        (cons (selectrum--get-meta 'category)
              (selectrum-get-current-candidates
              ;; Pass relative file names for dired.
              minibuffer-completing-file-name))))

    (add-hook 'embark-candidate-collectors #'current-candidates+category)

    ;; No unnecessary computation delay after injection.
    (add-hook 'embark-setup-hook 'selectrum-set-selected-candidate))
