;;  Daniel Galarza – CS 3210 – Spring 2016
;;  ============================
;;  is_sorted function: Returns 'True' if a list is in ascending order. 
;;	Returns NIL otherwise.
;;
;;  parameters:
;;       lst: list of integers.
;;
;;  limitations:
;;       1. no embedded lists.
;;       2. all list elements are integers.
;;		 3. only checks for ascending order.


(defun is_sorted (lst)
	(cond 
		( (null (rest lst)) 
			(print "in ascending order!")
			T)

		( (<= (first lst) (second lst) ) 
			( is_sorted (rest lst)) )
		
		( (> (first lst) (second lst))
				(print "not in ascending order")
				nil)

		(t 
			(print "error with list") )		;for debugging only.
	)
)


(print (is_sorted '() ) )
(print (is_sorted '(2 4 9 4 5) ) )
(print (is_sorted '(1 2 3 4 5 6) ) )


;;  test plan for is_sorted:
;;  category						data				expected result
;;  ------------------------------------------------------------------------
;;  empty list						'()	   	        	T
;;  list not in ascending order		'(2 4 9 4 5)		NIL
;;  list in ascending order			'(1 2 3 4 5 6)      T
