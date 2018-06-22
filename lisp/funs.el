
(defun set-font12 ()
  (interactive)
  (set-frame-font "-PfEd-DejaVuSansMono Nerd Font-normal-normal-normal-*-12-*-*-*-*-0-iso10646-1" nil t))


(defun set-font14 ()
  (interactive)
  (set-frame-font "-PfEd-DejaVuSansMono Nerd Font-normal-normal-normal-*-14-*-*-*-*-0-iso10646-1" nil t))

(defun revert-all-buffers ()
  "Refreshes all open buffers from their respective files."
  (interactive)
  (when (yes-or-no-p "Are you sure - any changes in open buffers will be lost! ")
  (dolist (buf (buffer-list))
    (with-current-buffer buf
      (when (and (buffer-file-name) (file-exists-p (buffer-file-name)) (not (buffer-modified-p)))
        (revert-buffer t t t) )))
  (message "Refreshed open files.") ))

(provide 'funs)
