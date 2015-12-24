(defvar chico 
  (make-instance 'maze 
                 ;Los datos se almacenan en un arreglo bidimensional. Cada
                 ;"sublista" es una fila.
                 :data #2A((13 1 3 12 3) (9 6 12 3 10) (12 5 3 10 10) (3 9 6 10 10) (12 6 13 4 6))
                 ;Inicio y fin del laberinto. (fila columna).
                 :start_position #(0 3)
                 :goal_position #(3 0)))
