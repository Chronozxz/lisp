(DEFUN fllist (l)
	(setq lp (first l))
	(setq tam (LENGTH l))
	(NCONC 
		(LIST lp) 
		(LIST 
			(nth (1- tam) l)
		) 
	)
)
