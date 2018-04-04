(define
  (insert-splay t x)
  (cond
    ((null? t) (make-tree '() x '())) ((> (elem t) x)
                                        (splay
                                          (insert-splay (left t) x)
                                          (elem t)
                                          (right t)
                                          x))
    (else (splay (left t) (elem t) (insert-splay (right t) x) x))))
