(DEFUN fibonacci (n)
	(if (>= n 0)
		(if (OR (= n 0) (= n 1))
			1
			(+ (fibonacci (- n 1)) (fibonacci (- n 2)))
		)
		NIL
	)
)