(in-package :pddl)
(use-syntax :annot)
;; metatilities:defclass*

;; (defmacro define-class-pattern (class-name)
;;   (let ((c (find-class class-name)))
;;     `(eval-when (:load-toplevel :execute)
;;        (defpattern ,class-name ,(class-slot-names c)
;;       `(,',class-name
;;            ,@(iter (for slot-name in (class-slot-names c))
;;                    (collecting `(,slot-name slot-name))))))))

;; (define-class-pattern pddl-domain)

(defmacro define-pddl-class (name superclass slots)
  `(eval-when (:compile-toplevel :load-toplevel :execute)
     (#+sbcl sb-ext:with-unlocked-packages #+sbcl (:cl)
      #-sbcl progn
      (defclass* ,name ,superclass
        ,slots
        (:EXPORT-P t)
        :EXPORT-SLOTS
        :AUTOMATIC-ACCESSORS
        :AUTOMATIC-INITARGS)
      (closer-mop:finalize-inheritance (find-class ',name))
      (define-constructor ,name)
      (define-load-form ,name t))))

(define-pddl-class namable ()
  ((name :type symbol)))
(define-pddl-class pathnamable ()
  ((path :type pathname)))

(define-pddl-class pddl-domain (pathnamable namable)
  ((requirements :type list)
   (types :type list)
   (predicates :type list :initform nil)
   (constants :type list)
   (functions :type list)
   (actions :type list)
   (durative-actions :type list)
   (derived-predicates :type list)))

(declaim (ftype (function (pddl-domain-slot) pddl-domain) domain))
(define-pddl-class pddl-domain-slot ()
  ((domain :type pddl-domain)))
(defmethod initialize-instance :after ((o pddl-domain-slot)
                                       &key (domain *domain*))
  (setf (domain o) domain))

@export
@doc "find the action specified by the designator."
(defgeneric action (pddl-domain designator))
(defmethod action ((dom pddl-domain) (designator symbol))
  (action dom (symbol-name designator)))
(defmethod action ((dom pddl-domain) (designator string))
  (or (find-if (lambda (action)
                 (string= (symbol-name (name action))
                          designator))
               (actions dom))
      (signal "no such action found! : ~a" designator)))

@export
@doc "find a constant specified by the designator."
(defgeneric constant (pddl-domain designator))
(defmethod constant ((dom pddl-domain) (designator symbol))
  (constant dom (symbol-name designator)))
(defmethod constant ((dom pddl-domain) (designator string))
  (or (find-if (lambda (action)
                 (string= (symbol-name (name action))
                          designator))
               (constants dom))
      (signal "no such constant found! : ~a" designator)))


@export
@doc "find the predicate specified by the designator."
(defgeneric predicate (pddl-domain designator))

(defmethod predicate ((dom pddl-domain) (designator symbol))
  (find-if (lambda (predicate)
             (string= (symbol-name (name predicate))
                      (symbol-name designator)))
           (predicates dom)))

(defmethod predicate ((dom pddl-domain) (str string))
  (find-if (lambda (predicate)
             (string= str (symbol-name (name predicate))))
           (predicates dom)))

(declaim (ftype (function (t) list) parameters))
(define-pddl-class pddl-parametrized-object ()
  ((parameters :type list :initform nil)))

@export
@doc "returns t if the arguments of pred1 is more specific than
that of pred2. a predicate p1 is more specific than p2 when:

1. (eqname p1 p2)
2. each parameter of p1 has more specific types than its p2 counterpart.
"
(defun predicate-more-specific-p (pred1 pred2)
  (and (eqname pred1 pred2)
       (every #'pddl-supertype-p
              (mapcar #'type (parameters pred1))
              (mapcar #'type (parameters pred2)))))

@export
@doc "returns t if the type specifiers of pred1 agrees with that of pred2."
(defun predicate-agrees-p (pred1 pred2)
  (and (eqname pred1 pred2)
       (every #'pddl-supertype-p
              (mapcar #'type (parameters pred1))
              (mapcar #'type (parameters pred2)))
       (every #'pddl-supertype-p
              (mapcar #'type (parameters pred2))
              (mapcar #'type (parameters pred1)))))


@export
@doc "returns the number of parameters."
(defun arity (thing)
  (length (parameters thing)))

(define-pddl-class pddl-predicate (pddl-domain-slot
                                   pddl-parametrized-object
                                   namable)
  ())

(define-pddl-class pddl-variable (pddl-domain-slot
                                  namable)
  ((type :initform *pddl-primitive-object-type*)))

(defmethod make-load-form ((o pddl-variable) &optional env)
  (cond
    ((eq o *pddl-primitive-object-type*) '*pddl-primitive-object-type*)
    ((eq o *pddl-primitive-number-type*) '*pddl-primitive-number-type*)
    (t
     (make-load-form-saving-slots
      o
      :slot-names '(name domain type)
      :environment env))))

(define-pddl-class pddl-type (pddl-variable)
  ())

(defmethod make-load-form ((o pddl-type) &optional env)
  (cond
    ((eq o *pddl-primitive-object-type*) '*pddl-primitive-object-type*)
    ((eq o *pddl-primitive-number-type*) '*pddl-primitive-number-type*)
    (t
     (make-load-form-saving-slots
      o
      :slot-names '(name domain type)
      :environment env))))

@export
(defun pddl-supertype (type)
  (type type))

@export
(defun pddl-supertype-p (subtype supertype)
  (or (eq subtype supertype)
      (let ((subtype-1 (pddl-supertype subtype)))
        (unless (eq subtype subtype-1)
          (pddl-supertype-p subtype-1 supertype)))))

@export
(defun pddl-typep (object type)
  (pddl-supertype-p (type object) type))

@export
(defun query-type (domain designator)
  (if (typep designator 'pddl-type)
      (handler-return ((unbound-slot
                        (lambda (c)
                          @ignore c
                          (query-type domain (name designator)))))
        (if (eq domain (domain designator))
            designator
            (query-type domain (name designator))))
      (find designator (types domain)
            :key (compose #'string-upcase #'name)
            :test #'string=)))

@export
(defvar *pddl-primitive-object-type*
  (let ((pt (pddl-type :name 'object
                       :type nil))) ; to suppress the reference to
                                    ; *pddl-primitive-object-type* specified in the
                                    ; :initform of pddl-variable
    (setf (type pt) pt)
    pt))

@export
(defvar *pddl-primitive-number-type*
  (let ((pt (pddl-type :name 'number
                       :type nil)))
    (setf (type pt) pt)
    pt))

(define-pddl-class pddl-constant (pddl-variable)
  ())

(define-pddl-class pddl-function (pddl-predicate)
  ((type :initform *pddl-primitive-number-type*)))
@export
@doc "find the pddl-function specified by the designator."
(defun query-function (domain name)
  (find name (functions domain)
        :key (compose #'string-upcase #'name)
        :test #'string=))

(define-pddl-class pddl-assign-op (pddl-domain-slot)
  ((place-function :type function)
   (value-function :type function)
   (source :type cons)
   (%params :type cons)))

(define-pddl-class pddl-action (pddl-domain-slot
                                pddl-parametrized-object
                                namable)
  (precondition
   effect
   add-list
   delete-list
   assign-ops
   positive-preconditions
   negative-preconditions))

(defmethod action ((dom pddl-domain) (designator pddl-action))
  (find designator (actions dom)))

(defmethod add-list ((a pddl-action))
  (with-memoising-slot (add-list a)
    (let ((acc nil))
      (walk-tree (lambda (branch cont)
                   (match branch
                     ((andp rest)
                      (funcall cont rest))
                     ((type pddl-predicate)
                      (push branch acc))))
                 (effect a))
      acc)))

(defmethod delete-list ((a pddl-action))
  (with-memoising-slot (delete-list a)
    (let ((acc nil))
      (walk-tree (lambda (branch cont)
                   (match branch
                     ((andp rest)
                      (funcall cont rest))
                     ((notp (and pred (type pddl-predicate)))
                      (push pred acc))))
                 (effect a))
      acc)))

(defmethod assign-ops ((a pddl-action))
  (with-memoising-slot (assign-ops a)
    (let ((acc nil))
      (walk-tree (lambda (branch cont)
                   (match branch
                     ((andp rest)
                      (funcall cont rest))
                     ((type pddl-assign-op)
                      (push branch acc))))
                 (effect a))
      acc)))

(defmethod positive-preconditions ((a pddl-action))
  (with-memoising-slot (positive-preconditions a)
    (let ((acc nil))
      (walk-tree (lambda (branch cont)
                   (match branch
                     ((andp rest)
                      (funcall cont rest))
                     ((type pddl-predicate)
                      (push branch acc))))
                 (precondition a))
      acc)))

(defmethod negative-preconditions ((a pddl-action))
  (with-memoising-slot (negative-preconditions a)
    (let ((acc nil))
      (walk-tree (lambda (branch cont)
                   (match branch
                     ((andp rest)
                      (funcall cont rest))
                     ((notp (and pred (type pddl-predicate)))
                      (push pred acc))))
                 (precondition a))
      acc)))


(define-pddl-class pddl-durative-action (pddl-domain-slot namable)
  ((parameters :type pddl-variable)
   duration
   condition
   effect))

(define-pddl-class pddl-derived-predicate (pddl-domain-slot)
  ((parameters :type pddl-variable)
   effect))
