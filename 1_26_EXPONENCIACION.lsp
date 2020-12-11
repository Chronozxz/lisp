(DEFUN EXPONENCIACION (x y)
	(setq exp 1)
	(DOTIMES (contador y)
		(setq exp (* exp x))
	)
	exp
)
