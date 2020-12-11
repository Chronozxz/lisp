(DEFUN list_atom (l a)
	(APPEND l (LIST a))
)


(DEFUN list_atom_rand (l)
	(setq letters '(a b c d e f g h i j k l m n o p q r s t u v w x y z))
	(setq a (RANDOM 36 ))
	(if(>  a 26)
		(setq a (- a 26))
		(setq a (nth a letters))
	)
	(APPEND l (LIST a))
)

(DEFUN list_atom_var (l &rest atoms)
	(APPEND l atoms)
)