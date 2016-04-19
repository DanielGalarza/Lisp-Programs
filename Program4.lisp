;;  Daniel Galarza – CS 3210 – Spring 2016
;;  ============================
;;  remneg function: Calls the remneg_helper function and passes it
;;  the list containing numbers and also a new list that will contain 
;;  the non-negative numbers .
;;
;;  remneg_helper function: Runs through the list and contrcuts a new 
;;  list for non-negative numbers.  
;;
;;	is_negative function: Returns 'True' if number is negative.
;;
;;  parameters:
;;       lst_nums  – a list of integers.
;;		 final_lst - list containing only positive integers.
;;
;;  limitations:
;;       1. no embedded lists.
;;       2. all list elements are integers.
;;		 3. list with negatives, or no elements returns NIL.


(defun remove_neg (lst) 
    (remove_neg_helper lst nil)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun remove_neg_helper((reverse orig_lst) final_lst)
	(cond
		( (null orig_lst) 
			final_lst )

		( (is_negative(first orig_lst) )
	        (remove_neg_helper (rest orig_lst) final_lst ) )

	    ( t
			(remove_neg_helper (rest orig_lst) (cons (first orig_lst) final_lst ) )
		)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun is_negative(num)
	(cond
		( (< num 0)
			T)

		( t
			NIL)
	)
)


(print (remove_neg '() ))
(print (remove_neg '(6) ))
(print (remove_neg '(-6 -9 -5) ))
(print (remove_neg '(4 5 6 7) ))
(print (remove_neg '(-2 -1 0 1) ))


;;  test plan for rem_neg:
;;  category										data				expected result
;;  ----------------------------------------------------------------------------------------------------
;;  empty list										( )	   	        	NIL
;;  list with 1 negative							(-6)		    	NIL
;;  list with only negatives						(-6 -9 -5)		    NIL
;;  list with only positives						(4 5 6 7)		    (4 5 6 7)
;;  list with some negatives and positive nums		(-2 -1 0 1)	        (0 1)


;; testing cons function
;;(print (cons 'A nil))
;;(print (cons '('A) nil))
;;(print (cons 'A '(B C)))
;;(print (cons '(A) '(B C)) )


