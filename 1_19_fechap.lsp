(DEFUN fechap (day month year)
	(setq num_day '(31 28 31 30 31 30 31 31 30 31 30 31));feb 2 29
	(AND 
		(AND (> day 0)(<= day (nth (if(< month 13) (1- month) 0) num_day) ) )
		(AND (> month 0) (< month 13))
		(AND (> year 0) (< month 2020))
	)
)
