(format t "## equal~%")

(prin1 (equal (+ 1 2 3) 6))
(format t "~%")

(prin1 (equal 4 4))
(format t "~%")

(prin1 (equal 4 4.0))
(format t "~%")

(prin1 (equal 'a 'a))
(format t "~%")

(prin1 (equal 1d100 1d100))
(format t "~2%")


(format t "## eq~%")

(prin1 (eq 'a 'a))
(format t "~%")

(prin1 (eq 1d100 1d100))
(format t "~%")

