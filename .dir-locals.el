((nil . ((eval . (progn
                   (setq-local
                    projectile-project-run-cmd
                    (expand-file-name "~/r/asset/root/home/mainu/trans.py")

                    projectile-project-run-cmd-1
                    (lambda ()
                      (let ((compilation-always-kill t)
                            (compilation-read-command nil))
                        (compile "ls -la" t)))

                    projectile-project-run-cmd-2
                    (lambda ()
                      (let ((buffer-name "*vterm--r--ls*")
                            (pre-current-window (selected-window)))
                        (if (not (get-buffer buffer-name))
                            (progn
                              (switch-to-buffer (get-buffer-create buffer-name))
                              (vterm-mode)))
                        (pop-to-buffer buffer-name)
                        (vterm-send-key (kbd "C-c"))
                        ;; error send ls while send C-c
                        (vterm-send-key (kbd "SPC"))
                        ;; create nh-vterm-send-string
                        ;; activate first
                        (vterm-send-string "pianoplayer\n")
                        ;; (vterm-send-string "python setup.py sdist bdist_wheel")
                        (select-window pre-current-window)))

                    projectile-project-run-cmd-3
                    (lambda ()
                      (let ((buffer-name "*vterm--r--ls*")
                            (pre-current-window (selected-window)))
                        (if (not (get-buffer buffer-name))
                            (progn
                              (switch-to-buffer (get-buffer-create buffer-name))
                              (vterm-mode)))
                        (pop-to-buffer buffer-name t t)
                        (vterm-send-key (kbd "C-c"))
                        ;; error send ls while send C-c
                        (vterm-send-key (kbd "SPC"))
                        ;; create nh-vterm-send-string
                        ;; activate first
                        (vterm-send-string "pip install --upgrade --no-deps .\n")
                        ;; (vterm-send-string "python setup.py sdist bdist_wheel")
                        (select-window pre-current-window))))))
         (lsp-file-watch-ignored-directories . "~/all-emacs/spacemacs1/.emacs.d"))))
