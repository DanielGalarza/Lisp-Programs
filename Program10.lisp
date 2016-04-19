;; Daniel Galarza - CS 3210 - Spring 2016
;; ===================================
;;
;; union function: creates a new list containing the union of two lists
;;
;; intersection function: creates a new list containing the intersection of
;; two lists.
;;
;; is_member funtion: Checks if an atom is in a list.
;;
;; parameters: 
;; 	1. atm: an atom to compare
;;	2. lst: the first list
;;	3. lst1: the first list
;;	4. lst2: the second list
;;  5. final_lst: a list containing the intersect of two lists.
;;
;; limitations: 
;;	1. no embedded lists
;;	2. all list elements must be atoms 
;;

(defun union(lst1 lst2) 
	(cond 
		((null lst1) 
			lst2 ) 		

		( (is_in_list (first lst1) lst2) 
			(union (rest lst1) lst2 ) )

		( (not (is_in_list (first lst1) lst2)) 
			(union (rest lst1) (cons (first lst1) lst2 ) )  ) 
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun intersection(lst1 lst2 final_lst)
	(cond
		( (null lst1)
			final_lst)

		( (is_in_list (first lst1) lst2)
			(intersection (rest lst1) lst2 (cons (first lst1) final_lst)) )
		
		(t
			(intersection (rest lst1) lst2 final_lst))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun is_in_list(atm lst) 
	(cond 
		( (null lst) 
			nil)

		( (equal atm (first lst))  
			T)  

		(t 
			(is_in_list atm (rest lst)) )
	)
)


;Printing a (union) b
(print (union '() '() ) )
(print (union '(a 5 3) '(1 2) ) )
(print (union '(a 2 3) '(a 2 3) ) )
(print (union '(a 2 3 5 6) '(2 3) ) )

(print "Done with Unions")


;Printing a (intersect) b
(print (intersection '() '() '() ) )
(print (intersection '(a 5 3) '(1 2) '() ) )
(print (intersection '(a 2 3) '(a 2 3)'() ) )
(print (intersection '(a 2 3 5 6) '(2 3) '() ) )

(print "Done with Intersections")


;;  test plan for union:
;;  category								data					expected result
;;  -----------------------------------------------------------------------------------------------------------------------
;;	union of two emtpy lists				'() '()					NIL	
;;	union of two, diffirent lists			'(a 5 3) '(1 2)			(3 5 a 1 2)
;;	union of two, same lists				'(a 2 3) '(a 2 3)		(a 2 3)
;;	union of two similar lists				'(a 2 3 5 6) '(2 3)		(6 5 a 2 3)



;;  test plan for intersect:
;;  category									data						expected result
;;  -----------------------------------------------------------------------------------------------------------------------
;;  intersection of two emtpy lists				'() '()						NIL
;;	intersection of two, diffirent lists		'(a 5 3) '(1 2)				NIL
;;	intersection of two, same lists				'(a 2 3) '(a 2 3)			(3 2 a)
;;	intersection of two similar lists			'(a 2 3 5 6) '(2 3)			(3 2)	
;;

