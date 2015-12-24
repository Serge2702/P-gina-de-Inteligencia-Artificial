(defvar salida (make-array 100))
(loop for k from 0 to 99 do (setf (aref salida k) (* 10 k)))
(print salida)

