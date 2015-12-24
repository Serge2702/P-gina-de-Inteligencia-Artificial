;;;Alumno: Sergio Gabriel Morales Valencia
;;;Busqueda de solucion de los mosaicos.
(load (second *posix-argv*))
(defvar *sgmv_solucion_alterada* nil)

;Macros y otras cosillas utiles
(defmacro inc (argumento) `(setq ,argumento (+ ,argumento 1)))  ;Incrementa ubna variable
(defmacro dec (argumento) `(setq ,argumento (- ,argumento 1)))  ;Decrementa una variable

(defvar *sgmv_tabla_piezas* (make-hash-table :test 'equal))
(setf (gethash "A" *sgmv_tabla_piezas*) '(7 4 3 4))
(setf (gethash "B" *sgmv_tabla_piezas*) '(1 10 5 7 )) 
(setf (gethash "C" *sgmv_tabla_piezas*) '(3 11 9 3 )) 
(setf (gethash "D" *sgmv_tabla_piezas*) '(3 8 5 )) 
(setf (gethash "E" *sgmv_tabla_piezas*) '(10 11 10 )) 
(setf (gethash "F" *sgmv_tabla_piezas*) '(3 1 10 1 )) 
(setf (gethash "G" *sgmv_tabla_piezas*) '(2 3 11 10 )) 
(setf (gethash "H" *sgmv_tabla_piezas*) '(2 2 7 6 )) 
(setf (gethash "I" *sgmv_tabla_piezas*) '(8 2 8 )) 
(setf (gethash "J" *sgmv_tabla_piezas*) '(9 8 5 )) 
(setf (gethash "K" *sgmv_tabla_piezas*) '(1 2 3)) 
(setf (gethash "L" *sgmv_tabla_piezas*) '(10 5 3 )) 
(setf (gethash "M" *sgmv_tabla_piezas*) '(1 3 4)) 
(setf (gethash "N" *sgmv_tabla_piezas*) '(10 9 8 7)) 
(setf (gethash "O" *sgmv_tabla_piezas*) '(2 5 1)) 
(setf (gethash "P" *sgmv_tabla_piezas*) '(1 11 2 10)) 
(setf (gethash "Q" *sgmv_tabla_piezas*) '(3 7 4)) 
(setf (gethash "R" *sgmv_tabla_piezas*) '(4 7 1 10)) 
(setf (gethash "S" *sgmv_tabla_piezas*) '(10 2 7 )) 
(setf (gethash "T" *sgmv_tabla_piezas*) '(1 9 7 )) 
(setf (gethash "U" *sgmv_tabla_piezas*) '(11 5 8 )) 
(setf (gethash "V" *sgmv_tabla_piezas*) '(1 1 1 2)) 
(setf (gethash "W" *sgmv_tabla_piezas*) '(4 6 7 )) 
(setf (gethash "X" *sgmv_tabla_piezas*) '(6 4 11)) 
(setf (gethash "Y" *sgmv_tabla_piezas*) '(3 1 6)) 
(setf (gethash "Z" *sgmv_tabla_piezas*) '(2 7 10 1)) 

(defvar *sgmv_letra_a_indice* (make-hash-table :test 'equal))
(setf (gethash "A" *sgmv_letra_a_indice*) 1)
(setf (gethash "B" *sgmv_letra_a_indice*) 2) 
(setf (gethash "C" *sgmv_letra_a_indice*) 3) 
(setf (gethash "D" *sgmv_letra_a_indice*) 4) 
(setf (gethash "E" *sgmv_letra_a_indice*) 5) 
(setf (gethash "F" *sgmv_letra_a_indice*) 6) 
(setf (gethash "G" *sgmv_letra_a_indice*) 7) 
(setf (gethash "H" *sgmv_letra_a_indice*) 8) 
(setf (gethash "I" *sgmv_letra_a_indice*) 9) 
(setf (gethash "J" *sgmv_letra_a_indice*) 10) 
(setf (gethash "K" *sgmv_letra_a_indice*) 11) 
(setf (gethash "L" *sgmv_letra_a_indice*) 12) 
(setf (gethash "M" *sgmv_letra_a_indice*) 13) 
(setf (gethash "N" *sgmv_letra_a_indice*) 14) 
(setf (gethash "O" *sgmv_letra_a_indice*) 15) 
(setf (gethash "P" *sgmv_letra_a_indice*) 16) 
(setf (gethash "Q" *sgmv_letra_a_indice*) 17) 
(setf (gethash "R" *sgmv_letra_a_indice*) 18) 
(setf (gethash "S" *sgmv_letra_a_indice*) 19) 
(setf (gethash "T" *sgmv_letra_a_indice*) 20) 
(setf (gethash "U" *sgmv_letra_a_indice*) 21) 
(setf (gethash "V" *sgmv_letra_a_indice*) 22) 
(setf (gethash "W" *sgmv_letra_a_indice*) 23) 
(setf (gethash "X" *sgmv_letra_a_indice*) 24) 
(setf (gethash "Y" *sgmv_letra_a_indice*) 25) 
(setf (gethash "Z" *sgmv_letra_a_indice*) 26) 



(defvar prueba)
(setq prueba '(NIL NIL NIL NIL NIL ("L" 120) NIL NIL NIL NIL NIL NIL NIL ("Y" 120) NIL NIL NIL NIL))

;En esta lista se tiene que tipo de casilla es cada una. Los tipos de casilla son los siguientes:
;t_normal y t_cabeza. Si el triangulo esta vertical o de cabeza.
;c_normal, c_izq y c_der. Si el cuadrado esta normal, inclinado a la izquierda o a la derecha.
(if (not (boundp 'sgmv_lista_tipos_casillas))
  (defconstant sgmv_lista_tipos_casillas 
			   '(:c_normal :c_normal 
						   :c_der :t_normal :t_cabeza :t_normal :t_cabeza :t_normal :c_izq 
						   :c_izq :t_cabeza :t_normal :t_cabeza :t_normal :t_cabeza :c_der 
						   :t_cabeza :t_cabeza)))

;Esta enlista las relaciones que hay entre los mosaicos colocados en el tablero.
;En este caso, cada indice representa una orilla, y ahi contiene una lista
;indicando el indice del mosaico y el indice del lado con el que colinda.
(if (not (boundp 'sgmv_relaciones_mosaicos_en_tablero))
	(defconstant sgmv_relaciones_mosaicos_en_tablero
		'(  ; 0        1      2       3
			(nil	(1 3)	(4 2)	 nil )	;0
			(nil	 nil	(6 2)	(0 1))	;1
			(nil	(3 2)	 nil	 nil )	;2
			((4 1)	(10 2)	(2 1))			;3
			((5 2)	(3 0)	(0 2))			;4
			((6 1)	(12 2)	(4 0))			;5
			((7 2)	(5 0)	(1 2))			;6
			((8 2)	(14 2)	(6 0))			;7
			(nil	 nil	(7 0)	nil)	;8
			((10 1)	 nil	 nil	nil)	;9
			((11 2)	(9 0)	(3 1))			;10
			((12 1)	(16 2)	(10 0))			;11
			((13 2)	(11 0)	(5 1))			;12
			((14 1)	(17 2)	(12 0))			;13
			((15 3)	(13 0)	(7 1))			;14
			(nil	 nil	 nil	(14 0))	;15
			(nil	 nil	(11 1))			;16
			(nil	 nil	(13 1))			;17
		)
	)
)

(defun sgmv_indices_rotados (pieza angulo)
"Regresa el orden en el que se deben tomar los indices al momento de rotar una pieza"
  (cond
    ((= 3 (length pieza)) 
     (cond
  	 ((or (= angulo   0)(= angulo  60)) '(0 1 2))
  	 ((or (= angulo 120)(= angulo 180)) '(2 0 1))
  	 ((or (= angulo 240)(= angulo 300)) '(1 2 0))
  	 (t nil)))
	((= 4 (length pieza))
	 (cond
  	 ((or (= angulo   0)(= angulo  30)(= angulo  60)) '(0 1 2 3))
  	 ((or (= angulo  90)(= angulo 120)(= angulo 150)) '(3 0 1 2))
       ((or (= angulo 180)(= angulo 210)(= angulo 240)) '(2 3 0 1))
       ((or (= angulo 270)(= angulo 300)(= angulo 330)) '(1 2 3 0))
       (t nil)))
    (t nil)))

(defun sgmv_numeros_mosaico (mosaico angulo)
"Regresa los numeros del mosaico despues de haberlo rotado"
  (let ((indices (sgmv_indices_rotados mosaico angulo)))
    (loop for ka in indices collect (nth ka mosaico))))

;(defun sgmv_numeros_mosaico (mosaico angulo)
;"Regresa los numeros del mosaico despues de haberlo rotado"
  ;(let* ((num_mosaico (gethash mosaico *sgmv_tabla_piezas*))(indices (sgmv_indices_rotados num_mosaico angulo)))
    ;(loop for ka in indices collect (nth ka num_mosaico))))

(defun sgmv_tipo_casilla (indice)
"Indica de que tipo es la casilla indicada por el indice"
	(nth indice sgmv_lista_tipos_casillas))

(defun sgmv_misma_forma (mosaico indice)
"Indica si el mosaico tiene la misma forma del mosaico que la del hueco en donde va a entrar"
  (case (length mosaico)
	(3
	 (cond
	   ((member (nth indice sgmv_lista_tipos_casillas) '(:t_cabeza :t_normal)) t)
	   (t nil)))
	(4
	 (cond
	   ((member (nth indice sgmv_lista_tipos_casillas) '(:c_der :c_izq :c_normal)) t)
	   (t nil)))))



(defun sgmv_numeros_vecinos (indice estado)
  "Indica que numeros colindan con esta casilla"
  (let ((casilla))
    (loop for ka in (nth indice sgmv_relaciones_mosaicos_en_tablero) collect
          (cond
            ((null ka) nil)
            (t 
              (setq casilla (nth (first ka) estado) )
              (nth (second ka) (sgmv_numeros_mosaico (first casilla) (second casilla))))))))


(defun sgmv_coinciden_numeros (mosaico angulo indice estado)
"Revisa si los numeros del mosaico coinciden con los que lo rodea."
	(let ((vecinos (sgmv_numeros_vecinos indice estado))(num_mosaico (sgmv_numeros_mosaico mosaico angulo))(salida t))
		(loop for ka from 0 below (length vecinos) until (null salida) do
			(cond
				((nth ka vecinos) 
					(if (not (= (nth ka vecinos) (nth ka num_mosaico))) (setq salida nil) )
				)
				(t nil)
			)
		)
		salida
	)
)

(defun sgmv_rotacion_valida (rotacion indice)
"Verifica que la rotacion sea valida para dicha casilla"
	(case (nth indice sgmv_lista_tipos_casillas)
		(:t_normal (if (member rotacion '(0 120 240)) t nil ))
		(:t_cabeza (if (member rotacion '(60 180 300)) t nil ))
		(:c_normal (if (member rotacion '(0 90 180 270)) t nil ))
		(:c_der (if (member rotacion '(30 120 210 300)) t nil ))
		(:c_izq (if (member rotacion '(60 150 240 330)) t nil ))
	)
)


;(defun sgmv_verifica_mosaico (mosaico rotacion indice estado)
;"Verifica si es posible colocar un mosaico en una posicion del tablero."
	;(if (sgmv_misma_forma mosaico indice)
		;(if (sgmv_rotacion_valida rotacion indice) 
			;(if (sgmv_coinciden_numeros mosaico rotacion indice estado) t nil)
			;nil
		;)
		;nil
	;)
;)

(defun sgmv_verifica_mosaico (mosaico rotacion indice estado)
  "Verifica si es posible colocar un mosaico en una posicion del tablero."
  (if (and (sgmv_misma_forma mosaico indice)(sgmv_rotacion_valida rotacion indice)(sgmv_coinciden_numeros mosaico rotacion indice estado))
    t nil))

(defun sgmv_convierte_solucion nil
  (setq *sgmv_solucion_alterada* 
        (loop for k in *solution* collect
              (list (gethash (first k) *sgmv_tabla_piezas*) (second k)))))

(defun sgmv_revisar_longitud ()
  ;Revisa la longitud de la solución.
  (if (not (= 18 (length *solution*))) (error "La solución no es de la longitud deseada. Deben ser 18 elementos") t))

(defun sgmv_revisar_contenido_solucion nil
  ;Revisa que el contenido de la solución sea en el formato deseado.
  (loop for indice in *solution* do 
        (if (not (and (stringp (first indice)) (numberp (second indice)))) (error "La solución no está en el formato deseado. Debe ser una lista conteniendo listas de dos elementos: la letra del mosaico y el ángulo re rotación."))) t)

(defun sgmv_revisar_piezas_duplicadas nil
  ;Revisa que no haya piezas duplicadas en el trablero
  (let ((lista_piezas nil))
    (loop for pieza in *solution* do
          (setq lista_piezas (append lista_piezas (list (first pieza)))))
    (if (> 18 (length (remove-duplicates lista_piezas :test #'equal ))) (error "Existen piezas duplicadas en la solución."))))

;Aquí se guardará una lista, en la que cada elemento es un número indicando el
    ;estado de dicha pieza:
    ;0.- correcto
    ;1.- Forma equivocada
    ;2.- rotación equivocada.
    ;3.- números no concuerdan
(defvar *sgmv_vector_piezas_validas* nil)

(defun sgmv_validar_estado nil
  ;Valida que el estado de la solución sea válido.
  (setq *sgmv_vector_piezas_validas* nil)
  (let ((pieza) (rotacion) (contador 0) (resultado))
    (loop for elemento in *sgmv_solucion_alterada* do
          (setq pieza (first elemento))
          (setq rotacion (second elemento))
          (if (sgmv_misma_forma pieza contador) 
            (if (sgmv_rotacion_valida rotacion contador)
              (if (sgmv_coinciden_numeros pieza rotacion contador *sgmv_solucion_alterada*)
                (setq resultado 0)
                (setq resultado 3))
              (setq resultado 2))
            (setq resultado 1))
          (setq *sgmv_vector_piezas_validas* (append *sgmv_vector_piezas_validas* (list resultado)))
          (inc contador))))

(defun sgmv_imprime_soluciones nil
  (format t "~%var estados=[")
  (loop for k in *sgmv_vector_piezas_validas* do
        (format t "~S," k))
  (format t "]; ")
  (format t "var solucion=[")
  (loop for k in *solution* do 
        (format t "[~S,~S]," (gethash (first k) *sgmv_letra_a_indice*) (second k)))
  (format t "];"))

(sgmv_convierte_solucion)
(sgmv_revisar_longitud)
(sgmv_revisar_contenido_solucion)
(sgmv_revisar_piezas_duplicadas)
(sgmv_validar_estado)
(sgmv_imprime_soluciones)
