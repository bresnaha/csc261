;; Cara Bresnahan
;; CSC 261-01
;; Weinman
;; Lab 1 -- Test Driver


(load "polynomial.scm")

;; 1) right-section
(printf"---right-section \nExpected: 2 \nActual: ")
(define divide2 (right-section / 2))
(print(divide2 4))
(printf"\n\n")

;; 2) dot-product
(printf"---dot-product\nExpected: 32\nActual: ")
(print(dot-product (list 1 2 3) (list 4 5 6)))
(printf"\n\n")

;; 3) iota
(printf"---iota\nExpected: (0 1 2 3 4)\nActual: ")
(print(iota 5))
(printf"\n\n")

;; 4) polynomial-term
(define two-x-cubed (polynomial-term 2 3))

(printf"---polynomial-term\nExpected: 2\nActual: ")
(print(two-x-cubed 1))
(printf"\n\n")
(printf"Expected: 54\nActual: ")
(print(two-x-cubed 3))
(printf"\n\n")

(define three-x-squared (polynomial-term 3 2))
(printf"Expected: 3\nActual: ")
(print(three-x-squared 1))
(printf"\n\n")
(printf"Expected: 75\nActual: ")
(print(three-x-squared 5))
(printf"\n\n")
(printf"Expected: 80\nActual: ")
(print((polynomial-term 5 4) 2))
(printf"\n\n")

;; 5) polynomial
(define line (polynomial (list 1 4)))
(printf"---polynomial\nExpected: 21\nActual: ")
(print(line 5))
(printf"\n\n")

(define cubic (polynomial (list 1 4 3 -2)))
(printf"Expected: -154\nActual: ")
(print(cubic 5))
(printf"\n\n")

;; 6) polynomial-derivative-coeffs
(printf"---polynomial-derivative-coeffs\nExpected: (4 6 -6)\nActual: ")
(print(polynomial-derivative-coeffs (list 1 4 3 -2)))
(printf"\n\n")

;; 7) nest
(define l-s left-section)
(define plus5 (nest (l-s + 1) 5))
(printf"---nest\nExpected: 11\nActual: ")
(print(plus5 6))
(printf"\n\n")

(define duplicate (lambda (val n) ((nest (l-s cons val) n ) null)))
(printf"Expected: (\"hello\" \"hello\" \"hello\" \"hello\" \"hello\")\nActual: ")
(print(duplicate "hello" 5))
(printf"\n\n")

(define second-derivative (nest polynomial-derivative-coeffs 2))
(printf"Expected: (6 -12)\nActual: ")
(print(second-derivative (list 1 4 3 -2)))
(printf"\n\n")

;; 8) polynomial-deriv
(define d2/dx2-cubic (polynomial-deriv (list 1 4 3 -2) 2))
(printf"---polynomial-deriv\nExpected: -54\nActual: ")
(print(d2/dx2-cubic 5))
(printf"\n\n")

;; 9) non-zero-coefficients
(printf"---non-zero-coefficients\nExpected: (0 1 3)\nActual: ")
(print(non-zero-coefficients (list 1 4 0 -2)))
(printf"\n\nExpected: (0 2)\nActual: ")
(print(non-zero-coefficients (polynomial-derivative-coeffs (list 1 4 0 -2))))
(printf"\n\n")

