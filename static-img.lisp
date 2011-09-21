;;;; static-img.lisp

;;;; author: Jake Johnson
;;;; e-mail: springheeled.jake@gmail.com

;; Don't forget to (asdf:operate 'asdf:load-op :lispbuilder-sdl)
;; before trying to load this into the repl.

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


