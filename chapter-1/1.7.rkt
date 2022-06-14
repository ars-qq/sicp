#lang scheme

(define (abs x)
  (if (> x 0) x (- x)))

(define (square x)
  (* x x))

(define (good-enough? guess future-guess)
  (< (/ (abs (- guess future-guess)) future-guess) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-item guess x)
  (define improved-guess (improve guess x))
  
  (if (good-enough? guess improved-guess)
      guess
      (sqrt-item improved-guess x)))

(define (sqrt x)
  (sqrt-item 1.0 x))