;;; packages.el --- csv Layer packages File for Spacemacs
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

(defvar csv-packages
  '(
    ;; package csvs go here
    csv-mode
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar csv-excluded-packages '()
  "List of packages to exclude.")

;; For each package, define a function csv/init-<package-csv>
;;
;; (defun csv/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

(defun csv/init-csv-mode ()
  (use-package csv-mode
    :defer t
    :config
    (progn
      (evil-leader/set-key-for-mode 'csv-mode
        "mt"  'csv-transpose
        "ma"  'csv-align-fields
        "mu"  'csv-unalign-fields
        "msf" 'csv-sort-fields
        "msn" 'csv-sort-numeric-fields
        "mso" 'csv-toggle-descending
        "mn"  'csv-forward-field
        "mp"  'csv-backward-field
        "mr"  'csv-reverse-region
        "md"  'csv-kill-fields
        "mi"  'csv-toggle-invisibility
        "mvf" 'csv-yank-fields
        "mvt" 'csv-yank-as-new-table))))


