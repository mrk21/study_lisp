(defun filter (list pivot f)
  (cond
    ((null list)
      nil)
    ((funcall f (car list) pivot)
      (cons (car list) (filter (cdr list) pivot f)))
    (t
      (filter (cdr list) pivot f))))

(defun qsort (list)
  (cond
    ((null list) nil)
    (t
      (append
        (qsort (filter (cdr list) (car list) #'<))
        (cons (car list) nil)
        (qsort (filter (cdr list) (car list) #'>=))))))

(print (qsort '(33 1 23 45 -12 99 102 -3)))
