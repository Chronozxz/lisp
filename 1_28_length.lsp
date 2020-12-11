(DEFUN length_rec (l)
	(if(EQUAL l NIL)
		0
		(1+ (length_rec (cdr l)))
	)
)

(DEFUN length_ite (l)
	(setq ll l)
	(setq tam 0)
	(loop
		(if(EQUAL ll NIL)
			(return NIL)
			(setq tam (1+ tam))
		)
		(setq ll (cdr ll))
	)
	tam
)