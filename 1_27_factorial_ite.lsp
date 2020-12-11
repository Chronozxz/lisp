(DEFUN factorial_ite (N)
	(setq res 1)
	(DOTIMES (cont N )
		(setq res (*  res (1+ cont)))
	)
	res
)