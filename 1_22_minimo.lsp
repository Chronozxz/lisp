(DEFUN minimo (x y z)
	(if (and (< x y) (< x z) )
		x
		(if (and (< y x) (< y z) )
			y
			z
		)
	)	
)
