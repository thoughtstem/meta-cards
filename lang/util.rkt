#lang at-exp racket

(provide make-rounded-icon
         draw-key)

(require 2htdp/image
         (only-in pict
                  filled-rounded-rectangle
                  inset
                  pict->bitmap)
         image-coloring
         )

(define (make-rounded-icon i [fill-color "yellow"] [border-color "black"])
  (overlay i
           (pict->bitmap (inset (filled-rounded-rectangle 32 32 #:color (~a fill-color)
                                                          #:border-color (~a border-color)
                                                          #:border-width 2) 2))))

(define (draw-key str-or-img)
  (if (string? str-or-img)
      (make-rounded-icon (text/font str-or-img 14 'white #f "default" "normal" "bold" #f) 'black 'lightgray)
      (make-rounded-icon (set-brightness 255 (scale-to-fit str-or-img 20)) 'black 'lightgray)))