;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname sicp-1.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (square x) (* x x))
(define (ss2l a b c) (if (> a b)
                         (if (> b c) (square a b) (square a c))
                         (if (> a c) (square b a) (square b c))
                         _)
  )