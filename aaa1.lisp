(define
  (insert-play t x)
  (cond
    ((null? t) (make-tree '() x '())) ((> (elem t) x)
                                        (splay
                                          (insert-play (left t) x)
                                          (elem t)
                                          (right t)
                                          x))
    (else (splay (left t) (elem t) (insert-play (right t) x) x))))
