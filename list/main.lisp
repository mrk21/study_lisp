; >    ┌─────→ car は先頭のセルの CAR 部を返す
; >    │
; >    │  ┌───→ cdr は先頭のセルの CDR 部を返す
; >    │  │
; >  ┌─┬─┐    ┌─┬─┐    ┌─┬─┐    ┌─┬─┐
; >  │・│・┼─→│・│・┼─→│・│・┼─→│・│／│ 
; >  └┼┴─┘    └┼┴─┘    └┼┴─┘    └┼┴─┘
; >    ↓            ↓            ↓            ↓
; >    ａ            ｂ            ｃ            ｄ
; > 
; >         (car '(a b c d)) => a
; >         (cdr '(a b c d)) => (b c d)
; > 
; >                 図 1 : car と cdr の操作
; >
; > [Common Lisp 入門, 図1](http://www.geocities.jp/m_hiroi/xyzzy_lisp/abclisp02.html)

; car
(prin1 (car '(1 2 3)))
(format t "~%")

; cdr
(prin1 (cdr '(1 2 3)))
(format t "~%")


; >                            新しいセル
; >                            ┌─┬─┐
; >          cons の返り値 ←─│・│・┼─→ nil(引数)
; >                            └┼┴─┘
; >                              ↓
; >                              ａ(引数)
; > 
; >                          (cons 'a nil) => (a)
; > 
; >                    新しいセル  ┌─── 引数 (b c) ─────┐
; >                    ┌─┬─┐  │  ┌─┬─┐    ┌─┬─┐  │
; >  cons の返り値 ←─│・│・┼─┼→│・│・┼─→│・│／│  │ 
; >                    └┼┴─┘  │  └┼┴─┘    └┼┴─┘  │
; >                      ↓        │    ↓            ↓        │
; >                      ａ(引数)  │    ｂ            ｃ        │
; >                                └──────────────┘
; > 
; >                        (cons 'a '(b c)) => (a b c)
; > 
; >                         図 2 : cons の動作
; > 
; > [Common Lisp 入門, 図2](http://www.geocities.jp/m_hiroi/xyzzy_lisp/abclisp02.html)

; cons
(prin1 (cons 1 '(2 3)))
(format t "~%")


; >           引数 (a b)                    引数 (c d)
; >         ┌─┬─┐    ┌─┬─┐      ┌─┬─┐    ┌─┬─┐
; >         │・│・┼─→│・│／│  ┌→│・│・┼─→│・│／│  
; >         └┼┴─┘    └┼┴─┘  │  └┼┴─┘    └┼┴─┘
; >           ↓            ↓        │    ↓            ↓
; >           ａ            ｂ        │    ｃ            ｄ
; >           │            │        │
; >           ↓            ↓        │
; >         ┌┼┬─┐    ┌┼┬─┐  │
; >   ┌──│・│・┼─→│・│・┼─┘
; >   │    └─┴─┘    └─┴─┘
; >   │    新しいセル    新しいセル
; >   ↓
; >   append の返り値
; > 
; >                 (append '(a b) '(c d)) => (a b c d)
; > 
; >                 図 5 : append の動作
; > 
; > [Common Lisp 入門, 図5](http://www.geocities.jp/m_hiroi/xyzzy_lisp/abclisp02.html)

; append

(prin1 (append '(1 2 3) '(4 5)))
(format t "~%")
