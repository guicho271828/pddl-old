
(in-package :pddl)
(use-syntax :annot)
(optimize*)
;; metatilities:defclass*

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; domain clause getters 

;; (:key ... body...)
(defun find-clause (domain-or-problem-body key)
  (cdr (find-if (lambda (clause) (eq (car clause) key))
		domain-or-problem-body)))

(defmacro define-clause-getter (name key initializer)
  `(defun ,(concatenate-symbols 'parse name) (unparsed-domain-or-problem)
     (declare (type list unparsed-domain-or-problem))
     (if-let ((cl (find-clause unparsed-domain-or-problem ,key)))
       (funcall ,initializer cl)
       (warn "~A not found in this PDDL" ',name))))

(define-clause-getter
    requirements :requirements
  #'identity)

(defun typed-objects (typed-list class)
  (mapcar (rcurry #'change-class class)
	  (parse-typed-list typed-list)))
;;           ^^-- returns PDDL-VARIABLEs

(define-clause-getter
    types :types
  (rcurry #'typed-objects 'pddl-types))

(define-clause-getter
    constants :constants
  (rcurry #'typed-objects 'pddl-constant))

(define-clause-getter 
    predicates :predicates
  (lambda (predicates)
    (handler-bind ((not-found-in-dictionary
		    #'intern-variable-handler))
      (mapcar (lambda (predicate-def)
		(parse-predicate predicate-def nil))
	      predicates))))

(define-clause-getter
    functions :functions
  #'parse-functions)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; actions etc.

(defmacro define-action-getter (name key initializer)
  `(progn
     (defun ,(concatenate-symbols 'parse name) (domain)
       (if-let ((cls (remove-if-not
		      (lambda (clause) (eq (car clause) ,key))
		      domain)))
	 (mapcar (compose ,initializer #'cdr) cls)
	 (warn "~A not found in this PDDL" ',name)))))

(define-action-getter actions :action #'parse-action)


@export
(defun parse-action (action)
  (ematch action
    ((list name
	   :parameters typed-variables
	   :precondition precond
	   :effect effect)
     (let ((*params* (handler-bind ((not-found-in-dictionary
				     #'intern-variable-handler))
		       (parse-typed-list typed-variables nil))))
       (pddl-action :name name
		    :parameters *params*
		    :precondition (parse-pre-GD precond)
		    :effect (parse-effect effect))))))

(define-action-getter durative-actions :durative-action
  #'parse-durative-action)

@export
(defun parse-durative-action (durative-action)
  (not-implemented 'durative-action)
  ;; TODO:: params
  ;; (ematch durative-action
  ;;   ((list name
  ;; 	   :parameters typed-variables
  ;; 	   :duration (list '= '?duration f-exp)
  ;; 	   :condition cond
  ;; 	   :effect effect)
  ;;    (let ((params (parse-typed-list typed-variables)))
  ;;      (pddl-durative-action
  ;;    	:name name
  ;;    	:parameters params
  ;;    	:duration f-exp
  ;;    	:condition (parse-GD cond params)
  ;;    	:effect (parse-effect effect params)))))
  )

(define-action-getter derived-predicates :derived
  #'parse-derived-predicate)

@export
(defun parse-derived-predicate (derived-predicate)
  (not-implemented 'derived-predicate)
  ;; TODO:: params
  ;; (ematch derived-predicate
  ;;   ((list typed-variables effect)
  ;;    (not-implemented 'derived-predicate)
  ;;    (pddl-derived-predicate
  ;;     :parameters (parse-typed-list typed-variables)
  ;;     :effect (parse-GD effect))))
  )