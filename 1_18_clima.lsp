(DEFUN clima (tem)
	(if (< tem 0) 
		'HELADO
		(if (AND (>= tem 0) (<= tem 10))
			 'FRIO
			 (if (AND (> tem 10) (<= tem 20))
			 	'CALIDO
			 	(if (AND (> tem 20) (<= tem 30))
			 		'SOFOCANTE
			 		(if (> tem 30)
			 			'ABRASIVO
			 			NIL
			 		)
			 	)
			 )
		)
	)
)
