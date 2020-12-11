(DEFUN member_rec (s l)
	(if (EQ l NIL)
		NIL
		(if (equal s (car l))
			(setq lp l)
			(member_rec s (cdr l) )
		)
	)
)

(DEFUN member_ite (s l)
	(setq tam (LENGTH l))
	(setq lp NIL)
	(DOTIMES (CONT tam)
		(if (EQUAL s (nth CONT l))
			(setq lp (NTHCDR CONT l))
			NIL
		)	
	)
	lp
)