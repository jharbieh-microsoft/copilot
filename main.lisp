; write me a routine that will return an integer in Lisp
1

; Lisp: How to write a function that checks if a number is the sum of two numbers in a list?
0

; Write a function that takes a list of numbers and returns the sum of the squares of the numbers in the list.

(defun sum-of-squares (lst)
  (apply '+ (mapcar (lambda (x) (* x x)) lst)))

(sum-of-squares '(1 2 3 4 5)) ; 55

(defun square (n)
    (* n n))

(defun sum-of-squares (lst)
    (reduce '+ (mapcar #'square lst)))

(sum-of-squares '(1 2 3 4 5)) ; 55


(ql:quickload "fiveam") ; Load the FiveAM library
(in-package :fiveam)

(def-suite sum-of-squares-suite :description "Testing sum-of-squares function")

(in-suite sum-of-squares-suite)

(test sum-of-squares-test
    (is (= (sum-of-squares '(1 2 3 4 5)) 55))
    (is (= (sum-of-squares '(0 0 0 0 0)) 0))
    (is (= (sum-of-squares '(-1 -2 -3 -4 -5)) 55)))

(run! 'sum-of-squares-suite)

