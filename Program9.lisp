;;  Daniel Galarza – CS 3210 – Spring 2016
;;  ============================
;;
;;  flatten function: 
;;
;;  parameters:
;;    		lst – a list of numbers, characters, embedded lists, and words.
;;
;;  limitations:
;;			1. Doesn't remove the NIL's in flatten function. I have to call 
;;			remove function to remove NIL's
;;

(defun flatten(lst)
	(cond 
		( (null lst)
   			nil)

		( (atom (first lst)) 
			(cons (first lst) (flatten (rest lst))) )

		( t 
			(append (flatten (first lst)) (flatten (rest lst))) )
	)
	
)



(print (remove nil (flatten  '() )))
(print (remove nil (flatten  '(a b (c d) (e (f (g) h))) )))
(print (remove nil (flatten  '(a b (c d) () (e (f (g) h))) )))

;;  test plan for flatten:
;;  category										data								expected result
;;  -----------------------------------------------------------------------------------------------------------------------
;;  empty lists  									'()									NIL
;;	list with embedded lists						'(a b (c d) (e (f (g) h)))			(A B C D E F G H) 
;;	list with embedded lists and embedded nil  		'(a b (c d) () (e (f (g) h)))		(A B C D E F G H) 
;;
