#lang flash-card

(provide meta-flash-card
         power-off-card
         gallium-training-deck)

(require "../util.rkt"
         "../assets.rkt")

; ==== EXAMPLE CARDS ===
(define meta-flash-card
  (flash-card (make-front "What is a flash card?")
              (make-back  "It is a card that bears information"
                          "on both sides and is used as an aid"
                          "in memorization. The question is on"
                          "the front and the answer on the back.")
              120))
                                                                 
(define power-off-card
  (flash-card (make-front "How do you turn off the chromebook?")
              (make-back (draw-key power-icon)
                         "Press the (power key) and "
                         "select \"Shut Down\" using either"
                         "the mouse or the arrow keys.")
              100))

; Gallium Training Cards
; TODO: Make text auto wrap
(define gallium-training-deck
  (make-deck "Gallium Training"
             (flash-card (make-front "What is the (Gallium) password?")
                         (make-back  "thoughtstem")
                         10)
             (flash-card (make-front "What is the (Gallium) username?")
                         (make-back  "thoughtstem")
                         10)
             (flash-card (make-front "What combination of keys will do a"
                                     "fast-restart?")
                         (make-back  (beside (draw-key power-icon) (text " + " 14 'white)
                                             (draw-key refresh-icon))
                                     ""
                                     "(power key + refresh key)") 
                         20)
             (flash-card (make-front "What combination of keys will open"
                                     "the terminal?")
                         (make-back  (beside (draw-key "ctrl") (text " + " 14 'white)
                                             (draw-key "alt") (text " + " 14 'white)
                                             (draw-key "t"))
                                     ""
                                     "(ctrl + alt + t)"
                                     )
                         20)
             (flash-card (make-front "In the terminal, what key can you press"
                                     "to auto-complete file/folder names?")
                         (make-back  (draw-key "tab")
                                     ""
                                     "(tab)")
                         10)
             (flash-card (make-front "What is the command to fix the system date?")
                         (make-back  "sudo date -s \"DATE\"" ;use terminal formatting?
                                     "ie. sudo date -s \"January 1 2020 11:11am\"")
                         30)
             (flash-card (make-front "What combination of keys toggles caps-lock?")
                         (make-back  (beside (draw-key "alt") (text " + " 14 'white)
                                             (draw-key "shift"))
                                     ""
                                     "(right alt + right shift)")
                         20)
             (flash-card (make-front "A window disappeared and there is only a"
                                     "title bar, how can you bring the window"
                                     "back?")
                         (make-back "Use the cursor to point at the bar and"
                                    "scroll down using the mouse wheel"
                                    "(or two-finger scroll on the mousepad)")
                         60)
             (flash-card (make-front "In the terminal, how do you navigate into"
                                     "a folder?")
                         (make-back  "Type: cd FOLDER-NAME (replace FOLDER-NAME" 
                                     "with the actual name)")
                         60)
             (flash-card (make-front "In the terminal, how do you navigate up"
                                     "a folder?")
                         (make-back  "Type: cd ..")
                         30)
             (flash-card (make-front "In the terminal, how do you list the"
                                     "contents of a folder?")
                         (make-back  "Type: ls")
                         20)
             ))


(module+ test
  (view-cards meta-flash-card
              power-off-card)
  
  (view-deck gallium-training-deck)
  
  (test-with-deck gallium-training-deck))
  