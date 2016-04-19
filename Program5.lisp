;;  Daniel Galarza – CS 3210 – Spring 2016
;;  ============================
;;
;;  search_list function: Main function. Receives an integer and a list. 
;;  Checks if the list contains that same integer.
;;
;;  search_embedded_list function: This function is for checking a list
;;  within the primary list. Receives an integer and a list. 
;;  Checks if the list contains that same integer.
;;
;;	is_list function: Checks if passed in paramenter is a list.
;;	Returns 'True' if it is a list.
;;
;;	has_my_num: Checks if num is the number we are loking for in the list.
;;
;;  parameters:
;;    		lst – a list of integers, characters, embedded lists, and words.
;;		 	my_num - the number to search for in the list.
;;		 	num - the first element in the list, if it's a num.
;;
;;  limitations:
;;			1. won't search through an embedded list within an embedded list
;;


(defun search_list(lst my_num)
	(cond
		( (null lst)					;end of list
			0)
			
		( (is_list (first lst))			;if it's a list.
			(+ (search_embedded_list (first lst) my_num) (search_list (rest lst) my_num)  ) )

		;( (has_my_num (first lst) my_num)
		;	(+ 1 (search (rest lst) my_num) ) )

		( (numberp (first lst))			;if it's a number
			(cond
				( (has_my_num (first lst) my_num)
					(+ 1 (search_list (rest lst) my_num) ))	

				( t
					(search_list (rest lst) my_num) )
			) )

		(t 								;if it's a word or a char.
		    (search_list (rest lst) my_num) )
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun search_embedded_list(lst my_num)
	(cond
		( (null lst)				;end if the list
			0)

		( (numberp (first lst))  	;If its' a number..
			(cond
				( (has_my_num (first lst) my_num)
					(+ 1 (search_list (rest lst) my_num) ))	

				(t
					(search_list (rest lst) my_num) )
			) )

		(t 							;if it's a word or a char.
		    (search_embedded_list (rest lst) my_num) )
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun has_my_num(num my_num)
	(cond
		( (= num my_num)    ;does the first element of the list equal my number?
			T)	

		(t
			nil)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun is_list (lst)
	(cond
		( (listp lst)
			t)
		(t
			nil
		)
	)
)
			
(print (search_list '() 1) )
(print (search_list '(2 d word) 6) )
(print (search_list '(2 () char) 2) )
(print (search_list '(word 9 7 (9 8) 7 a 7) 7) )
(print (search_list '(word 9 7 (7 9 8 7 7) at) 7) )

;;  test plan for search_list:
;;  category															data							expected result
;;  -----------------------------------------------------------------------------------------------------------------------
;;  empty list															() 1   	        				0
;;  list without the number we are looking for							(2 d word) 6	    			0
;;  list with one number we are looking for		    					(2 () char) 2		    		1
;;  list with three numbers we are looking for							(word 9 7 (9 8) 7 a 7) 7		3
;;  list with embedded list that has the number we are looking for		(word 9 7 (7 9 8 7 7) a ) 7	    4


