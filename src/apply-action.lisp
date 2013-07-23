(in-package :pddl)
(use-syntax :annot)

@export
(defun apply-action (action match-set states)
  (assert (= (arity action) (/ (length match-set) 2)))
  (assert (iter (for var in (parameters action))
		(always (getf match-set var))))

  (format t
	  "~%~@<APPLY-ACTION: ~@;~
             match:~:@_~a~:@_~
             action:~:@_~a~:@_~
             eff+:~:@_~a~:@_~
             eff-:~:@_~a~:@_~
             states:~:@_~a~:@_~
          ~;~:@>"
	  match-set
	  action
	  (add-list action)
	  (delete-list action)
	  states)

  (let ((new-states (copy-seq states)))
    (iter (for effect-pred in (delete-list action))
	  (setf new-states
		(delete-if
		 (lambda (state)
		   (and (eqname state effect-pred)
			(equalp (parameters state)
				(iter (for param in (parameters effect-pred))
				      (collecting (getf match-set param))))))
		 new-states)))

    (iter (for effect-pred in (add-list action))
	  (push (pddl-atomic-state
		 :name (name effect-pred)
		 :parameters
		 (iter (for param in (parameters effect-pred))
		       (collecting (getf match-set param))))
		new-states))
    new-states))
