(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(el-get-bundle elpa:bnf-mode)
(el-get-bundle elpa:htmlize)
(el-get-bundle elpa:rust-mode)
(el-get-bundle elpa:ob-rust)
;; (el-get-bundle elpa:magit)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; org capture
(global-set-key (kbd "<f6>") 'org-capture)

(setq org-capture-templates 
  '(
	  ("a" "Appointment" entry
	   (file+headline 
	    "C:/Users/tiago/personal/taskdiary.org" "Calendar") 
"* APPT %^{Description} %^g
%?
Added: %U")
("n" "Notes" entry (file+datetree 
"C:/Users/tiago/personal/taskdiary.org") 
"* %^{Description} %^g %? 
Added: %U")

("t" "Task Diary" entry (file+datetree 
"C:/Users/tiago/personal/taskdiary.org") 
"* TODO %^{Description}  %^g
%?
Added: %U")

("j" "Journal" entry (file+datetree 
"C:/Users/tiago/personal/workjournal.org") 
 "** %^{Heading}")

("l" "Log Time" entry (file+datetree 
"C:/Users/tiago/personal/timelog.org" ) 
 "** %U - %^{Activity}  :TIME:")

("e" "EDNA" entry (file+datetree
		   "C:/Users/tiago/personal/edna.org")
 "** %U - %^{Activity} :TIME:")
))


(url-retrieve
 "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el"
 (lambda (s)
   (goto-char (point-max))
   (eval-print-last-sexp)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit ob-rust rust-mode htmlize bnf-mode el-get))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
