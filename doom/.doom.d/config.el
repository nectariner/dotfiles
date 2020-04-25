;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Fred Cook"
    user-mail-address "fredcook789@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `setqdoom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;;(setq doom-font (font-spec :name "Noto Sans Mono":size 13))
(setq doom-font (font-spec :name "DroidSansMono Nerd Font Mono":size 17))
;;( doom-font (font-spec:name "Source Code Pro medium" : size 11))
;;(setq doom-font (font-spec :family "Fira Mono" :size 12))
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq doom-theme 'doom-one)
;;(setq doom-theme 'atom-one-dark)

;;(setq doom-theme 'dracula)
(setq doom-theme 'doom-dracula)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

;;Keybinds
(global-set-key (kbd "TAB") 'doom/dumb-indent)
;;(map! :g (kbd "TAB") 'doom/dumb-indent)

;;Language specific things
;;All
(setq-default c-basic-offset 4)
(setq tab-width 4)
(setq-default tab-width 4)
(doom/set-indent-width 4)
(setq-default tab-always-indent t)
;; C/C++



(global-wakatime-mode)


;;neotree icons
(setq doom-themes-neotree-enable-file-icons t)
(setq doom-themes-neotree-file-icons t)

;;prettier
(require 'prettier-js)
(add-hook 'js2-mode-hook 'prettier-js-mode)
(setq prettier-js-args '(
{
  "arrowParens": "always",
  "bracketSpacing": true,
  "htmlWhitespaceSensitivity": "css",
  "insertPragma": false,
  "jsxBracketSameLine": false,
  "jsxSingleQuote": false,
  "printWidth": 96,
  "proseWrap": "preserve",
  "quoteProps": "as-needed",
  "requirePragma": false,
  "semi": true,
  "singleQuote": false,
  "tabWidth": 4,
  "trailingComma": "es5",
  "useTabs": false,
  "vueIndentScriptAndStyle": false
}
))

