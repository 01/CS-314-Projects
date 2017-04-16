;; Test functions

;; key ← 5187
;; for each character c in w
;; reading from right to left do
;; key ← 29 · key + ctv(c)
;; end for
;; where ctv (“character-to-value”) maps ‘a’ to 1, ‘b’ to 2, ... and ‘z’ to 26.

(define ctv
  (lambda (x)
    (cond
      ((eq? x 'a) 1)
      ((eq? x 'b) 2)
      ((eq? x 'c) 3)
      ((eq? x 'd) 4)
      ((eq? x 'e) 5)
      ((eq? x 'f) 6)
      ((eq? x 'g) 7)
      ((eq? x 'h) 8)
      ((eq? x 'i) 9)
      ((eq? x 'j) 10)
      ((eq? x 'k) 11)
      ((eq? x 'l) 12)
      ((eq? x 'm) 13)
      ((eq? x 'n) 14)
      ((eq? x 'o) 15)
      ((eq? x 'p) 16)
      ((eq? x 'q) 17)
      ((eq? x 'r) 18)
      ((eq? x 's) 19)
      ((eq? x 't) 20)
      ((eq? x 'u) 21)
      ((eq? x 'v) 22)
      ((eq? x 'w) 23)
      ((eq? x 'x) 24)
      ((eq? x 'y) 25)
      ((eq? x 'z) 26))))

;; key ← 5187
;; for each character c in w
;; reading from right to left do
;; key ← 29 · key + ctv(c)
;; end for
;; where ctv (“character-to-value”) maps ‘a’ to 1, ‘b’ to 2, ... and ‘z’ to 26.
(define key
	(lambda (w)
		(+ 5178 (ctv (car w))(* 29 key (cdr w)))))

		; key = key * 29 + ctv(c) 
		; (key '(A B C)) = ctv(C) + 29 * (ctv (B) + 29 *(ctv(A) + (29 * ctv(null)= 5187)))
		; (key '(A B C)) = ctv(C) + 29 * (ctv (B) + 29 * (ctv(A) + 29 *)
		; starting from last character  
       ;; *** FUNCTION BODY IS MISSING ***
))

(key '(h e l l o))

;; -----------------------------------------------------
;; EXAMPLE KEY VALUES
;;   (key '(h e l l o))       = 106402241991
;;   (key '(m a y))           = 126526810
;;   (key '(t r e e f r o g)) = 2594908189083745

;; -----------------------------------------------------