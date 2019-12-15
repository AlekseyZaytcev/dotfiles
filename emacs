(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages
   (quote
    (solarized-theme rspec-mode flycheck exec-path-from-shell enh-ruby-mode magit robe auto-complete helm-projectile projectile helm-ag helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Disable menu-bar, tool-bar, scroll-bar
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; Use Solarized color scheme
(load-theme 'solarized-dark t)

;; Set font
(set-face-attribute 'default nil :font "Iosevka 13" )
(set-frame-font "Iosevka 13" nil t)

;; Enable line numbers
(global-display-line-numbers-mode 1)

;; Helm with Projectile
(helm-mode 1)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(projectile-mode +1)
(global-set-key (kbd "s-f") #'helm-projectile-ag)

(ac-config-default)
 (add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)

;; Initialize emacs shell with system variables
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Enable Flycheck - linters for different languages.
;; Rubocop setup is a shell script in /usr/local/bin/rubocop.
;; It contains >>> bundle exec rubocop "$@" <<<
(add-hook 'ruby-mode-hook #'global-flycheck-mode)

;; Enable binding.pry in rspec-mode. Need to cast C-x C-q
(add-hook 'ruby-mode-hook 'inf-ruby-switch-setup)

;; Trim traling whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)
