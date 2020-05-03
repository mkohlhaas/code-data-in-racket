;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname bobble-evaluation-solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; bobble-evaluation-solution.rkt

; PROBLEM:
; 
; Given the following function definition:
; 
; (define (bobble s)
;   (if (<= (string-length s) 6)
;       (string-append s "ible")
;       s))
; 
; Write out the step-by-step evaluation of the expression:
; 
; (bobble (substring "fungus" 0 4))
; 
; Be sure to show every intermediate evaluation step (including the original expression
; and the final result, our answer has 7 steps).


(define (bobble s)
  (if (<= (string-length s) 6)
      (string-append s "ible")
      s))
(bobble (substring "fungus" 0 4))

(bobble "fung")

(if (<= (string-length "fung") 6)
    (string-append "fung" "ible")
    "fung")

(if (<= 4 6)
    (string-append "fung" "ible")
    "fung")

(if true
    (string-append "fung" "ible")
    "fung")

(string-append "fung" "ible")

"fungible"