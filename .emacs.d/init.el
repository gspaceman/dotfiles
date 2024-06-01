;;ADD MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;;END ADD MELPA
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(package-selected-packages '(dashboard all-the-icons projectile page-break-lines)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;ENABLE PROJECTILE
(projectile-mode +1)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;;END ENABLE PROJECTILE
;;ENABLE ALL-THE-ICONS
(when (display-graphic-p)
  (require 'all-the-icons))
;;END ENABLE ALL-THE-ICONS
;;ENABLE DASHBOARD
(require 'dashboard)
(dashboard-setup-startup-hook)
;;END ENABLE DASHBOARD
;;KING TERRY MODE
(setq dashboard-startup-banner "~/.emacs.d/wall/kingTerry.png")
;;END KING TERRY MODE
;;DISABLE BACKGROUND IN CLI
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)
;;END DISABLE BACKGROUND IN CLI
;;CENTER DASHBOARD
(setq dashboard-center-content t)
;;END CENTER DASHBOARD
;;ADD ICONS
(setq dashboard-icon-type 'all-the-icons)  ; use `all-the-icons' package
(setq dashboard-set-file-icons t)
;;END ADD ICONS
;;SET FONT SIZE
(set-face-attribute 'default nil :height 160)
;;END SET FONT SIZE
;;REMOVE TOOL, MENU AND SCROLL BAR
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
;;END REMOVE TOOL, MENU AND SCROLL BAR
