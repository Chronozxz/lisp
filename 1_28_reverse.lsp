(DEFUN reverse_rec (l)
	(if (EQUAL l NIL )
		'()
		(setq lp 
			(APPEND 
				(reverse_rec (cdr l)) 
				(LIST (CAR l) )
			)
		)
	)
)

(DEFUN reverse_ite (l)
	(setq lp '())
	(setq ll l)
	(loop
		(if (EQUAL ll nil)
			(RETURN T)
			NIL
		)
		(setq lp (APPEND (LIST(car ll)) lp ))
		(setq ll (cdr ll))
	)
	lp
)