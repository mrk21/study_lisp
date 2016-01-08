(format t "## set")
(set 'a 10)
(print a)

(set 'a 20)
(print a)
(format t "~2%")


; A `set` is unable to assign to a lexical variable.
; A `set` evaluates the argument.
; A `setq` assign to a variable in current scope.
; A `setq` doesn't evaluate the argument.
(format t "## setq")
(let ((a 100))
  (set 'a 1000)
  (print a)) ; 100
(print a) ; 1000
(format t "~2%")


; A `setf` can set a variable in current scope or the return value of a function.
(format t "## setf")
(setq list '(a b c))
(print list)
(setf (car list) 480)
(print list)
(format t "~2%")


; Set a special variable: (set 'var-name new-value)
; Get a special variable: (symbol-value 'var-name)
(format t "## symbol-value")
(setq a 10)
(let ((a 100))
  (print a) ; 100
  (print (symbol-value 'a)) ; 10
)
(format t "~2%")
