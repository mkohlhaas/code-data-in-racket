;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname average-tr-solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; average-solution.rkt

; 
; PROBLEM:
; 
; Design a function called average that consumes (listof Number) and produces the
; average of the numbers in the list.
; 


;; (listof Number) -> Number  
;; Produce the average of a list of numbers
;; ASSUME: lon contains at least 1 element
(check-expect (average (list 2 3 4)) 3) 

; <template from (listof Number) + 2 accumulators>
(define (average lon)
  ;; cnt: Number; how many numbers so far 
  ;; sum: Number; sum of numbers so far  
  ;;
  ;; (average (list 2 3 4)  0 0)
  ;; (average (list   3 4)  1 2)
  ;; (average (list     4)  2 5)
  ;; (average (list      )  3 9) 
  (local[(define (average lon cnt sum)
           (cond [(empty? lon) (/ sum cnt)]
                 [else
                  (average (rest lon) (add1 cnt)
                           (+ (first lon) sum))]))]
    (average lon 0 0)))  