;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ensure-question-solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; ensure-question-solution.rkt

; 
; PROBLEM:
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes a string, and adds "?" 
; to the end unless the string already ends in "?".
; 
; For this question, assume the string has length > 0. Follow the HtDF recipe and leave behind commented 
; out versions of the stub and template.
; 


;; String -> String
;; add ? to end of str unless it already ends in ?
(check-expect (ensure-question "Hello") "Hello?")
(check-expect (ensure-question "OK?") "OK?")

;(define (ensure-question str) ;stub
;  "str")

;(define (ensure-question str) ; template
;  (... str))

(define (ensure-question str)
  (if (string=? (substring str (- (string-length str) 1)) "?")
      str
      (string-append str "?")))