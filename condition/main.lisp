; equal a b := a == b
; eq a b := a === b
(format t "## equal")
(print (equal (+ 1 2 3) 6))
(print (equal 4 4))
(print (equal 4 4.0))
(print (equal 'a 'a))
(print (equal 1d100 1d100))
(format t "~2%")


(format t "## eq")
(print (eq 'a 'a))
(print (eq 1d100 1d100))
(format t "~2%")


; ==
(format t "## =")
(print (= 4 4))
(print (= 4 4.0))
(print (= 4 4.0 4 4.0))
(print (= 4 4.1 4.2))
(format t "~2%")


; !=
(format t "## /=")
(print (/= 4 4))
(print (/= 4 4.0))
(print (/= 4 4.0 4 4.0))
(print (/= 4 4.1 4.2))
(format t "~2%")


(format t "## <")
(print (< 4 3))
(print (< 4 4))
(print (< 4 5))
(format t "~2%")


(format t "## <=")
(print (<= 4 3))
(print (<= 4 4))
(print (<= 4 5))
(format t "~2%")


(format t "## >")
(print (> 4 3))
(print (> 4 4))
(print (> 4 5))
(format t "~2%")


(format t "## >=")
(print (>= 4 3))
(print (>= 4 4))
(print (>= 4 5))
(format t "~2%")



(format t "## if")
(print (if (< 1 2) (+ 1 2) "hoge"))
(print (if (> 1 2) (+ 1 2) "hoge"))
(format t "~2%")


; not when == unless
(format t "## when")
(print (when (< 1 2) (print "a") (print "b") "c"))
(print (when (> 1 2) (print "a") (print "b") "c"))
(format t "~2%")


(format t "## unless")
(print (unless (< 1 2) (print "a") (print "b") "c"))
(print (unless (> 1 2) (print "a") (print "b") "c"))
(format t "~2%")


(format t "## cond")
(defun data-type (x)
  (cond
    ((integerp x) (print "Integer Type"))
    ((floatp   x) (print "Floot Type"))
    ((listp    x) (print "List Type"))
    ((symbolp  x) (print "Symbol Type"))
    ((stringp  x) (print "String Type"))
    (t            (print "Other Type"))
  )
)
(data-type 2)
(data-type 2.0)
(data-type '(1 2 3))
(data-type 'sym)
(data-type "str")
(data-type nil)
(format t "~2%")
