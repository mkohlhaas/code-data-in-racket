;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname circle-fractal-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; circle-fractal-starter.rkt

; 
; PROBLEM :
; 
; Design a function that will create the following fractal:
; 
;             .
; 
;             
; 
; Each circle is surrounded by circles that are two-fifths smaller. 
; 
; You can build these images using the convenient beside and above functions
; if you make your actual recursive function be one that just produces the
; top leaf shape. You can then rotate that to produce the other three shapes.
; 
; You don't have to use this structure if you are prepared to use more
; complex place-image functions and do some arithmetic. But the approach
; where you use the helper is simpler.
; 
; Include a termination argument for your design.


;; =================
;; Constants:

(define STEP (/ 2 5))
(define TRIVIAL-SIZE 5)


