
(define-macro (def func args body)
    'YOUR-CODE-HERE
  `(define ,(cons func args) ,body))
;因为args自己就是列表，于是就只能用cons不能用list

(define (map-stream f s)
    (if (null? s)
    	nil
    	(cons-stream (f (car s)) (map-stream f (cdr-stream s)))))

(define all-three-multiples
  'YOUR-CODE-HERE
  (map-stream (lambda (x) (+ x 3)) (cons-stream 0 all-three-multiples))
)
;递归定义


(define (compose-all funcs)
  'YOUR-CODE-HERE
)


(define (partial-sums stream)
  'YOUR-CODE-HERE
  (helper 0 stream)
)

