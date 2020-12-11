(DEFUN elem_list_ap (a l)
	(if (find a l)
		NIL
		(setq l (APPEND l (LIST a)))
	)	
)
