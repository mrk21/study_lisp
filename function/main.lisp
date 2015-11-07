(format t "## function")
(defun square (x) (* x x))
(print (square 2))
(format t "~2%")


(format t "## lambda")
(print ((lambda (x) (* x x)) 2))
(format t "~2%")


; map
(format t "## mapcar")
(print (mapcar #'(lambda (x) (* x x)) '(1 2 3 4 5)))
(format t "~2%")


; JavaScript: apply
(format t "## apply")
(print (apply #'+ '(1 2 3 4 5)))
(format t "~2%")


; JavaScript: call
(format t "## funcall")
(print (funcall #'+ 1 2 3 4 5))
(format t "~2%")
