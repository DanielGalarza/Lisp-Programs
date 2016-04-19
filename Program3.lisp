;;  Daniel Galarza – CS 3210 – Spring 2016
;;  ============================
;;  divide_by_five function: Checks each element in the list and counts
;;  how many nums in the list ane divisible by five
;; 
;;  mod_five function: Returns 'True' if num is divisible by 5.
;;
;;  parameters:
;;       lst – a list of integers.
;;  limitations:
;;       1. no embedded lists.
;;       2. all list elements are integers.



(defun divide_by_five(lst)
    (cond
        ( (null lst)
            0)

        ( (mod_five(car lst))
            (+ 1 (divide_by_five(cdr lst))) )

        ( t
            (divide_by_five(cdr lst)) )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun mod_five(num)
    (cond
        ( (= 0 (mod num 5))
            T)
        
        ( t
            NIL)
    )
)
            

(print (divide_by_five '()) )
(print (divide_by_five '(-6)) )
(print (divide_by_five '(-4 6 11)) )
(print (divide_by_five '(-5 15 10)) )
(print (divide_by_five '(-5 6 10 8)) )


;;  test plan for dividebyfive:
;;  category                                        data           expected result
;;  ----------------------------------------------------------------------------------------------------
;;  empty list                                      ( )            0
;;  list with 1 element (not divisible by 5)        (6)            0
;;  list with no elements divisible by 5            (-4 6 11)      0
;;  list with 1 element (not divisible by 5)        (5)            1
;;  list with all elements divisible by 5           (-5 15 10)     3
;;  list with some divisible by 5 and other not     (-5 6 10 8)    2






