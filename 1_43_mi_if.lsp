(DEFUN mi_if (a b &rest c)
	(if(EQUAL a T)
		b
		(car c)
	)	
)

(DEFMACRO Mi_if (a b &rest c)
	(if (EQ a T)
		b
		(car c)
	)
)

