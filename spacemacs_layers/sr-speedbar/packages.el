;;; packages.el --- sr-speedbar Layer packages File for Spacemacs
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

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq sr-speedbar-packages
    '(
      ;; package names go here
      sr-speedbar
      ))

;; List of packages to exclude.
(setq sr-speedbar-excluded-packages '())

;; For each package, define a function sr-speedbar/init-<package-name>
;;
;; (defun sr-speedbar/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

(defun sr-speedbar/init-sr-speedbar()
  (use-package sr-speedbar
    :defer t
    :init
    (progn
      (global-set-key (kbd "s-s") 'sr-speedbar-toggle))))
