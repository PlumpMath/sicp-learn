; いんたぷりたの評価順
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

; これはどうなる？
(test 0 (p))


; 適用順と正規順 p15
; 適用順評価
; 評価してから適用
(test 0 (p))
; p評価の循環参照？

; 正規順評価
; 全て簡約してから評価
(test 0 (p))
(if (= 0 0) 0 p)
0

; if文はまず述語評価 -> 対応節評価