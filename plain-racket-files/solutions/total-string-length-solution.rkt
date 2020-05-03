;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname total-string-length-solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; total-string-length-solution.rkt

;; =================
;; Data definitions:

; 
; Remember the data definition for a list of strings we designed in Lecture 5c:
; (if this data definition does not look familiar, please review the lecture)
; 


;; ListOfString is one of: 
;;  - empty
;;  - (cons String ListOfString)
;; interp. a list of strings

(define LS0 empty) 
(define LS1 (cons "a" empty))
(define LS2 (cons "a" (cons "b" empty)))
(define LS3 (cons "c" (cons "b" (cons "a" empty))))

#;
(define (fn-for-los los) 
  (cond [(empty? los) (...)]
        [else
         (... (first los)
              (fn-for-los (rest los)))]))

;; Template rules used: 
;; - one of: 2 cases
;; - atomic distinct: empty
;; - compound: (cons String ListOfString)
;; - atomic non-distinct: (first los) is  String
;; - self-reference: (rest los) is ListOfString

;; =================
;; Functions:

; 
; PROBLEM:
; 
; Design a function that consumes a list of strings and determines the total 
; number of characters (single letters) in the list. Call it total-string-length. 
; 


;; ListOfString -> Natural
;; calculates the total number of characters in the given list
(check-expect (total-string-length empty) 0)
(check-expect (total-string-length LS3) 3)
(check-expect (total-string-length (cons "function" (cons "design" empty))) 14)

;(define (total-string-length empty) 0)  ;stub
;<template from ListOfString>

(define (total-string-length los) 
  (cond [(empty? los) 0]
        [else
         (+ (string-length (first los))
            (total-string-length (rest los)))]))
