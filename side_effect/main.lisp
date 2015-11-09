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
