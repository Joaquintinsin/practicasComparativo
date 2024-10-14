(defun biseccion (xs) (lRes) (maxErrorPermitido)
    (if (eq (div (car xs) 2) 0)
        (cons (car xs) lRes)
        (if (<= maxErrorPermitido (div (car xs) 2)))
            (cons (car xs) lRes)
            (biseccion (cdr xs) maxErrorPermitido)
    )
)
