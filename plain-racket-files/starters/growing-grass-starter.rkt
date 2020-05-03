;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname growing-grass-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

;; growing-grass-starter.rkt

; 
; PROBLEM:
; 
; Design a world program as follows:
; 
; The world starts off with a piece of grass waiting to grow. As time passes, 
; the grass grows upwards. Pressing any key cuts the current strand of 
; grass to 0, allowing a new piece to grow to the right of it.
; 
; Starting display:
; 
; .
; 
; After a few seconds:
; 
; .
; 
; After a few more seconds:
; 
; .
; 
; Immediately after pressing any key:
; 
; .
; 
; A few more seconds after pressing any key:
; 
; .
; 
; NOTE 1: Remember to follow the HtDW recipe! Be sure to do a proper domain 
; analysis before starting to work on the code file.
; 
