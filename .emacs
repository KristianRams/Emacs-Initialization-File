;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; minor changes
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq make-backup-files nil)
(setq split-width-threshold nil)

;; @NOTE: There are lots of things to clean up in this init 

;; @Cleanup: I believe this is obselete and needs to be deleted 
;; (set-face-attribute 'region nil :background "#666")

;; Swtich to my-own starting buffer 
;; and display and image with text
;; (add-hook 'emacs-startup-hook 'my-startup-fcn)
;; (defun my-startup-fcn ()
;;   "do fancy things"
;;   (let ((*random* (get-buffer-create "*random*")))
;;     (with-current-buffer *random*
;;       (insert "\n")
;;       (insert "\n")
;;       (insert "\n")
;;       (insert "\n")
;;       (insert "                                                            " ) 
;;       (insert-image (create-image "~/my/fan.png"))
;;       (insert "\n")
;;       (insert "\n") 
;;       (insert "	                                               Unfortunately, there's a radio connected to my brain"))
;;     (switch-to-buffer *random*)))

;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; my themes ;;;;;;; 
;;;;;;;;;;;;;;;;;;;;;;;;

;; A Jonathan Blow emacs tribute 
;; written by yours truly. 

(deftheme Kristian_Ramsamooj_theme_2)
(custom-theme-set-faces
 'Kristian_Ramsamooj_theme_2
 (set-cursor-color "light green")
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Arial" :foundry "outline" :width normal :height 98 :weight normal :slant normal))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:weight bold :foreground "#708090"))))
 '(highlight ((t (:background "red"))))
 '(region ((t (:background "blue"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 16) (background light)) (:background "yellow")) (((class color) (min-colors 16) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 8)) (:foreground "black" :background "cyan")) (t (:inverse-video t))))
 '(trailing-whitespace ((((class color) (background light)) (:background "red1")) (((class color) (background dark)) (:background "red1")) (t (:inverse-video t))))
 '(font-lock-builtin-face ((t (:foreground "#cfbfad"))))
 ;; change here 
 '(font-lock-comment-delimiter-face ((t (:foreground "green4"))))
 '(font-lock-comment-face ((t (:foreground "green4"))))
 ;; change here they were both green3 
 '(font-lock-constant-face ((t (:foreground "#85ecd7"))))
 '(font-lock-doc-face ((t (:foreground "#cd8b00"))))
 '(font-lock-function-name-face ((t (:foreground "#e1f4ff"))))
 '(font-lock-keyword-face ((t (:foreground "#e1f4ff"))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:foreground "#ade6b3"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#0BB6AB"))))
 '(font-lock-type-face ((t (:foreground "#ade6b3"))))
 '(font-lock-variable-name-face ((t (:foreground "#e1f4ff"))))
 '(font-lock-warning-face ((t (:foreground "#ffffff" :background "#ff0000"))))
 '(button ((t (:inherit (link)))))
 '(link ((((class color) (min-colors 88) (background light)) (:underline (:color foreground-color :style line) :foreground "RoyalBlue3")) (((class color) (background light)) (:underline (:color foreground-color :style line) :foreground "blue")) (((class color) (min-colors 88) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan1")) (((class color) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan")) (t (:inherit (underline)))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(fringe ((t (:foreground "#cfbfad" :background "#1e1e27"))))
 '(header-line ((default (:inherit (mode-line))) (((type tty)) (:underline (:color foreground-color :style line) :inverse-video nil)) (((class color grayscale) (background light)) (:box nil :foreground "grey20" :background "grey90")) (((class color grayscale) (background dark)) (:box nil :foreground "grey90" :background "grey20")) (((class mono) (background light)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "black" :background "white")) (((class mono) (background dark)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "white" :background "black"))))
 '(tooltip ((t (:foreground "systeminfotext" :background "systeminfowindow" :inherit (variable-pitch)))))
 '(mode-line ((((class color) (min-colors 88)) (:foreground "black" :background "#b4a485" :box (:line-width -1 :color nil :style released-button))) (t (:inverse-video t))))
 ;; '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "blue" :style released-button))) (t (:inherit (highlight)))))
 ;; change here background color was #b4a485 how is grey70
 '(mode-line-inactive ((t (:foreground "black" :background "grey70"))))
 '(isearch ((t (:weight bold :foreground "#303030" :background "red"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background "blue")) (((class color) (min-colors 88) (background dark)) (:background "blue")) (((class color) (min-colors 16)) (:background "blue")) (((class color) (min-colors 8)) (:background "blue")) (t (:underline (:color foreground-color :style line)))))
 '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(default ((t (:inherit nil :stipple nil :background "#052328" :foreground "#b4a485" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "Consolas")))))

(provide-theme 'Kristian_Ramsamooj_theme_2)

;; separation 

;; Moe-theme
;; (require 'moe-theme)
;; (moe-light)
;; (moe-theme-set-color 'magenta)
;; (moe-dark)

;; Zenburn-theme
;; (load-theme 'zenburn t) 

;; Night-Owl-theme 
;; (require 'night-owl-theme) 
;; (set-face-foreground 'font-lock-comment-face "light pink")

;; my customized theme 

;; (deftheme Kristian_Ramsamooj_theme)
;; (custom-theme-set-faces
;;  'Kristian_Ramsamooj_theme
;;  '(cursor ((t (:foreground "#cfdfef" :background "#708090"))))
;;  '(fixed-pitch ((t (:family "Monospace"))))
;;  '(variable-pitch ((t (:family "Arial" :foundry "outline" :width normal :height 98 :weight normal :slant normal))))
;;  '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
;;  '(minibuffer-prompt ((t (:weight bold :foreground "#708090"))))
;;  '(highlight ((t (:background "#404040"))))
;;  '(region ((t (:background "#404040"))))
;;  '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
;;  '(secondary-selection ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 16) (background light)) (:background "yellow")) (((class color) (min-colors 16) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 8)) (:foreground "black" :background "cyan")) (t (:inverse-video t))))
;;  '(trailing-whitespace ((((class color) (background light)) (:background "red1")) (((class color) (background dark)) (:background "red1")) (t (:inverse-video t))))
;;  '(font-lock-builtin-face ((t (:foreground "#cfbfad"))))
;;  '(font-lock-comment-delimiter-face ((t (:foreground "#eee926"))))
;;  '(font-lock-comment-face ((t (:foreground "#eee926"))))
;;  '(font-lock-constant-face ((t (:foreground "#85ecd7"))))
;;  '(font-lock-doc-face ((t (:foreground "#cd8b00"))))
;;  '(font-lock-function-name-face ((t (:foreground "#e1f4ff"))))
;;  '(font-lock-keyword-face ((t (:foreground "#e1f4ff"))))
;;  '(font-lock-negation-char-face ((t nil)))
;;  '(font-lock-preprocessor-face ((t (:foreground "#ade6b3"))))
;;  '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
;;  '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
;;  '(font-lock-string-face ((t (:foreground "#bcc1c5"))))
;;  '(font-lock-type-face ((t (:foreground "#ade6b3"))))
;;  '(font-lock-variable-name-face ((t (:foreground "#e1f4ff"))))
;;  '(font-lock-warning-face ((t (:foreground "#ffffff" :background "#ff0000"))))
;;  '(button ((t (:inherit (link)))))
;;  '(link ((((class color) (min-colors 88) (background light)) (:underline (:color foreground-color :style line) :foreground "RoyalBlue3")) (((class color) (background light)) (:underline (:color foreground-color :style line) :foreground "blue")) (((class color) (min-colors 88) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan1")) (((class color) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan")) (t (:inherit (underline)))))
;;  '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
;;  '(fringe ((t (:foreground "#cfbfad" :background "#1e1e27"))))
;;  '(header-line ((default (:inherit (mode-line))) (((type tty)) (:underline (:color foreground-color :style line) :inverse-video nil)) (((class color grayscale) (background light)) (:box nil :foreground "grey20" :background "grey90")) (((class color grayscale) (background dark)) (:box nil :foreground "grey90" :background "grey20")) (((class mono) (background light)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "black" :background "white")) (((class mono) (background dark)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "white" :background "black"))))
;;  '(tooltip ((t (:foreground "systeminfotext" :background "systeminfowindow" :inherit (variable-pitch)))))
;;  '(mode-line ((((class color) (min-colors 88)) (:foreground "black" :background "grey75" :box (:line-width -1 :color nil :style released-button))) (t (:inverse-video t))))
;;  '(mode-line-buffer-id ((t (:weight bold :foreground "#b9b9b9" :background "#3e3e5e"))))
;;  '(mode-line-emphasis ((t (:weight bold))))
;;  '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
;;  '(mode-line-inactive ((t (:foreground "#708090" :background "#3e3e5e"))))
;;  '(isearch ((t (:weight bold :foreground "#303030" :background "#cd8b60"))))
;;  '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
;;  '(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background "paleturquoise")) (((class color) (min-colors 88) (background dark)) (:background "paleturquoise4")) (((class color) (min-colors 16)) (:background "turquoise3")) (((class color) (min-colors 8)) (:background "turquoise3")) (t (:underline (:color foreground-color :style line)))))
;;  '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
;;  '(next-error ((t (:inherit (region)))))
;;  '(query-replace ((t (:inherit (isearch)))))
;;  '(default ((t (:inherit nil :stipple nil :background "#292929" :foreground "#b4a485" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "Consolas")))))

;; (provide-theme 'Kristian_Ramsamooj_theme)

;; separation 

;; '(font-lock-comment-face ((t (:foreground "MediumAquamarine"))))
;; default-theme

;; (deftheme default-black
;;    "My_theme")

;;  ;; Operator Fonts
;;  (defface font-lock-operator-face
;;    '((t (:foreground "orange"))) "Basic face for operator." :group 'basic-faces)

;; ;; ;; C-Like
;; ;; ;; (dolist (mode-iter '(c-mode c++-mode java-mode))
;; ;; ;;   (font-lock-add-keywords mode-iter
;; ;; ;;    '(("\\([~^&\|!<>=,.\\+*/%-]\\)" 0 'font-lock-operator-face keep))))

;;  (dolist (mode-iter '(c-mode c++-mode java-mode))
;;    (font-lock-add-keywords mode-iter
;;  			  '(("\\([~^&\|!<>=,.\\+*/%-]\\)" 0 'font-lock-operator-face keep))))

;; (custom-theme-set-faces
;;  'default-black
;;  '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "White" :inverse-video nil :box nil :strike-t*hrough nil :overline nil :underline nil :slant normal :weight normal :width normal :height 105))))
;;  '(highlight ((((class color) (min-colors 88) (background dark)) (:background "#111111"))))
;;  (set-cursor-color "light green")
;;  '(region ((nil (:background "#464740"))))
;;  '(hl-line ((nil (:background "#222222"))))
;;  '(yas-field-highlight-face ((nil (:background "#333399"))))
;;  '(fixed-pitch ((t (:family "Monospace"))))
;;  '(variable-pitch ((t (:family "Arial" :foundry "outline" :width normal :height 98 :weight normal :slant normal))))
;;  '(highlight-numbers-number ((t (:foreground "#cc33ff"))))
;;  '(js2-function-param-face ((t (:foreground "LightGoldenrod"))))
;;  '(font-lock-warning-face ((nil (:foreground "#ff6666"))))
;;  (set-face-foreground 'font-lock-string-face "red")
;;  (set-face-foreground 'font-lock-comment-face "light pink")
;;  '(show-paren-match ((nil (:background "#333399")))) 
;;  '(show-paren-mismatch ((((class color)) (:background "red")))))

;; (provide-theme 'default-black)

;;;;;;;;;;;;;;;;;;;;;;;;
;;; end of my themes ;;; 
;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;
;; Some changes ;;
;;;;;;;;;;;;;;;;;;

;; function for forced indentation 
;; C-f indents and now M-f forces indentation 
;; when emacs gets confused
(defun region-line-beg ()
  (if (region-active-p)
      (save-excursion (goto-char (region-beginning)) (line-beginning-position))
    (line-beginning-position)))
(defun region-line-end ()
  (if (region-active-p)
      (save-excursion (goto-char (region-end)) (line-end-position))
    (line-end-position)))
(defun keyboard-indent (&optional arg)
  (interactive)
  (let ((deactivate-mark nil))  ; keep region
    (indent-rigidly (region-line-beg) (region-line-end) (* (or arg 1) tab-width))))
(defun keyboard-unindent (&optional arg)
  (interactive)
  (keyboard-indent (* -1 (or arg 1))))

;; function for overriding key mappings in 
;; certain modes to keys that I actually want
;; Will expand in the future when I'm not lazy 
(defvar my-keys-minor-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-d") 'kill-whole-line)
    map))

(define-minor-mode my-keys-minor-mode
  :init-value t
  :lighter " my-keys")

(my-keys-minor-mode 1)

;; (global-set-key [next]
;;     (lambda () (interactive)
;;       (condition-case nil ("C-o")
;;         (end-of-buffer (goto-char (point-max))))))

;;   (global-set-key [prior]
;;     (lambda () (interactive)
;;       (condition-case nil ("C-p")
;;         (beginning-of-buffer (goto-char (point-min))))))

;; (global-set-key (kbd "M-<next>") 'scroll-up)

;;(global-set-key (kbd "M-<prior>") 'scroll-down)


;; Multiple-Cursors mode C-M-c 
(require 'multiple-cursors)
(global-set-key (kbd "C-M-c") 'mc/edit-lines)

;; Highlight and keep highlighted each 
;; instance of isearch 
(setq lazy-highlight-cleanup nil)

;; Unbind Pesky Sleep Button and rebind it to M-[ M-]
(global-unset-key [(control z)])
(global-unset-key [(control x)(control z)])
(global-set-key (kbd "M-[ M-]") 'suspend-frame)

;; unbind the default emacs quit option 
(global-unset-key [(control x)(control c)])

;; rebind the quit command
(global-set-key (kbd "M-p M-p") 'save-buffers-kill-terminal)

;; disable whatever this thing is 
(global-set-key (kbd "C-<next>") 'ignore)

;; disable this annoying thing
(global-set-key (kbd "C-l") 'ignore)

;; disable PgUp key
;; (global-set-key (kbd "<next>") 'ignore)

;; disable PgDn key
;; (global-set-key (kbd "<prior>") 'ignore)

;; go to previous cursor position 
;; (global-set-key (kbd "C-o") 'pop-global-mark)

;; forced indentation
(global-set-key (kbd "M-f") 'keyboard-indent)

;; forward a word 
(global-set-key (kbd "M-w") 'forward-word)

;;backward a word
(global-set-key (kbd "M-q") 'backward-word)

;; highlight the current line
;; where the cursor is on
;; (global-hl-line-mode 1)
;; (set-face-background 'hl-line "midnight blue")

;; Stop Emacs from losing undo information by
;; setting very high limits for undo buffers
(setq undo-limit 20000000)
(setq undo-strong-limit 40000000)

;; display how much battery is left 
(display-battery-mode 1)

;; change the color of numbers in programming modes 
(add-hook 'prog-mode-hook 'highlight-numbers-mode)

;; @Cleanup: This needs to be deleted 
;; insertion mode 
;; press to lock buffer to read only-mode
;;(global-set-key (kbd "C-i") 'read-only-mode)

;; changing inner contents similar
;; to Vim's ci command 
(require 'change-inner)
(global-set-key (kbd "M-i") 'change-inner)
(global-set-key (kbd "M-o") 'change-outer)

;; when overwrite highlighted region
(delete-selection-mode 1)

;; re-binding of the meta key 
(setq alt 'meta) 

;; change the default directory for emacs
(setq default-directory "C:Users/ramsa/Desktop")

;; disable abbreviations mode 
(setq save-abbrevs 'slient) 

;; disable ~backup
(setq backup-inhibited t)

;; disable #autosave#
(setq auto-save-default nil)

;; open emacs in fullscreen mode 
(toggle-frame-fullscreen) 

;; ace window
(global-set-key (kbd "C-x p") 'ace-window)
;;(setq aw-background nil)

;; refresh emacs after changes on the disk 
(global-auto-revert-mode t)

;; rebind-ing of the yank-pop command
(global-set-key (kbd "M-v") 'yank-pop)

;; scroll up one line 
(global-set-key (kbd "M-<down>") 'scroll-up-line)

;; scroll down one line 
(global-set-key (kbd "M-<up>") 'scroll-down-line)

;; beginning of buffer
(global-set-key (kbd "M-,") 'beginning-of-buffer)

;; end of buffer
(global-set-key (kbd "M-.") 'end-of-buffer)

;; query replace
(global-set-key (kbd "C-q") 'query-replace)

;; goto line number
(global-set-key (kbd "C-x g") 'goto-line)

;; kill compilation 
(global-set-key (kbd "C-x k") 'kill-compilation)

;; mass comment 
(global-set-key (kbd "C-x /") 'comment-region)

;; mass uncomment 
(global-set-key (kbd "C-x .") 'uncomment-region)

;; copy 
(global-set-key (kbd "C-c c") 'kill-ring-save)

;; paste 
(global-set-key (kbd "C-v") 'yank)

;; 4 tabs 
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; show clock
(display-time)

;; no bell noises 
(setq ring-bell-function 'ignore)

;; smooth scroll
(setq redisplay-dont-pause t)

(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;; no headaches with mouse scrolling
(setq mouse-wheel-scroll-amount '(4 ((shift) . 4))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil)
(toggle-scroll-bar -1)

;; make side by side buffers function the same as the main window 
(setq truncate-partial-width-windows nil)

;; no welcome menu
(setq inhibit-startup-message t)

;; easier scrolling
(mouse-wheel-mode t)

;; allow undo tree for undo-ing / redo-ing
(require 'undo-tree)
(global-undo-tree-mode)

;; undo-ing things - bind the key
(define-key global-map (kbd "C-/") 'undo)

;; redo-ing things
;; NOTE: Possibily need the global
;; undo tree in order to do redo-ing
;; without installing a new package 
(define-key global-map (kbd "C-.") 'redo)

;; get to the actual end of the buffer thanks 
(setq scroll-error-top-bottom t)

;; Matching parenthesis rainbow
;; (require 'rainbow-delimiters)
;; (global-rainbow-delimiters-mode t)

;; I hate typing yes and no
(fset 'yes-or-no-p 'y-or-n-p)

;; show matching parens
(show-paren-mode 1)

;; stop the auto-indentation please 
;; (electric-indent-mode 0)
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

;; Pairing parthensis and the likes 
;;(electric-pair-mode 1)

;; electric pair mode on curly braces 
;; (setq electric-pair-pairs
;;       '(
;;         (?\" . ?\")
;;         (?\{ . ?\})
;;         (?\" . ?\")
;;         (?\' . ?\')))

;; visual-line-mode 
(global-visual-line-mode t)

;; auto complete for different modes
(defun electric-pair ()
  "If at end of line, insert character pair without surrounding spaces.
    Otherwise, just insert the typed character."
  (interactive)
  (if (eolp) (let (parens-require-spaces) (insert-pair)) (self-insert-command 1)))

;; (add-hook 'python-mode-hook
;; 	  (lambda ()
;; 	    (define-key python-mode-map "\"" 'electric-pair)
;; 	    (define-key python-mode-map "\'" 'electric-pair)
;; 	    (define-key python-mode-map "(" 'electric-pair)
;; 	    (define-key python-mode-map "[" 'electric-pair)
;; 	    (define-key python-mode-map "{" 'electric-pair)))

;; (add-hook 'java-mode-hook
;; 	  (lambda ()
;; 	    (define-key java-mode-map "\"" 'electric-pair)
;; 	    (define-key java-mode-map "\'" 'electric-pair)
;; 	    ;;(define-key java-mode-map "(" 'electric-pair)
;; 	    ;;(define-key java-mode-map "[" 'electric-pair)
;; 	    (define-key java-mode-map "{" 'electric-pair)))

;; (add-hook 'haskell-mode-hook
;; 	  (lambda ()
;; 	    (define-key haskell-mode-map "\"" 'electric-pair)
;; 	    (define-key haskell-mode-map "\'" 'electric-pair)
;; 	    ;;(define-key haskell-mode-map "(" 'electric-pair)
;; 	    ;;(define-key haskell-mode-map "[" 'electric-pair)
;; 	    (define-key haskell-mode-map "{" 'electric-pair)))

;; (add-hook 'c++-mode-hook
;; 	  (lambda ()
;; 	    (define-key c++-mode-map "\"" 'electric-pair)
;; 	    (define-key c++-mode-map "\'" 'electric-pair)
;; 	    (define-key c++-mode-map "(" 'electric-pair)
;; 	    (define-key c++-mode-map "[" 'electric-pair)
;; 	    (define-key c++-mode-map "{" 'electric-pair)))

;; Auto indent region function  
(defun er-indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun er-indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indented selected region."))
      (progn
        (er-indent-buffer)
        (message "Indented buffer.")))))

;; Keybinding auto indent region
(global-set-key (kbd "C-f") #'er-indent-region-or-buffer)

;; show columns and rows 
(column-number-mode 1)

;; no fringes 
(set-fringe-mode 0)

;;;;;;;;;;;;;;;;;;;;;;;;;
;; end of some changes ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

;; Start maximised
;;(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;;;;;;;;;;;;;;;;;;;;;;;;
;; Python development ;;
;;;;;;;;;;;;;;;;;;;;;;;;

;; scroll in the compilation buffer to the bottom 
(setq compilation-scroll-output t) 

;; Using the jupyter console will upgrade to jupyter qt console in the future 
;; when I have the time to read the documentation - specifically for inline plotting 
;; can't wait! 

(setenv "IPY_TEST_SIMPLE_PROMPT" "1")
(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt")
(setq python-shell-completion-native-enable nil)

;;;;;;;;;;;;;;;;;;;;
;;Python dev done ;;
;;;;;;;;;;;;;;;;;;;;

;; change here 
(require 'nasm-mode)

;; Some custom variables 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (nasm-mode jupyter go-autocomplete multiple-cursors go-mode auctex-latexmk latex-preview-pane auctex night-owl-theme multi-term crosshairs pdfgrep highlight-numbers change-inner expand-region ace-window ac-ispell moe-theme delight diminish haskell-mode flyspell-correct el-get ein python-cell org-pdfview 2048-game zenburn-theme ipython ob-ipython undo-tree python-mode python))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Minor-mode changes 
(require 'delight)
(delight '((abbrev-mode "" abbrev)
           (undo-tree-mode nil "Undo-Tree")
           (emacs-lisp-mode "EL" :major)))
