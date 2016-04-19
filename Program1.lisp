;;  Daniel Galarza – CS 3210 – Spring 2016
;;  ============================
;;  factorial function: produces the factorial of a number
;;  parameters:
;;       number – an integer.
;;  limitations:
;;       1. can't use 0  or negatives as numbers.
;;		 2. numbers have to be integers.


(defun factorial(number)
  (cond
      ( (= number 1) ;if num equals 1...
         1)

      ( t
         (* number (factorial (- number 1)))) ;else, call factorial again.
   )
)

(print (factorial 2)) ; This will calculate 5! (factorial)
(print (factorial 5)) ; This will calculate 2! (factorial)
(print (factorial 20)) ; This will calculate 20! (factorial)

;;  test plan for factorial:
;;  category							data		expected result
;;  ----------------------------------------------------------------------------------------------------
;;  2!									2	   	       2
;;  5!				    				5		       120
;;  20!									20    		   2432902008176640000


