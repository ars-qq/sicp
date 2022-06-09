#lang scheme

(define (square x)
  (* x x))

(define (sum-squares-of-two-biggest x y z)
  (define first-num (if (> x y) x y))
  
  (define second-num (cond ((and (= x first-num) (> y z) y))
                           ((and (= y first-num) (> x z) x))
                           (else z)))

  (+ (square first-num) (square second-num)))