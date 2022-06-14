#lang scheme

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
    (else else-clause)))
    
(define (good-enough? guess x)
  x)

(define (improve guess x)
  x)

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
      x)))