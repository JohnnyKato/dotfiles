;; basic config
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(indent-tabs-mode -1)
(ido-mode 1)
(ido-everywhere 1)
(setq history-length 25)
(savehist-mode 1)
(electric-pair-mode 1)

;; custom file
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'noerror 'nomessage)

;; var
(setq make-backup-files nil)
(setq tab-width 4)
(setq c-basic-offset 4)

;; set font
(add-to-list 'default-frame-alist '(font . "JetBrains Mono NL-12"))

;; maximize on startup
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; disable startup screen
(setq inhibit-startup-message t
      initial-scratch-message "")
(setq visible-bell t)

;; add melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; plugins
(require 'use-package)
(use-package doom-themes
  :ensure t
  :custom
  (doom-themes-enable-bold)
  (doom-themes-enable-italic)
  :config
  (load-theme 'doom-tomorrow-night t))

(use-package ido-completing-read+
  :ensure t
  :config
  (ido-ubiquitous-mode t)
  (setq ido-enable-flex-matching t))

;; (use-package eglot-booster
;;   :after eglot
;;   :config (eglot-booster-mode))

;; (use-package corfu
;;   :ensure t
;;   :config
;;   (global-corfu-mode)
;;   (setq corfu-auto t
;; 	corfu-auto-delay 0))

;; keymaps
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-x c") 'compile)
(global-set-key (kbd "C-;") 'comment-line)
(global-set-key (kbd "C-,") 'duplicate-line)
