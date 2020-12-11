(defun entropy (P)
	(setq k (LENGTH P))
	;(PRINT k)
	(setq sum 0)
	(dotimes (n k)
;		(PRINT n)
		(setq aux (NTH n P))
		(setq sum (+ sum (* aux (log aux))))
	)
	(setq H sum)
)