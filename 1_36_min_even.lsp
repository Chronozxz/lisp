(DEFUN min_even (a b)
	(if (> a b)
		(setq minim b)
		(setq minim a)
	)
	(if (= (MOD minim 2) 0)
			T
			NIL
	)
)

(DEFUN min_even_list (l)
	(setq minim (APPLY 'MIN l))
	(if (= (MOD minim 2) 0)
			T
			NIL
	)
)

(DEFUN min_even_n (a &rest b)
	(setq l (append (LIST a) b))
	(setq minim (APPLY 'MIN l))
	(if (= (MOD minim 2) 0)
			T
			NIL
	)
)