(DEFUN init_matrix (x y)
	(setq matrix '() )
	(DOTIMES (curr_y y)
		(setq column '() )
		(DOTIMES (curr_x x)
			(format t "(y:~d , x:~d) => " curr_y curr_x)
			(setq column (APPEND column (LIST (read))) )
		)
		(setq matrix (NCONC matrix (LIST column)) )
	)
	matrix
)

(DEFUN sum_diagonal (m)
	(setq size_y (LENGTH m))
	(setq size_x (LENGTH (car m)))
	(setq size 
		(if (> size_y size_x)
			size_x
			size_y
		)
	)
	(setq sum_diag 0)
	(DOTIMES (diag size )
		(setq sum_diag (+ sum_diag (nth diag (nth diag m))) )
	)
		sum_diag
)

(DEFUN sum_matrix (m1 m2)
	(setq size_m1_y (LENGTH m1))
	(setq size_m1_x (LENGTH (car m1)))
	(setq size_m2_y (LENGTH m2))
	(setq size_m2_x (LENGTH (car m2)))
	(setq sum_ms '())
	(if(AND (= size_m1_x size_m2_x) (= size_m1_y size_m2_y) )
		(DOTIMES (curr_y size_m1_y)
			(setq column '() )
			(DOTIMES (curr_x size_m1_x)
				(setq column (APPEND 
								column
								(LIST 
									(+ 
										(nth curr_x (nth curr_y m1))
										(nth curr_x (nth curr_y m2))
									)
								)
							) 
				)
			)
			(setq sum_ms (NCONC sum_ms (LIST column)) )
		)

		(setq sum_ms NIL)
	)
	sum_ms
)

(DEFUN num_matrix (m)
	(setq size_y (LENGTH m))
	(setq size_x (LENGTH (car m)))
	(setq is_matrix_numbers T)
	(DOTIMES (curr_y size_y)
		(DOTIMES (curr_x size_x)
			(if (NUMBERP (nth curr_x (nth curr_y m)) )
				NIL
				(setq is_matrix_numbers NIL)
			)
		)
	)
	is_matrix_numbers
)