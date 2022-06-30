#lang scheme

(define (abs x)
  (if (> x 0) x (- x)))

(define (square x)
  (* x x))

(define (good-enough? guess prev-guess)
  (< (/ (abs (- guess prev-guess)) prev-guess) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* guess 2)) 3))
     
(define (cube-sqrt-item guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (cube-sqrt-item (improve guess x) guess x)))

(define (cube-sqrt x)
  (if (= x 0)
      0
      (cube-sqrt-item 1.0 (improve 1.0 x) x)))