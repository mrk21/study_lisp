; Quick sort
(defun partial (condition list pivot)
  (cond
    ((null list)
      nil)
    ((funcall condition (car list) pivot)
      (cons (car list) (partial condition (cdr list) pivot)))
    (t
      (partial condition (cdr list) pivot))))

(defun pivot (list) (car list))
(defun without_pivot (list) (cdr list))

(defun qsort (list)
  (cond
    ((null list) nil)
    (t
      (append
        (qsort (partial #'< (without_pivot list) (pivot list)))
        (cons (pivot list) nil)
        (qsort (partial #'>= (without_pivot list) (pivot list)))))))

(print (qsort '(33 1 23 33 45 -12 99 102 -3)))
