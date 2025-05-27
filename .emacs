;; Our Custom Variable
(setq custom-tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
(setq backward-delete-char-untabify-method 'hungry)

(defun disable-tabs () (setq indent-tabs-mode nil))
(defun enable-tabs  ()
;;  (local-set-key (kbd "TAB") 'tab-to-tab-stop)
  (setq indent-tabs-mode t)
  (setq tab-width custom-tab-width))

(add-hook 'prog-mode-hook 'enable-tabs)

;; WARNING: This will change your life
;; (OPTIONAL) Visualize tabs as a pipe character - "|"
;; This will also show trailing characters as they are useful to spot.
;; (setq whitespace-style '(face tabs tab-mark trailing))
(setq whitespace-style '(face tabs tab-mark))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-tab ((t (:foreground "#777777")))))
(setq whitespace-display-mappings '((tab-mark 9 [124 9] [92 9])))
(global-whitespace-mode) ; Enable whitespace mode everywhere

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(ansi-color-faces-vector
 ;;   [default default default italic underline success warning error])
 ;; '(ansi-color-names-vector
 ;;   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(tango-dark))
 '(ispell-dictionary nil)
 '(menu-bar-mode nil)
 '(show-paren-mode t))

(set-face-foreground 'mode-line "#EEEEEE")
(set-face-foreground 'mode-line-inactive "#BBBBBB")
(set-face-background 'mode-line "undefined")
(set-face-background 'mode-line-inactive "undefined")

(set-face-background 'default "undefined")

;;(set-frame-parameter nil 'alpha-background 70)
;;(add-to-list 'default-frame-alist '(alpha-background . 70))

;;(set-frame-parameter (selected-frame) 'alpha '(70 70))
;;(add-to-list 'default-frame-alist '(alpha 70 70))

;;(add-to-list 'default-frame-alist '(foreground-color . "#FFFFFF"))
;;(add-to-list 'default-frame-alist '(background-color . "#000000"))
