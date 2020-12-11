(DEFUN aplanar (l)
	(if (EQUAL l NIL)
		NIL
		(if (LISTP (car l))
			(APPEND (aplanar (car l)) (aplanar (cdr l)) )
			(APPEND (LIST (car l)) (aplanar (cdr l)))
		)
	)
)