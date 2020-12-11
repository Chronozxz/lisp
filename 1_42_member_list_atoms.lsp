(DEFUN member_list_atoms_l (l &rest atoms)
	(setq ans (MAKE-LIST (LENGTH atoms) :INITIAL-ELEMENT T))
	(DOTIMES (current (LENGTH atoms))
		(setq c (nth current atoms))
		(DOTIMES (curr (LENGTH l))
			(if(EQUAL c (nth curr l))
				NIL
				(setq ans 
					(append 
						(BUTLAST ans (- (LENGTH ans) curr) ) 
						(LIST NIL)
						(NTHCDR (+ 1 curr) ans)  
					)
				)
			)
		)
	)
	anss
)