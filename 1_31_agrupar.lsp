(DEFUN agrupar (e l)
	(if(EQUAL L NIL)
		(e)
		(if (EQUAL e (car l))
			(APPEND (list e) l)
			(setq l 
				(APPEND 
					(LIST(car l)) 
					(agrupar e (cdr l))
				) 
			)
		)
	)
)