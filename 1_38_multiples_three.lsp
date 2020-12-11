(DEFUN multiples_three (l)
	(if(EQUAL l NIL)
		NIL
		(if (= (MOD (car l) 3) 0)
			(append (LIST (car l)) (multiples_three (cdr l)) )
			(multiples_three (cdr l))
		)
	)
)