(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(tool-bar-mode -1)
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)


;; use-packages
(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package catppuccin-theme
  :ensure t
  :config
  (load-theme 'catppuccin :no-confirm)
  (setq catppuccin-flavor 'latte) ;; or 'latte, 'frappe, 'macchiato, or 'mocha
  (catppuccin-reload))

(use-package which-key
  :ensure t  
  :config
  (which-key-mode))

(use-package magit
  :ensure t)
