(defun deprecated-test ()
  (+ ( (lambda (a) a) 3)
     (+ ( (lambda (b) b) 4)
        ( (lambda (c) c) 5 )))
)

(defun fc (c)
  c)

(defun test ()
  (let ((five (lambda () 5)))
    ((lambda (c) c) (funcall five))))

