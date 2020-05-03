;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname sum-to-n-solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; sum-to-n-solution.rkt

;   PROBLEM:
;   
;   Design a function that produces the sum of all the naturals from 0 to a given n. 
;   


;; Natrual -> Natural
;; produce the sum of all the naturals from 0 to n
(check-expect (sum-to-n 0) 0)
(check-expect (sum-to-n 1) 1)
(check-expect (sum-to-n 4) 10)

;(define (sum-to-n n) 0)   ;stub

(define (sum-to-n n) 
  (cond [(zero? n) 0]
        [else 
         (+ n
            (sum-to-n (sub1 n)))]))

