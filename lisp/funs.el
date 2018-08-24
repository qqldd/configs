
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

(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))

(define-key ctl-x-4-map "t" 'toggle-window-split)
