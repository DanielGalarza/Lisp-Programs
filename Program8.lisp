;;  Daniel Galarza – CS 3210 – Spring 2016
;;  ============================
;;
;;  twin function: doubles everything in a list
;;
;;  untwin function: untwins everything in a list.
;;
;;  parameters:
;;    		1. lst: a list of words, chars, and integers.
;;			2. final_lst: list containing the final output.
;;
;;  limitations:
;;			1. doesn't work with embedded lists
;;			2. there could be as many twins as you would like (untwin)
;;
  	    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun twin (lst final_lst)
	(cond 
		( (null lst) 
			final_lst)
		
		( t 
			(twin (rest lst) (cons (first lst) (cons (first lst) final_lst) ) ) ) 
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun untwin (lst final_lst)
	(cond 
		( (null lst) 
			final_lst) 

		( (equal (first lst) (second lst)) 
			(untwin (rest lst) final_lst) )

		( (not (equal (first lst) (second lst))) 
			(untwin (rest lst) (cons (first lst) final_lst) ))
	) 
)	



; tests for twin
(print (twin '() nil) )
(print (twin '(1) nil) )
(print (twin (reverse '(yo hey 1 2)) nil) )

;tests for untwin
(print (untwin '() nil) )
(print (untwin '(1) nil) )
(print (untwin '(1 1 1 1) nil) )
(print (untwin (reverse '(yo yo hey hey 1 1 2 2)) nil) )
(print (untwin (reverse '(yo yo hey hey 1 2 )) nil) )



;;  test plan for twin:
;;  category						data				expected result
;;  ------------------------------------------------------------------------------------------
;;  empty list						'() 	        	NIL
;;  list with 1 element 			'(1)				'(1 1)
;;  list with 4 elements 			'(yo hey 1 2)       (YO YO HEY HEY 1 1 2 2) 


;;  test plan for untwin:
;;  category								data						expected result
;;  ------------------------------------------------------------------------------------------
;;  empty list								'()  	        			NIL
;;  list with 1 element 					'(1)						'(1)
;;	list with same element, repeated		'(1 1 1 1)					'(1)
;;  list with all elements twinned 			'(yo yo hey hey 1 1 2 2)	'(YO HEY 1 2) 
;;  list with some twinned and others not	'(yo yo hey hey 1 2 )	    '(YO HEY 1 2) 


