(DEFUN deep (l)
	(if (EQUAL l NIL)
		0
		(MAX
			(if (LISTP (CAR l) )
				(1+ (deep (CAR l)))
				0
			)
			(deep (cdr l))
		)
	)
)