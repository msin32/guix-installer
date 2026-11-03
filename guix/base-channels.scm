;; Reference :: https://gitlab.com/nonguix/nonguix

(map
 (lambda (chan)
   (if (eq? (channel-name chan) 'guix)
       (channel (inherit chan)
                (branch "version-1.5.0"))
       chan))
        (cons* (channel
                (name 'nonguix)
                (url "https://gitlab.com/nonguix/nonguix")
                ;; Enable signature verification:
                (introduction
                 (make-channel-introduction
                  "897c1a470da759236cc11798f4e0a5f7d4d59fbc"
                  (openpgp-fingerprint
                   "2A39 3FFF 68F4 EF7A 3D29  12AF 6F51 20A0 22FB B2D5"))))
               %default-channels))
