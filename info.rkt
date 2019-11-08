#lang info

(define scribblings 
  '(("scribblings/manual.scrbl" ())))

(define deps '(
  "define-assets-from"
  "https://github.com/aBlender/flash-card.git"
  ))

(define compile-omit-paths '(
  "examples.rkt"))
