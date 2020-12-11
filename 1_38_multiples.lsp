(DEFUN multiples (m l)
	(if(EQUAL l NIL)
		NIL
		(if (= (MOD (car l) m) 0)
			(append (LIST (car l)) (multiples m (cdr l)) )
			(multiples m (cdr l))
		)
	)
)