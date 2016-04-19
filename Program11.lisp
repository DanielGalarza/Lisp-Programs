;; Daniel Galarza – CS 3210 – Spring 2016
;; ===================================
;;	
;; syntax_checker funtion: checks for the formatting in the expression
;;
;; is_operator funtion: Returns 'True' if parameter is a valid operator
;;
;; is_operand function: Returns 'True' if parameter is a valid operand
;;
;; parameters:
;;	1. lst: a list of atoms and lists
;;	2. sign: an element from a list. (Should be an operator)
;;	3. num: a number from a list. (Should be a valid number)
;;		
;; limitations:
;;  1. you'll get an error when input is not formatted correctly
;;  2. returns errors with some embedded lists
;;

(defun syntax_checker(lst)
	(cond 
		( (null lst) 
			nil)

		( (or (not (is_operand (first lst))) (not (is_operator (second lst))) (not (is_operand (third lst))) ) 	
			nil)

		( (and (is_operand (first lst)) (is_operator (second lst)) (is_operand (third lst)) ) 
			T)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun is_operand(num)
	(cond 
		( (null num) 
			nil)

		( (listp num ) 
			(syntax_checker num) )

		( (numberp num) 
			T)

		( t
			nil)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun is_operator(sign)
	(cond
		( (null sign) 
			nil)

		( (atom sign)			;Checking for valid operators
			(cond 
				( (equal sign 'plus)
					T)

				( (equal sign 'minus)
					T)

				( (eq sign 'divideby)
					T)

				( (eq sign 'times)
					T)

				( (eq sign '+)
					T)

				( (eq sign '-)
					T)

				( (eq sign '/)
					T)

				( (eq sign '*)
					T)

				( t
					nil)
			) )

		( t
			nil)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;Testing cases from worksheet.
(print (syntax_checker '()) )
(print (syntax_checker '(7 plus 11)) )
(print (syntax_checker '(25 minus (17 times 12))) )
(print (syntax_checker '(-4 plus))   )
(print (syntax_checker '(-4 plus (cat minus dog))) )
(print (syntax_checker '((7 + 3) minus 12)) )
(print (syntax_checker '(-4 plus (cat minus dog))) )


;;  test plan for syntax_checker:
;;
;;  category			data							expected result
;;  --------------------------------------------------------------------------------------------------
;;  empty list			'()	   	       					NIL
;;  Example test 1		'(7 plus 11)	       			T
;;  Example test 2 	 	'(25 minus (17 times 12))	   	T
;;	Example test 3		'(-4 plus)						NIL
;;	Example test 4 		'(-4 plus (cat minus dog))		NIL
;; 	Example test 5		'((7 + 3) minus 12) 			T
;;	Example test 6		'(-4 plus (cat minus dog))  	NIL


