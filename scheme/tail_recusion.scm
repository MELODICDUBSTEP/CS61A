(define (length s)
    (if (null? s) 0
    (+ 1 (length (cdr s)))))

(define (ength_tail s)
    (define (length_iter s n)
        (if (null? s) null
        (length_iter(cdr s)(+ 1 n))))
    (length_iter s 0))

(define (factorial n k)
    if(zero? n) k
        (factorial (- n 1)(* n k)))

(define (reduce procedure s start)
    if (null? s) start 
        (reduce procedure)
            (cdr s)
            (procedure start (car s)))
(define (map procedure s)
    (if (null? s) nil
        (cons (procedure (car s))
            map procedure (cdr s ))))

(define (map procedure s)
    (define (map_reverse s m)
        (if (null? s) m 
            (map_reverse (cdr s )
                (cons (procedure (car s)) m))))
    (reverse (map_reverse s nil)))

(define (reverse s)
    (define (reverse_iter s r)
        (if (null? s) r
            (reverse_iter (cdr s)
            (cons (car s) r)))))

(define (fact n)
    (if (= n 0) 1
        (list '* n (fact (- n 1)))))

(define-macro (twice expr)
    (list 'begin expr expr))

(define-macro (check expr)
    (list 'if expr ''passed ''failed))

(define (map fn vals)
    (if (null? vals)
    ()
    (cons (fn (car vals))
        (map fn (cdr vals)))))

(define-macro (for sym vals expr)
    (list 'map (lsit 'lambda (lsit sym) expr )vals))

(cdr-stream (cons-stream 1 nil))

(define (range-stream a b)
    (if (>= a b) nil (cons-stream a (range-stream (+ a 1) b))))

(define (int-stream start)
    (cons-stream start (int-stream (+ 1 start))))

(define (prefix s k)
    (if (= k 0)
        ()
        (cons (car s)(prefix (cdr-stream s)(- k 1)))))