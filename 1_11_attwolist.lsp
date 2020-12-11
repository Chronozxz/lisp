(DEFUN attwolist (at l1 l2)
	(NOT
		(EQUAL NIL
			(AND 
				(MEMBER at l1 :TEST #'EQ) 
				(MEMBER at l2 :TEST #'EQ)
			)
		)
	)	
)
; (attwolist 'a '(a b c d e) '(a b c d))
; (attwolist 'a '(a b c d e) '(a b c d))

