#lang scheme
;;  Copyright © 1996, The Massachusetts Institute of Technology
;;  Copyright © 2012, Richard Bullington-McGuire
;;  Licensed under a 
;;  Creative Commons Attribution-ShareAlike 3.0 Unported License
;;  http://creativecommons.org/licenses/by-sa/3.0/

(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))

