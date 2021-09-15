;;; org-capture-helpers.el --- summary -*- lexical-binding: t -*-

;; Author: Harrison Pielke-Lombardo
;; Maintainer: Harrison Pielke-Lombardo
;; Version: 1.0.0
;; Package-Requires: ((emacs "26.1") magit)
;; Homepage: http://www.github.com/tuh8888/org-capture-helpers.el
;; Keywords: vc


;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.


;;; Commentary:

;; commentary

;;; Code:
(defun och/make-oc-entry
    (&rest lines)
  (string-join lines "\n  "))

(defun och/make-oc-head
    (&rest lines)
  (concat (string-join lines "\n") "\n\n"))

(defun och/make-oc-properties
    (props-a-list)
  (mapconcat (lambda (x) (concat ":" (car x) ": " (cdr x)))
             (append (cons '("PROPERTIES" . "")
                           props-a-list)
                     '(("END" . "")))
             "\n  "))

(provide 'org-capture-helpers)

;;; org-capture-helpers.el ends here
