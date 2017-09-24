;;; Package ---  Summary:
;;; Commentary:
;;; Code:
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-linum-mode t)
(global-hl-line-mode 1)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'package) ;; You mighxst already have this line
(package-initialize)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(require 'helm-config)
(helm-mode 1)
(elpy-enable)
(require 'graphene)
(rainbow-mode 1)
(require 'indent-guide)
(require 'flymake-python-pyflakes)


;; kbd for yasnippet
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "<C-tab>") 'yas-expand)

;; Ace-window
(global-set-key (kbd "C-x w") 'ace-window)

;; hs-minor mode for python
(add-hook 'python-mode-hook 'hs-minor-mode)

(defun toggle-hiding (column)
  (interactive "P")
  (if hs-minor-mode
      (if (condition-case nil
              (hs-toggle-hiding)
            (error t))
          (hs-show-all))
    (toggle-selective-display column)))
(global-set-key (kbd "C-a") 'toggle-hiding)


;; py-autopep8
(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
(setq py-autopep8-options '("--max-line-length=94"))


;; Flymake-Lua
(require 'flymake-lua)
(add-hook 'lua-mode-hook 'flymake-lua-load)

;; Smooth-scrolling
(require 'smooth-scrolling)
(smooth-scrolling-mode t)

;; Ace Jump Mode
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; exec-path-from-shell
(require 'exec-path-from-shell)
(exec-path-from-shell-copy-env "SSH_AGENT_PID")
(exec-path-from-shell-copy-env "SSH_AUTH_SOCK")

;; Comment-dwin-2
(global-set-key (kbd "M-;") 'comment-dwim-2)

;; Tramp verbose

;; Ace zap mode
(define-key global-map (kbd "C-c  z") 'ace-jump-zap-to-char)


(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "251348dcb797a6ea63bbfe3be4951728e085ac08eee83def071e4d2e3211acc3" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "756ec68798410a2e705dd719c7328af9ecbb782c94130d489b6b3109841833eb" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "73a13a70fd111a6cd47f3d4be2260b1e4b717dbf635a9caee6442c949fad41cd" "9b1c580339183a8661a84f5864a6c363260c80136bd20ac9f00d7e1d662e936a" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#ff7f00")
     (60 . "#ffbf00")
     (80 . "#b58900")
     (100 . "#ffff00")
     (120 . "#ffff00")
     (140 . "#ffff00")
     (160 . "#ffff00")
     (180 . "#859900")
     (200 . "#aaff55")
     (220 . "#7fff7f")
     (240 . "#55ffaa")
     (260 . "#2affd4")
     (280 . "#2aa198")
     (300 . "#00ffff")
     (320 . "#00ffff")
     (340 . "#00ffff")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; AucTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)

(setq-default TeX-master nil) ; Query for master file.

(setq-default TeX-engine 'xelatex)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook #'outline-minor-mode)
(setq reftex-plug-into-AUCTeX t)
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
(add-hook 'LaTeX-mode-hook (lambda () (abbrev-mode +1)))
;;(setq TeX-PDF-mode t)

;; Use Skim as viewer, enable source <-> PDF sync
;; make latexmk available via C-c C-c
;; Note: SyncTeX is setup via ~/.latexmkrc (see below)
;;(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk")))
(add-hook 'LaTeX-mode-hook (lambda ()
                                (push
                                 '("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
                                   :help "Run latexmk on file")
                                 TeX-command-list)))

(provide 'init)
;;; init.el ends here
