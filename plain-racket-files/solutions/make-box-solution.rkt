;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname make-box-solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; make-box-solution.rkt

; 
; PROBLEM:
; 
; You might want to create boxes of different colours.
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes a color, and creates a 
; solid 10x10 square of that colour.  Follow the HtDF recipe and leave behind commented out versions of
; the stub and template.
; 


;; Color -> Image
;; Create a box of the given color
(check-expect (make-box "red") (square 10 "solid" "red"))
(check-expect (make-box "gray") (square 10 "solid" "gray"))

;(define (make-box c) (square 0 "solid" "white"))

#;
(define (make-box c)
  (... c))

(define (make-box c)
  (square 10 "solid" c))