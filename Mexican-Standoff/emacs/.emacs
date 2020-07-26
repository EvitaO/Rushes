; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    .emacs                                             :+:    :+:             ;
;                                                      +:+                     ;
;    By: eovertoo <marvin@codam.nl>                   +#+                      ;
;                                                    +#+                       ;
;    Created: 2019/11/03 00:09:12 by eovertoo      #+#    #+#                  ;
;    Updated: 2019/11/03 17:15:52 by eovertoo      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

; Load general features files
(setq config_files "/usr/share/emacs/site-lisp/")
(setq load-path (append (list nil config_files) load-path))

(load "list.el")
(load "string.el")
(load "comments.el")
(load "header.el")

(autoload 'php-mode "php-mode" "Major mode for editing PHP code" t)
(add-to-list 'auto-mode-alist '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

; Set default emacs configuration
(set-language-environment "UTF-8")
(setq-default font-lock-global-modes nil)
(setq-default line-number-mode nil)
(setq-default tab-width 4)
(global-set-key (kbd "TAB") 'self-insert-command);
(global-set-key (kbd "DEL") 'backward-delete-char)
(setq-default c-backspace-function 'backward-delete-char)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
	  		  				 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

; Load user configuration
(if (file-exists-p "~/.myemacs") (load-file "~/.myemacs"))



;*******************************************************************************;

;autoclose brackets
;version is to old

;autoindent c-code
(add-hook 'c-mode-common-hook (lambda ()
      (local-set-key (kbd "RET") 'newline-and-indent)))

;highlight whitespace before line break
(setq-default show-trailing-whitespace 1)

;position column of cursor displayed
(setq column-number-mode 1)

; highlight side-by-side spaces
(global-hi-lock-mode 1)
(add-hook 'change-major-mode-hook '(lambda () (highlight-regexp "  " 'hi-yellow)))

;backup files in ~/.emacs.d/backup
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))

;keybinding for header
(load "header-insert.el")
(global-set-key (kbd "C-c h") 'header-insert)
