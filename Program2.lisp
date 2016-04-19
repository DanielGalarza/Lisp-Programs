;; Daniel Galarza - CS 3210 - Spring 2016
;;===================================
;;
;; move_to_front function: Takes a word and a list of words.  
;; If the word is not in the list, it is added at the front.  
;; If the word is in the list, it is moved to the front.
;;
;; is_in_list funtion: Checks if an atom is in a list.
;;
;; parameters: 
;; 	1. word: an atom to look for.
;;	2. lst: a list of atoms
;;
;; limitations: 
;;	1. doesn't check embedded lists.
;;  2. only works with numeric, char, and word atoms.
;;

(defun move_to_front (word lst)
	(cond 
		( ( null lst )  ;if list is empty
			nil)
		
		( (is_in_list word lst)    			;if word is in list 
			(cons word (remove word lst)) ) 
		
		( (not (is_in_list word lst))       ;if word is not in the list.
			(cons word lst) )
		
		( t 
			(move_to_front word (rest lst)) )  
	)

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun is_in_list (word lst)
	(cond 
		( (null lst) 
			nil)
		
		( (equal word (first lst)) 
			T)
		
		(t	
			(is_in_list word (rest lst) ))
	)

)


(print (move_to_front 'nil '() ) )
(print (move_to_front 'hey '(char 5 7 yo hey) ) )
(print (move_to_front 'hello '(char 5 7 yo hey) ) )

;;  test plan for move_to_front:
;;  category															data							expected result
;;  -----------------------------------------------------------------------------------------------------------------------
;;  if word is nil and lst is '()										'nil '()   	        			NIL
;;  if word is in lst													'hey '(char 5 7 yo hey)	    	(HEY CHAR 5 7 YO) 
;;  if word is not in the lists    										'hello '(char 5 7 yo hey)		(HELLO CHAR 5 7 YO HEY)
;;


