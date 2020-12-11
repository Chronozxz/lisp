(DEFUN concat_lists (&rest lp)
	(setq l '())
	(DOTIMES (cont (length lp) )
		(if (AND (LISTP (car lp)) (NOT (EQUAL (car lp) NIL)) )
			(setq l (APPEND l (LIST (car lp)) ) )
			NIL
		)
		(setq lp (cdr lp))
	)
	l
)