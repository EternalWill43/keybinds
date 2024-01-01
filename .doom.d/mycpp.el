;;; cpp.el -*- lexical-binding: t; -*-

(defun save-and-format ()
  "Save the buffer and format it with clang-format."
  (interactive)
  (when (eq major-mode 'c++-mode)
  (clang-format-buffer)(save-buffer)))

(add-hook 'c++-mode-hook
          (lambda ()
            (evil-define-key 'normal c++-mode-map (kbd "C-s") #'save-and-format)
            (evil-define-key 'insert c++-mode-map (kbd "C-s") #'save-and-format)))
