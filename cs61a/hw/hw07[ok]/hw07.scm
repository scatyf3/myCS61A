(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cdr (cdr s)))
)


(define (sign num)
  'YOUR-CODE-HERE
  (cond ((< num 0) -1)((= num 0) 0)((> num 0) 1))
)


(define (square x) (* x x))

(define (pow x y)
  'YOUR-CODE-HERE
  (if (= y 1) x
        (if (even? y)
            (square (pow x (/ y 2)))
            (* x (square (pow x (floor (/ y 2)))))))
  ;我自己写的递归一直说int is not callable
)


(define (unique s)
  'YOUR-CODE-HERE
  (if (null? s) nil (cons (car s) (unique (filter (lambda (x) ( not (eq? x (car s)))) (cdr s)))))
)
;这个也有借鉴，好难！


(define (replicate x n)
  'YOUR-CODE-HERE
  (define (replica x n lst)
    (if (eq? n 0) lst (replica x (- n 1) (append lst (list x))))
  )
  (replica x n nil)
)


(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
  (if (eq? n 0) start (combiner (term n) (accumulate combiner start (- n 1) term)))
)
;多看题和测试例罢，感觉其实是n下降，start仅仅就是那个头而已

(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE
  (define (helper combiner start n term cur_value)
    (if (eq? n 0) cur_value (helper combiner start (- n 1) term (combiner (term n) cur_value))))
  (helper combiner start n term start)
)
;嘿嘿我的s酱嘿嘿，我好厉害，为了我自己要继续努力刷题

(define-macro (list-of map-expr for var in lst if filter-expr)
  'YOUR-CODE-HERE
  `(map (lambda (,var) ,map-expr) (filter (lambda (,var) ,filter-expr) ,lst))
)
;不用建成lst啊，因为返回结果本来就是lst，再嵌套的话就以为我调用了列表

