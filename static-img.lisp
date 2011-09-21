;;;; static-img.lisp

;;;; author: Jake Johnson
;;;; e-mail: springheeled.jake@gmail.com

;; Make sure lisp can see lispbuilder-sdl
;; (NOTE: this code only likes to be ran once
;;  per repl session)
(asdf:operate 'asdf:load-op :lispbuilder-sdl)

;; initialize SDL
(sdl:init-sdl :video t)

;; create screen surface
(sdl:window 800 600 :title-caption "Display a Static Image"
	            :bpp 32)

;; create image surface
(sdl:draw-surface (sdl:load-image "img.bmp"))

;; apply img to screen
(sdl:update-display)

;; display image for 5 seconds
(sleep 5)

;; quit sdl
(sdl-cffi::SDL-Quit)


