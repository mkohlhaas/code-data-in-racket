;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname water-balloon-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; water-balloon-starter.rkt

; PROBLEM:
; 
; In this problem, we will design an animation of throwing a water balloon.  
; When the program starts the water balloon should appear on the left side 
; of the screen, half-way up.  Since the balloon was thrown, it should 
; fly across the screen, rotating in a clockwise fashion. Pressing the 
; space key should cause the program to start over with the water balloon
; back at the left side of the screen. 
; 
; NOTE: Please include your domain analysis at the top in a comment box. 
; 
; Use the following images to assist you with your domain analysis:
; 
; 
; 1)
; 2).
; .
; 3)
; .
; 4)
; 
; .
;     
; 
; Here is an image of the water balloon:
; (define WATER-BALLOON.)
; 
; 
; 
; NOTE: The rotate function wants an angle in degrees as its first 
; argument. By that it means Number[0, 360). As time goes by your balloon 
; may end up spinning more than once, for example, you may get to a point 
; where it has spun 362 degrees, which rotate won't accept. 
; 
; The solution to that is to use the modulo function as follows:
; 
; (rotate (modulo ... 360) (text "hello" 30 "black"))
; 
; where ... should be replaced by the number of degrees to rotate.
; 
; NOTE: It is possible to design this program with simple atomic data, 
; but we would like you to use compound data.
