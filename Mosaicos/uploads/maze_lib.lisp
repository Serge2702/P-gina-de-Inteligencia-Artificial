;(setq sb-impl::*default-external-format* :UTF-8)
(defvar *algorithms-list* nil)
(defvar *swapped* nil)
(defvar *goal*)
(defvar *start*)
(defvar *solution* nil)
(defvar *exec_time* 100000)
(defvar *num_algorithm* 0)
(defvar *num_laberinto* 0)

(defclass maze nil 
  ((data
     :initarg :data
     :initform (make-array '(1 1)))
   (start_position
     :initarg :start_position
     :initform #(0 0))
   (goal_position
     :initarg :goal_position
     :initform #(1 1))
   (dimensions
     :initarg :dimensions
     :initform '(1 1))))

(defvar *maze* nil)
(defvar *algorithms-list* nil)
(load "uploads/maze_scripts.lisp")

(defparameter *maze-list* (list 'maze_chico 'maze_normal 'maze_forma 'maze_tall 'unidos 'irregular 'enorme))
(defun get-maze-data ()
  ;Obtiene los datos del laberinto
  (slot-value *maze* 'data))

(defun get-cell-walls (x y)
  (let ((maze_size (array-dimensions (get-maze-data))))
    (cond
      ((and (>= x 0) (< x (nth 0 maze_size)) (>= y 0) (< y (nth 1 maze_size))) 
       (aref (get-maze-data) x y))
      (t (error "Coordenadas fuera de las dimensiones del laberinto.")))))

;│┊┌┐└┘┄┈─
(defun draw-cell-walls (x y)
  ;Dibuja las paredes del laberinto, solo como referencia.
  (let ((paredes (get-cell-walls x y)))
    (case paredes
      (0 (format t "~%~%~%"))
      (1 (format t "────~%~%"))
      (2 (format t "   │~%   │~%"))
      (3 (format t "───┐~%   │~%"))
      (4 (format t "~%~%────"))
      (5 (format t "────~%~%────"))
      (6 (format t "   │~%   │~%───┘"))
      (7 (format t "───┐~%   │~%───┘"))
      (8 (format t "│~%│~%"))
      (9 (format t "┌───~%│~%"))
      (10 (format t "│  │~%│  │~%"))
      (11 (format t "┌──┐~%│  │~%"))
      (12 (format t "│~%│~%└───"))
      (13 (format t "┌───~%│~%└───"))
      (14 (format t "│  │~%│  │~%└──┘"))
      (15 (format t "┌──┐~%│  │~%└──┘")))))

(defun get-maze-rows ()
;Regresa las filas del laberinto.
  (first (slot-value *maze* 'dimensions)))

(defun get-maze-cols ()
;Regresa las columnas del laberinto
  (second (slot-value *maze* 'dimensions)))

(defun set-maze-dimensions ()
  ;Define las dimensiones del laberinto. Sólo se usa una vez cuando se define por
  ;primera vez un objeto de laberinto.
  (setf (slot-value *maze* 'dimensions) (array-dimensions (get-maze-data))))

;(setq *maze* 
  ;(make-instance 'maze :data #2A((9 1 1 3 9 1 1 3 9 1) 
                                 ;(8 0 4 6 8 0 0 2 8 0) 
                                 ;(8 0 1 1 0 2 8 0 0 2) 
                                 ;(8 0 4 4 4 6 12 4 4 6) 
                                 ;(8 2 9 1 1 3 9 1 1 1) 
                                 ;(8 2 8 0 0 2 8 0 4 4) 
                                 ;(8 0 0 2 8 2 8 0 1 3) 
                                 ;(12 4 4 6 8 2 12 4 0 2) 
                                 ;(9 1 1 1 0 0 1 1 0 2) 
                                 ;(12 4 4 4 4 4 4 4 4 6)) 
                 ;:start_position #(9 0) 
                 ;:goal_position #(9 4)))

;(set-maze-dimensions)

(defmacro add-algorithm (algoritmo)
  ;Añade un algoritmo a ejecutar.
  `(setq *algorithms-list* (append *algorithms-list* (list ,algoritmo))))

(defun print-function-list ()
  ;Imprime la lista de los algoritmos que están registrados.
  (let ((inicio "<select name='algorithms' id='algorithms'>")
        (fin "</select>")
        (salida "")
        (contador 0))
    (cond
      (*algorithms-list* 
       (loop for k in *algorithms-list* do
        (setq salida (concatenate 'string salida "<option value=" (format nil "~A" contador) ">" (string k) "</option>"))
        (setq contador (+ 1 contador)))
       (format t "~A" (concatenate 'string inicio salida fin)))
      (t ))))

(defmacro select-maze (num)
;Cambia el laberinto a procesar
`(progn (setq *maze* (eval (nth ,num *maze-list*))) 
    (set-maze-dimensions)
    (setq *num_laberinto* ,num)
    (setq *start* (slot-value *maze* 'start_position))
    (setq *goal* (slot-value *maze* 'goal_position))
    nil))

(defun print-solution ()
  ;imprime la solución encontrada.
  (format t "numero_laberinto=~S;" *num_laberinto*)
  (format t "nombre_algoritmo=~S;" (symbol-name (nth *num_algorithm* *algorithms-list*)))
  (format t "exec_time=~S;" *exec_time*)
  (format t "solucion=[")
  (loop for k in *solution* do
        (format t "~S," k)) 
  (format t "];"))

(defun exec_algorithm (num)
  ;Ejecuta el algoritmo y mide el tiempo que tardó en ejecutarse.
  (let ((t_inicio (get-internal-real-time)))
    (setq *num_algorithm* num)
    (funcall (nth num *algorithms-list*))  
    (setq *exec_time* (- (get-internal-real-time) t_inicio))) )

(defun start-maze ()
  ;Función para procesar la línea de comandos.
  (loop for k from 1 below (length *posix-argv*) do
        (eval (read-from-string (nth k *posix-argv*)))))
