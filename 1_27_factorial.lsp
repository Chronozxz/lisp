(DEFUN factorial (N)
	( if (= N 0)
		1
		(* N (factorial (1- N)))
	)
)