#lang scheme
;;  Copyright © 1996, The Massachusetts Institute of Technology
;;  Copyright © 2012, Richard Bullington-McGuire
;;  Licensed under a 
;;  Creative Commons Attribution-ShareAlike 3.0 Unported License
;;  http://creativecommons.org/licenses/by-sa/3.0/
;;
;; The trouble with new-if is that its arguments are all going to be
;; evaluated before the function is called. This means that in this 
;; case the recursive call in the else clause causes infinite 
;; recursion and an OOM error.


(define (sqrt x)
  (define (square x) (* x x))
  (define (average x y) (/ (+ x y) 2))
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))
  (define (sqrt-iter guess)
    (new-if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))
