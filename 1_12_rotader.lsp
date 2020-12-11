(defun rotader (l)
	(setq fe (LAST l))
	(setq l (BUTLAST l 1))
	(setq l (
		NCONC fe l 
		)
	)
)
