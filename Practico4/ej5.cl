(defun longitud (xs) 
    (if (eq xs nil) 0 (+ 1 (longitud (cdr xs))))
)

(defun suc (n) (+ 1 n))

(defun factorial (n)
    (if (<= n 1) 1 (* n (factorial (- n 1))))
)