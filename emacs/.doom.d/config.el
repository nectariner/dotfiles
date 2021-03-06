;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Fred Cook"
      user-mail-address "fredcook789@protonmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Neotree
;;(setq doom-themes-neotree-enable-file-icons t)
;;(setq doom-themes-neotree-file-icons t)

;; set word wrap
(+global-word-wrap-mode)

;;wakatime
;; also use 'sudo pip install wakatime'
(global-wakatime-mode)

;;Company - autocomplete
;; also use 'sudo pacman -S irony-mode'
(require 'company)
(setq company-idle-delay 0.1
      company-minimum-prefix-length 3)

;; https://stackoverflow.com/questions/1480572/how-to-have-emacs-auto-refresh-all-buffers-when-files-have-changed-on-disk
;; refresh files when they're changed externally
(global-auto-revert-mode t)

;; refresh neotree when it changes externally
;(setq doom-themes-neotree-file-icons t)
;(setq neo-buffer--refresh t)

(all-the-icons-dired-mode)

(treemacs-icons-dired-mode)
(setq treemacs-file-event-delay 1500)
(treemacs-git-mode 'deferred)
    (treemacs-filewatch-mode t)




;; set aggressive indent
;;(global-aggressive-indent-mode 1)
;; can disable it for one mode with
;; (add-to-list 'aggressive-indent-excluded-modes 'html-mode)

;;set eterm-256-color
(add-hook 'term-mode-hook #'eterm-256color-mode)

(defvar my-term-shell "/bin/zsh")
(defadvice ansi-term (before force-bash)
           (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(map! :leader
      :desc "Terminal"
      "o t" #'ansi-term)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode)))

(after! persp-mode
        (setq persp-emacsclient-init-frame-behaviour-override "main"))


(if (daemonp)
    (add-hook 'after-make-frame-functions
        (lambda (frame)
            (select-frame frame)
            (load-theme 'doom-one t)))
    (load-theme 'doom-one t))
