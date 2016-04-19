# Lisp-Programs

Program 1:

 N Factorial.  Takes a positive integer and returns its factorial.

********************************************************************************************

Program 2:

 Move to front. Takes a word and a list of words. If the word is not in the list, it is 
 added at the front. If the word is in the list, it is moved to the front.

********************************************************************************************

Program 3:

 Divide by 5 counter.  A function that receives a list of numbers, and returns a count 
 of how many are divisible by 5.Uses a helper predicate function that returns true if 
 its numeric argument is evenly divisible by 5.
 
 Sample:   (divide-by-5  ’(3 15 78 100 4))  ==>  2

********************************************************************************************

Program 4:

 Remove negatives. A function that receives a list of integers and returns a list with 
 all negative values removed.

********************************************************************************************

Program 5:

 Search.  A function that receives an integer and a list.  The list will have a mix of 
 integers, characters, and words, and may have nested lists.  The function returns a 
 count of how many times the integer value is found.

********************************************************************************************

Program 6:

 Is sorted. A function that receives a list of integers and returns true or nil for 
 whether the list is sorted ascending.

********************************************************************************************

Program 7:

Temperature conversion.  Receives a list containing two pieces of data, a number and 
a letter, where number is a value for a temperature, and letter is either C or F 
(meaning Centigrade or Fahrenheit). Three functions: convert, which calls F-to-C or 
C-to-F as needed, based on the letter given. Assumption: the numeric value is a 
legitimate integer. 

Sample:   (convert  ’(100 C))  ==>  212

********************************************************************************************

Program 8:

 Twin.  Receives a list of anything, not nested, and doubles all elements.
 
 Sample:   (twin ’(dog 2 cat))  ==>  (dog dog 2 2 cat cat)
	
 Untwin.  Receives a list with any elements, not nested, some of which may 
 be paired, and removes one of each pair.
 
 Sample:   (untwin ’(dog dog 2 cat 7 7 dog))  ==>  (dog 2 cat 7 dog)

********************************************************************************************

Program 9:

Flatten.  Receives a list of arbitrary depth, and returns a list containing 
all the same elements, in the same order, but now at the top level.

Sample:   (flatten  ’(a b (c d) ( ) (e (f (g) h))))  ==>  (a b c d e f g h)  
	  (note that NIL was also flattened)
	  
********************************************************************************************

Program 10:

 Sets.  Write functions that implement the regular set operations union, 
intersection, and member for top-level lists. No restriction on output ordering. 

Examples:

 a. (myunion  ’(a b d x c) ’(b y))  ==>  (a b d x c y)
 
 b. (myintersection  ’(a b d x c) ’(b y))  ==>  (b)
 
 c. (mymember  ’cat ’(b y))  ==>  nil
 
********************************************************************************************

Program 11:

 Expression syntax checker.  A function which checks the syntax of a nested 
list of expressions with binary infix operators (the operators are the actual 
words): plus, minus, times, dividedby; and integer operands.  The checker 
returns nil if any of these conditions are found, true otherwise: wrong number 
of tokens in an expression (i.e., not 3), operands not numeric, invalid operator.
Your main function should call 3 helper functions which each check one condition.

Examples:

a. (checker  '(7 plus 11))                ==>  true (valid)

b. (checker  '(25 minus (17 times 12)))   ==>  true (valid)

c. (checker  '(-4 plus))                  ==>  nil  (wrong number of operands)

d. (checker  '(-4 plus (cat minus dog)))  ==>  nil  (operands not numeric)

e. (checker  '((7 + 3) minus 12))         ==>  nil  (invalid operator “+”)

f. (checker  '(-4 plus (cat minus dog)))  ==>  nil  (operands not numeric)

********************************************************************************************

NOTES:

1. All test data should be developed first.

2. Use lowercase for any textual data.

3. Each problem may take 1 or more functions (in combination). Do not use any 
   built-in functions that directly solve the problem (e.g., “union”).
    
4. Place each solution (of one or more functions) in a separate file.

5. You may assume that each problem receives only good data, unless otherwise specified.  
    But do remember to think of empty lists when designing test data: what would a reasonable 
    result be for the empty list?
    
6. Documentation.  For each solution, briefly describe what it does, explain each parameter, 
   include any limitations (i.e., conditions your code is not expected to handle), and list 
   your entire test plan  (remember, you are claiming that all test cases ran as specified).  

    Sample:
                ;;  Stu Student – CSI 3210 – Spring 2016
                ;;  ============================
                ;;  adder function: adds all elements of a given list
                ;;  parameters:
                ;;       lst – a list of numbers
                ;;  limitations:
                ;;       1. no embedded lists
                ;;       2. all list elements are integers
                ;;       3. list sum will not exceed maxint
            
            	;; LISP CODE HERE
            
                ;;  test plan for adder:
                ;;  category			             	data	 		expected result
                ;;  ----------------------------------------------------------------------------------------------------
    		;;  empty list					( )	   	       	0
    		;;  list with 1 element				(6)		       	6
    		;;  list sums to zero & duplicate		(-2 1 0 1)	       	0
                 					;etc.
            				
7.  One way to develop these programs is to have a working file (blah.lsp) containing your 
    code, plus setfs for the data test cases.  You can then just call the function several times 
    without typing in all the data.  
    Example file:
    <documented code here, as above>
    (setf  data1  ’(2 17 0))
    (setf  data2  ’( ))
    Use (load “blah.lsp”) in many interpreters, which will bring in the program function(s), 
    and set up names for your test cases.  Then, at the prompt, type:
		(somefunc data1)
    This is only useful for large test cases (like complex nested lists).
    
8.   Hand in: printed source code, with documentation and test plan, for each exercise 
     (separate pages for each problem please); also, one cover page for the whole assignment.
    
9.   Due date: Thursday March 17.   Incorrect or incomplete work will be finished by meeting with me.





