(defun rotaizq (l)
	(setq fe (CAR l))
	(setq l (REST l))
	(NCONC l (LIST fe))
)
