(defun deprecated-test ()
  (+ ( (lambda (a) a) 3)
     (+ ( (lambda (b) b) 4)
        ( (lambda (c) c) 5 )))
)

(defun fc (c)
  c)

(defun test1 ()
  (
   (lambda (c) (funcall c))
   (lambda () 13)))

(defun testbw1 ()
  (
   (lambda (c) (if (functionp c) (funcall c) c))
   14))

   (lambda (a) (if (functionp a) (funcall a) a))
   (lambda (b) (if (functionp b) (funcall b) b))
   ( (lambda (c) (if (functionp c) (funcall c) c)) 5)

;;; (defun test (a b)
;;;   (+ a (if (numberp b) b (funcall b))))
(defun evl (x) (if (numberp x) x (funcall x)))

;;; (defun test (a b)
;;;   (+ (evl a) (evl b)))

;;; (defun test (a &rest b)
;;;   (car 
;;;    (cons (+ (evl a) (car b)) (cdr b))))

;;; (defun test (a)
;;;   (car
;;;    (cons
;;;     (+ (evl (car a)) (evl (second a)))
;;;     (cddr a))))

;;; (defun test (a)
;;; (car
;;;  (cons (+ (evl (first  a)) (evl(second a))) (cddr a))))

;;; (defmacro $eval (func x args)
;;;   `(funcall ,func ,x ,args))

;;; (defun f (args)
;;;   ($eval
;;;    (lambda (a args)
;;;      ($eval
;;;       (lambda (b args)
;;;         ($eval
;;;          (lambda (c args)
;;;            (+ a (+ b c)) )
;;;          (car args)
;;;          (cdr args))
;;;       (car args)
;;;       (cdr args)))
;;;      (car args)
;;;      (cdr args))))


;;; (defun f (args)
;;;   ($eval (lambda (x args) x)
;;;          (car args)
;;;          (cdr args)))

;;; (defparameter $f (lambda (x args) x))

;;; (defun ftest ()
;;;   (lambda (a)
;;;     (lambda (b)
;;;       (lambda (c)
;;;         (+ a (+ b c))))))

;;; (defun $fa (a args) a)
;;; (defun $fb (b args) b)

;;; (defmacro $eval (func args)
;;;   `(funcall ',func (car ,args) (cdr ,args)))

;;; (defun f (args)
;;;   ($eval $fa
;;;          args))

;;; (defun test ()
;;;   (f '(4 5 6)))

;;; (defun ftest (args)
;;;   (
;;;    (lambda (a)
;;;      (
;;;       (lambda (b)
;;;         (
;;;          (lambda (c)
;;;            (+ a (+ b c)))
;;;          (third args)))
;;;       (second args)))
;;;    (first args)))

;;; (defun ftest (args)
;;;   (
;;;    (lambda ()
;;;      (
;;;       (lambda ()
;;;         (
;;;          (lambda ()
;;;            (+ (first args) (+ (second args) (third args))))))))))
;;;     
(defun ftest (args)
  (
   (lambda ()
     (
      (lambda ()
        (
         (lambda ()
           (+ (first args) (+ (second args) (third args))))))))))
    
  