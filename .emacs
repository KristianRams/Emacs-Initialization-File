;;Minor changes
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq make-backup-files nil)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

; Startup windowing
;;(setq next-line-add-newlines nil)
;;(setq-default truncate-lines t)
;;(setq truncate-partial-width-windows nil)
;;(split-window-horizontally)

(package-initialize)
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;;stop the auto-indentation please 
(electric-indent-mode 0)

(custom-theme-set-faces
 `tron
 `(default ((t (:background "#000000" :foreground "#6A8397" ))))
 `(cursor ((t (:background "#D7F0Ff"))))
 `(region ((t (:background "#3E5668"))))
 `(bold ((t (:weight normal :foreground "DarkGoldenrod2"))))
 `(fringe ((t (:background "#000000"))))
 `(mode-line ((t (:foreground "#CBECFF" :background "#3D5666"))))
 `(mode-line-inactive ((t (:foreground "#444444" :background "#1e1e1e"))))
 `(highlight ((t (:background "#262F36"))))
 `(ido-first-match ((t (:foreground "#D7F0Ff" :weight bold))))
 `(ido-only-match ((t (:foreground "#31C0C0"))))
 `(ido-subdir ((t (:foreground "#5DC4FF"))))
 `(isearch ((t (:background "#4D4FBB" :foreground "#fffafa"))))
 `(lazy-highlight ((t (:background "#659f93" :foreground "#fffafa"))))
 `(linum ((t (:background "#000000" :foreground "#36424C"))))
 `(nlinum-relative-current-face ((t (:inherit linum :background "#000000" :foreground "#c6c6c6" :weight normal))))
 `(font-lock-builtin-face ((t (:foreground "#5FC4FF"))))
 `(font-lock-doc-face ((t (:foreground "#828D9C" :italic t))))
 `(font-lock-comment-face ((t (
                               :foreground "#CBEBFF"
                               :background nil
                               :italic t))))
 `(font-lock-string-face ((t (:foreground "#387AAA"))))
 `(font-lock-variable-name-face ((t (:foreground "#9BBDD6"))))
 `(font-lock-function-name-face ((t (:foreground "#4BB5BE"))))
 `(font-lock-keyword-face ((t (:foreground "#5EC4FF"))))
 `(font-lock-negation-char-face ((t (:foreground "#5EC4FF"))))
 `(font-lock-preprocessor-face ((t (:foreground "#5EC4FF"))))
 `(font-lock-type-face ((t (:foreground"#DEB45B"))))

 `(font-lock-constant-face ((t (:foreground "#B62D66"))))
 `(minibuffer-prompt ((t (:foreground "#729fcf" ))))
 `(font-lock-warning-face ((t (:foreground "red" :bold t))))
 `(dashboard-banner-logo-title-face ((t (
                                         :inherit default
                                         :overline t
                                         :height 1.15
                                         :family "Monaco"))))
 `(dashboard-heading-face ((t (
                               :inherit default
                               :foreground "#CBEBFF"
                               :height 1.1))))
 `(org-block ((t (:background "#20282F" :foreground "#839DB2"))))
 `(org-document-title ((t (:height 2.0 :foreground "#9bbdd6"
                                   :family "Georgia"))))
 `(org-level-1 ((t (
                    :inherit outline-1
                    :weight bold
                    :foreground "#94DCFE"
                    :height 1.3))))
 `(org-level-2 ((t (
                    :inherit outline-2
                    :weight bold
                    :foreground "#80E3E2"
                    :height 1.1))))
 `(org-level-3 ((t (
                    :inherit outline-3
                    :weight bold
                    :foreground "#528BD1"
                    :height 1.1))))
 `(org-table ((t (:background "#002831" :foreground "#9bbdd6"))))

 `(rainbow-delimiters-depth-1-face ((t (:foreground "#80E3E2"))))
 `(rainbow-delimiters-depth-2-face ((t (:foreground "#6BB9FE"))))
 `(rainbow-delimiters-depth-3-face ((t (:foreground "#B5DEFF"))))
 `(rainbow-delimiters-depth-4-face ((t (:foreground "#80E3E2"))))
 `(rainbow-delimiters-depth-5-face ((t (:foreground "#6BB9FE"))))
 `(rainbow-delimiters-depth-6-face ((t (:foreground "#B5DEFF"))))
 `(rainbow-delimiters-depth-7-face ((t (:foreground "#80E3E2"))))
 `(rainbow-delimiters-depth-8-face ((t (:foreground "#6BB9FE"))))
 `(rainbow-delimiters-depth-9-face ((t (:foreground "#B5DEFF"))))

 )

(provide-theme 'tron)
;;; tron-theme.el ends here


;;delete a whole line
(global-set-key (kbd "C-d") 'kill-whole-line)

;;kill compilation 
(global-set-key (kbd "C-k") 'kill-compilation)

;; mass comment 
(global-set-key (kbd "C-x /") 'comment-region)

;; mass uncomment 
(global-set-key (kbd "C-x .") 'uncomment-region)

;; copy 
(global-set-key (kbd "C-c") 'kill-ring-save)
    
;;4 tabs 
(setq tab-width 4 indent-tabs-mode nil)

;;Show clock
(display-time)

;;No bell noises 
(setq ring-bell-function 'ignore)
 
; Smooth scroll
(setq scroll-step 3)

;;No headaches with mouse scrolling
(setq mouse-wheel-scroll-amount '(1))
(setq mouse-wheel-progressive-speed nil)
(toggle-scroll-bar -1)

;;Make side by side buffers function the same as the main window 
(setq truncate-partial-width-windows nil)

;;No welcome menu
(setq inhibit-startup-message t)

(mouse-wheel-mode t)

;;Undo-ing things 
(require 'undo-tree)
(global-undo-tree-mode)

;;Matching parenthesis 
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode t)

;;I hate typing yes and no
(fset 'yes-or-no-p 'y-or-n-p)

;;Show matching parens
(show-paren-mode 1)

;;Visual-line-mode 
(global-visual-line-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;
;; Python development ;;
;;;;;;;;;;;;;;;;;;;;;;;;
 (setenv "IPY_TEST_SIMPLE_PROMPT" "1")
(setq python-shell-interpreter "jupyter"
     python-shell-interpreter-args "console --simple-prompt")

(setq python-shell-completion-native-enable nil)


;;global-key-binds
(global-set-key (kbd "C-q") 'query-replace)
(global-set-key (kbd "C-x g") 'goto-line)

;;Some custom variables 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ob-ipython ipython-shell-send el-get ein python-cell pdf-tools org-pdfview 2048-game zenburn-theme rainbow-delimiters undo-tree ipython-send-shell python-mode ipython python))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
