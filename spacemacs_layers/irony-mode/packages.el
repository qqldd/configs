;;; packages.el --- irony-mode Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq irony-mode-packages
  '(
    ;; package irony-modes go here
    irony
    company-irony
    flycheck-irony
    ))
(setq irony-mode-excluded-packages
  '(
    auto-complete-clang
    ))

;; For each package, define a function irony-mode/init-<package-irony-mode>
;;
;; (defun irony-mode/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

(defun irony-mode/init-irony ()
  (use-package irony
    :defer t
    :init
    (progn
      (add-hook 'c++-mode-hook 'irony-mode)
      (add-hook 'c-mode-hook 'irony-mode)
      (add-hook 'objc-mode-hook 'irony-mode)
      (add-hook 'irony-mode-hook
                (lambda ()
                  (define-key irony-mode-map [remap completion-at-point]
                    'irony-completion-at-point-async)
                  (define-key irony-mode-map [remap complete-symbol]
                    'irony-completion-at-point-async)))
      (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
      (spacemacs|diminish irony-mode "ⓘ" " I")
      )))

;; Hook company to irony-mode
(defun irony-mode/post-init-company()
  (spacemacs|add-company-hook c-mode-common))

;; Configure the packages
(when (configuration-layer/layer-usedp 'auto-completion)
  ;; Add the backend to the major-mode specific backend list
  (defun irony-mode/init-company-irony()
    (use-package company-irony
      :if (configuration-layer/package-usedp 'company)
      :defer t
      :init
      (progn
        (push 'company-irony company-backends-c-mode-common)
        (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
        (add-hook 'irony-mode-hook 'company-mode)))))

(defun irony-mode/init-flycheck-irony ()
  (use-package flycheck-irony
    :defer t                            ; fix this ???
    :init
    (progn
      (eval-after-load 'flycheck
        '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
      (add-hook 'irony-mode-hook 'flycheck-mode))
    )
)

