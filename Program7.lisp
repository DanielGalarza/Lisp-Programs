;;  Daniel Galarza – CS 3210 – Spring 2016
;;  ============================
;;
;;  calc_temperature function: Main function. Converts Centigrade to 
;;	Fahrenheit and vise versa.
;;
;;  fahrenheit_to_centigrade function: Does the math for converting Fahrenheit to 
;;	Centigrade (helper function)
;;
;;	centigrade_to_fahrenheit function: Does the math for converting Centigrade to 
;;	Fahrenheit (helper function)
;;
;;  parameters:
;;    		1. temp: is a list containing the integer value that will be converted
;;				and a char ('F' or 'C') to represent its current value.
;;
;;  limitations:
;;			1. none that I can point out. 
;;			2. it's only a converter. Nothing more.
;;

(defun calc_temp (temp)
	(setq unit (second temp))

	(cond 
		( (string= 'C unit) 
			(centigrade_to_fahrenheit (first temp)) )
		
		( (string= 'F unit) 
			(fahrenheit_to_centigrade (first temp)) ) 
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun fahrenheit_to_centigrade (temp)
	(/ (- temp 32) 1.8 )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun centigrade_to_fahrenheit (temp)
	(+ 32 (* temp 1.8))
)


; NIL case
(print (calc_temp '() ))		

; Centigrade to Fahrenheight
(print  "Centigrade to Fahrenheight")
(print  "0 C to F")
(print (calc_temp '(0 C) ))		; = 32 F

(print  "100 C to F")
(print (calc_temp '(100 C) ))	; = 212 F


; Fahrenheight to Centigrade
(print  "Fahrenheight to Centigrade")
(print  "32 F to C")
(print (calc_temp '(32 F) ))    ; = 0 C

(print  "212 F to C")
(print (calc_temp '(212 F) ))	; = 100 C




;;  test plan for search_list:
;;  category								data							expected result
;;  -----------------------------------------------------------------------------------------------
;;  empty list								'()   	        				NIL
;;  Centigrade to Fahrenheight				'(0 C)						    32 F
;;  Fahrenheight to Centigrade    			'(212 F)						100 C
;;







