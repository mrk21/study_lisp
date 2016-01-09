(format t "## recursion")
(defun sum (list)
  (if (eq (car list) nil)
    0
    (+ (car list) (sum (cdr list)))
  )
)
(print (sum '(1 2 3)))
(format t "~2%")


; Iteration
; Ruby: times
(format t "## dotimes")
(dotimes (x 5) (print x))
(format t "~2%")


; Iteration
; Ruby: each
(format t "## dolist")
(dolist (x '(1 2 3)) (print x))
(format t "~2%")


; Mapping
; Ruby: map
(format t "## mapcar")
(print (mapcar #'(lambda (x) (* x x)) '(1 2 3 4 5)))
(format t "~2%")


(format t "## loop")
(defun fact (x)
  (let ((result 1) (i 2))
    (loop
      (unless (<= i x) (return result))
      (setq result (* result i)
            i      (1+ i)))
    result))
(print (fact 5))
(format t "~2%")


; JavaScript: for
(format t "## do")
(defun fact2 (x)
  (do ((n 2 (1+ n)) (result 1))    ; variable definition ((var-name [init-form [step-form]) ...)
      ((< x n) result)             ; end-test
      (setq result (* result n)))) ; looping S expression
(print (fact2 5))
(format t "~2%")


; Filter
(format t "## filter")
(defun filter (f list)
  (cond
    ((null list)
      nil)
    ((funcall f (car list))
      (cons (car list) (filter f (cdr list))))
    (t
      (filter f (cdr list)))))
(print (filter #'evenp '(1 2 3 4 5 6)))
