;;;Alumno: Sergio Gabriel Morales Valencia
;;;Búsqueda de la salida de un laberinto.

;;;-----------------------------------------------------------------------------
;;;Funciones propias del maze_lib
;;;-----------------------------------------------------------------------------
;(load "maze_lib.lisp")
(load "uploads/maze_lib.lisp")
;(load "/home/archie/public_html/uploads/maze_lib.lisp")
;(load "maze_lib.lisp")
;(defparameter *algorithms-list* (list 'breadth-first 'depth-first 'depth-first-canon 'error_example))
(add-algorithm 'breadth-first)

;;;-----------------------------------------------------------------------------
;;;Parámetros de las funciones de búsqueda.
;;;-----------------------------------------------------------------------------
;Lista de operaciones
(defparameter *lista-operaciones* '(arriba ne derecha se abajo sw izquierda NW))
; (defparameter *lista-operaciones* '(arriba derecha abajo izquierda))
(defparameter *open* nil)
(defparameter *closed* nil)
(defparameter *id* 0)
(defparameter *nodos_expandidos* 0)
(defparameter *long_max_open* 0)
(defparameter *t1real* 0)
(defparameter *t1run* 0)
(defparameter *estado-inicial* nil)
(defparameter *estado-meta* nil)
(defparameter *bandera-fin* nil)

;;;-----------------------------------------------------------------------------
;;;Funciones compartidas por todos los métodos de búsqueda.
;;;-----------------------------------------------------------------------------

(defvar estado-inicial)
(defvar estado-meta)
(defun crea-estado (fila col)
"Crea un estado enlistando la fila y la columna deseadas."
    (list fila col ))


;;Funciones de desplazamiento.
;(defun arriba (estado)
    ;(cond
        ;((null estado) nil)
        ;(t (let* ((fila (first estado)) (col (second estado)) (paredes (get-maze fila col)))
            ;(cond
                ;((= 0 fila) nil)
                ;((member 1 paredes) nil)
                ;(t (crea-estado (- fila 1) col )))))))

;(defun derecha (estado)
    ;(cond
        ;((null estado) nil)
        ;(t (let* ((fila (first estado)) (col (second estado)) (paredes (get-maze fila col)))
        ;(cond
            ;((= (- (get-maze-cols) 1) col) nil)
            ;((member 2 paredes) nil)
            ;(t (crea-estado fila (+ 1 col) )))))))

;(defun abajo (estado)
    ;(cond
        ;((null estado) nil)
        ;(t (let* ((fila (first estado)) (col (second estado)) (paredes (get-maze fila col)))
        ;(cond
            ;((= (- (get-maze-rows) 1) fila) nil)
            ;((member 3 paredes) nil)
            ;(t (crea-estado (+ fila 1) col )))))))

;(defun izquierda (estado)
    ;(cond
        ;((null estado) nil)
        ;(t (let* ((fila (first estado)) (col (second estado)) (paredes (get-maze fila col)))
        ;(cond
            ;((= 0 col) nil)
            ;((member 4 paredes) nil)
            ;(t (crea-estado fila (- col 1) )))))))

;(defun NE (estado)
    ;(cond
        ;((null estado) nil)
        ;(t (let ((fila (first estado)) (col (second estado)) (op1) (op2))
            ;(cond
                ;((or (= col (- (get-maze-cols) 1))(= fila 0)) nil)
                ;(t (setq op1 (derecha (arriba estado))) (setq op2 (arriba (derecha estado))) 
                    ;(cond
                        ;((not (null op1)) op1)
                        ;((not (null op2)) op2)
                        ;(t nil))))))))

;(defun SE (estado)
    ;(cond
        ;((null estado) nil)
        ;(t (let ((fila (first estado)) (col (second estado)) (op1) (op2))
            ;(cond
                ;((or (= col (- (get-maze-cols) 1))(= fila (- (get-maze-rows) 1))) nil)
                ;(t (setq op1 (derecha (abajo estado))) (setq op2 (abajo (derecha estado))) 
                    ;(cond
                        ;((not (null op1)) op1)
                        ;((not (null op2)) op2)
                        ;(t nil))))))))

;(defun SW (estado)
    ;(cond
        ;((null estado) nil)
        ;(t (let ((fila (first estado)) (col (second estado)) (op1) (op2))
            ;(cond
                ;((or (= col 0)(= fila (- (get-maze-rows) 1))) nil)
                ;(t (setq op1 (izquierda (abajo estado))) (setq op2 (abajo (izquierda estado))) 
                    ;(cond
                        ;((not (null op1)) op1)
                        ;((not (null op2)) op2)
                        ;(t nil))))))))

;(defun NW (estado)
    ;(cond
        ;((null estado) nil)
        ;(t (let ((fila (first estado)) (col (second estado)) (op1) (op2))
            ;(cond
                ;((or (= col 0)(= fila 0)) nil)
                ;(t (setq op1 (izquierda (arriba estado))) (setq op2 (arriba (izquierda estado))) 
                    ;(cond
                        ;((not (null op1)) op1)
                        ;((not (null op2)) op2)
                        ;(t nil))))))))

;Funciones de desplazamiento.
(defun arriba (estado)
  (cond
    ((null estado) nil)
    (t (let* ((fila (first estado)) (col (second estado)) (paredes (get-cell-walls fila col)))
         (cond
           ((= 0 fila) nil)
           ((member paredes '(1 3 5 7 9 11 13 15)) nil)
           (t (crea-estado (- fila 1) col )))))))

(defun derecha (estado)
  (cond
    ((null estado) nil)
    (t (let* ((fila (first estado)) (col (second estado)) (paredes (get-cell-walls fila col)))
         (cond
           ((= (- (get-maze-cols) 1) col) nil)
           ((member paredes '(2 3 6 7 10 11 14 15)) nil)
           (t (crea-estado fila (+ 1 col) )))))))

(defun abajo (estado)
  (cond
    ((null estado) nil)
    (t (let* ((fila (first estado)) (col (second estado)) (paredes (get-cell-walls fila col)))
         (cond
           ((= (- (get-maze-rows) 1) fila) nil)
           ((member paredes '(4 5 6 7 12 13 14 15)) nil)
           (t (crea-estado (+ fila 1) col )))))))

(defun izquierda (estado)
  (cond
    ((null estado) nil)
    (t (let* ((fila (first estado)) (col (second estado)) (paredes (get-cell-walls fila col)))
         (cond
           ((= 0 col) nil)
           ((member paredes '(8 9 10 11 12 13 14 15)) nil)
           (t (crea-estado fila (- col 1) )))))))

(defun NE (estado)
  (cond
    ((null estado) nil)
    (t (let ((fila (first estado)) (col (second estado)) (op1) (op2))
         (cond
           ((or (= col (- (get-maze-cols) 1))(= fila 0)) nil)
           (t (setq op1 (derecha (arriba estado))) (setq op2 (arriba (derecha estado))) 
              (cond
                ((not (null op1)) op1)
                ((not (null op2)) op2)
                (t nil))))))))

(defun SE (estado)
  (cond
    ((null estado) nil)
    (t (let ((fila (first estado)) (col (second estado)) (op1) (op2))
         (cond
           ((or (= col (- (get-maze-cols) 1))(= fila (- (get-maze-rows) 1))) nil)
           (t (setq op1 (derecha (abajo estado))) (setq op2 (abajo (derecha estado))) 
              (cond
                ((not (null op1)) op1)
                ((not (null op2)) op2)
                (t nil))))))))

(defun SW (estado)
  (cond
    ((null estado) nil)
    (t (let ((fila (first estado)) (col (second estado)) (op1) (op2))
         (cond
           ((or (= col 0)(= fila (- (get-maze-rows) 1))) nil)
           (t (setq op1 (izquierda (abajo estado))) (setq op2 (abajo (izquierda estado))) 
              (cond
                ((not (null op1)) op1)
                ((not (null op2)) op2)
                (t nil))))))))

(defun NW (estado)
  (cond
    ((null estado) nil)
    (t (let ((fila (first estado)) (col (second estado)) (op1) (op2))
         (cond
           ((or (= col 0)(= fila 0)) nil)
           (t (setq op1 (izquierda (arriba estado))) (setq op2 (arriba (izquierda estado))) 
              (cond
                ((not (null op1)) op1)
                ((not (null op2)) op2)
                (t nil))))))))

;;;-----------------------------------------------------------------------------
;;;Funciones compartidas por los algoritmos de búsqueda ciega.
;;;-----------------------------------------------------------------------------
(defun crea_nodo (id_ancestro estado operador)
"Crea un nodo. Este contiene la siguiente información:
    id: Número único de identificación. Este número se incrementa automáticamente 
        conforme se crean nuevos nodos, por ese motivo no se pide como argumento.
    id ancestro: indica el número de identificación del nodo del cual desciende
    estado: indica el estado del nodo.
    operador: indica que operación se le aplicó al nodo padre para obtener este estado."
  (setq *id* (+ 1 *id*))
  (list *id* id_ancestro estado operador))

(defun estado_nodo (nodo)
"Devuelve el estado contenido dentro de un nodo"
    (third nodo))

(defmacro inserta_nodo (nodo lista metodo)
"Inserta un nodo en una lista. El argumento 'metodo' puede ser :pofundo o :ancho.
En el caso :profundo, el nodo se introducirá con push como si la lista se tratara 
de una cola. En el caso :ancho, el nodo se añade al final de la lista como si estado
fuera una cola."
    `(case ,metodo
        (:profundo (push ,nodo ,lista))
        (:ancho (encola ,nodo ,lista))
    )
)

(defmacro extrae_nodo (lista metodo)
"Extra el siguiente nodo a analizar de una lista. El argumento 'metodo' puede ser
:profundo o :ancho. En el caso de :profundo, se usa la macro pop considerando a 
la lista como una pila. En el caso :ancho, se extrae el primer elemento considerando
a la lista como una cola"
    `(case ,metodo
        (:profundo (pop ,lista))
        (:ancho (saca_cola ,lista))
    )
)
  
(defmacro añade_nodo_a_memoria (nodo) 
"Añade un nodo a memoria. Agrega el nodo al final de la lista *closed*"
    `(setq *closed* (append *closed* (list ,nodo)))
)

(defun expande (nodo lista_m)
"Recibe un nodo y la lista de operaciones que es posible aplicar en este problema.
Apica en orden cada operación al estado del nodo y revisa que el estado resultante
sea el estado meta. Si lo es, entonces activa la bandera-fin para indicar que se
ha encontrado la solución. Si no lo es, se revisa que el estado no esté ya contenido 
en la memoria. Al final regresa una lista con los nuevos nodos que descienden del 
nodo original."
    (cond
        ((null lista_m) nil)
        (t (let ( (estado_resultante (funcall (first lista_m) (estado_nodo nodo))))
            (cond
                ((null estado_resultante) (expande nodo (rest lista_m)))
                ((equal estado_resultante *estado-meta*) (setq *bandera-fin* T) (list (crea_nodo (first nodo) estado_resultante (first lista_m))))
                ((estado_en_memoria estado_resultante *closed*) (expande nodo (rest lista_m)))
                (t (cons (crea_nodo (first nodo) estado_resultante (first lista_m))
                    (expande nodo (rest lista_m))))
            )
            )
        )
    )
)
           
(defmacro encola (objeto cola)
"Agrega un objeto al final de una lista, colocándolo al final de la cola"
    `(setq ,cola (append ,cola (list ,objeto)))
)

(defmacro saca_cola (cola)
"Regresa el objeto al principio de una cola. Modifica la cola para eliminar el
objeto extraído."
    (let ((salida (gensym  "salida-") ))
        `(let ((,salida (first ,cola)))
            (setq ,cola (rest ,cola))
            ,salida
        )
    )
)

(defun estado_en_memoria (estado memoria)
"Revisa que el estado no esté ya presente en la memoria. Si ya está, regresa t. 
En caso contrario regresa nil."
    (cond
        ((null memoria) nil)
        ((equal estado (estado_nodo (first memoria))) t)
        (t (estado_en_memoria estado (rest memoria)))
    )
)

(defun rastrea_solucion (nodo)
"Regresa una lista conteniendo los nodos en el orden que deben seguirse para llegar
a la solución. Para esto busca el nodo padre, y funciona recursivamente hasta 
encontrar el nodo del estado inicial, cuyo id del padre es 0."
    (cond
        ((null nodo) nil)
        (t (append (rastrea_solucion (busca_padre nodo *closed*)) (list nodo)))
    )
)

(defun busca_padre (nodo memoria)
"Busca el padre del nodo en la memoria"
    (cond
        ((null memoria) nil)
        ((= (second nodo) (first (first memoria))) (first memoria))
        (t (busca_padre nodo (rest memoria)))
    )
)

(defun traduce (operacion)
"Traduce el nombre de los operadores de movimiento a variabes que CL-MAZE puede 
entender para mostrar la solución."
        (case operacion
            (ARRIBA 0)
            (ABAJO 4)
            (DERECHA 2)
            (IZQUIERDA 6)
            (NE 1)
            (SE 3)
            (NW 7)
            (SW 5)
            ))

(defun imprime_solucion (solucion)
"Imprime la solución obtenida con rastrea_solucion."
    (let ((lista_solucion))
    ;     (format t "~%ESTADO INICIAL: ~S~%" (third (first solucion)))
        (loop for k in (rest solucion) do
            ; (format t "~S --> ~S~%" (fourth k) (third k))
            (setq lista_solucion (append lista_solucion (list (traduce (fourth k)))))
        )
        ; (format t "~%")
        ;(print lista_solucion)
        lista_solucion
    )
)

(defun breadth-first ()
"Busca la salida del laberinto por anchura primero. Este es el método mejorado, 
en el que se evita crear nuevos nodos que contengan un estado ya visitado anteriormente."
    (setq estado-inicial (coerce *start* 'list))
    (setq estado-meta (coerce *goal* 'list))
    (setq *id* 0)
    (setq *open* nil)
    (setq *closed* nil)
    (setq *nodos_expandidos* 0)
    (setq *long_max_open* 0)
    (setq *estado-meta* estado-meta)
    (setq *bandera-fin* nil)
    (setq *t1real* (get-internal-real-time))
    (setq *t1run* (get-internal-run-time))
    (let ((nodo nil) (sucesores nil) (solucion nil))
        (setq nodo (crea_nodo 0 estado-inicial nil))
        (inserta_nodo nodo *open* :ancho)
        (loop until (null *open*) do 
            (if (> (length *open*) *long_max_open*) (setq *long_max_open* (length *open*)))
            (setq nodo (extrae_nodo *open* :ancho))
            (añade_nodo_a_memoria nodo)
            (setq sucesores (expande nodo *lista-operaciones*))
            (setq *nodos_expandidos* (+ 1 *nodos_expandidos*))
			(cond
				(*bandera-fin*
					(setq solucion (rastrea_solucion (first (last sucesores)))) 
					(imprime_datos_solución solucion "Búsqueda ancho (Mejorado)")
					(return (setq *solution* (imprime_solucion solucion)))
				)
            )
            (loop for k in sucesores do (añade_nodo_a_memoria k)(inserta_nodo k *open* :ancho))
        )
            
    )
)


(defun depth-first ()
  "Busca la salida del laberinto por profundidad primero. Este es el método mejorado, 
  en el que se evita crear nuevos nodos que contengan un estado ya visitado anteriormente."
  (setq estado-inicial (coerce *start* 'list))
  (setq estado-meta (coerce *goal* 'list))
  (setq *id* 0)
  (setq *open* nil)
  (setq *closed* nil)
  (setq *nodos_expandidos* 0)
  (setq *long_max_open* 0)
  (setq *estado-meta* estado-meta)
  (setq *bandera-fin* nil)
  (setq *t1real* (get-internal-real-time))
  (setq *t1run* (get-internal-run-time))
  (let ((nodo nil) (sucesores nil) (solucion nil))
    (setq nodo (crea_nodo 0 estado-inicial nil))
    (inserta_nodo nodo *open* :profundo)
    (loop until (null *open*) do 
          (if (> (length *open*) *long_max_open*) (setq *long_max_open* (length *open*)) )
          (setq nodo (extrae_nodo *open* :profundo))
          (añade_nodo_a_memoria nodo)
          (setq sucesores (expande nodo *lista-operaciones*))
          (setq *nodos_expandidos* (+ 1 *nodos_expandidos*))
          (cond
            (*bandera-fin*
              (setq solucion (rastrea_solucion (first (last sucesores)))) 
              ;(imprime_datos_solución solucion "Búsqueda profundo (Mejorado)")
              (setq *solution* (imprime_solucion solucion))
              (return nil)
              )
            )
          (loop for k in sucesores do (añade_nodo_a_memoria k)(inserta_nodo k *open* :profundo))
          )
    )
  )

(defun breadth-first-canon ()
  "Busca la salida del laberinto por anchura primero. Este es el método canónico, 
  puede tarder mucho tiempo en encontrar una solución"
  (setq estado-inicial (coerce *start* 'list))
  (setq estado-meta (coerce *goal* 'list))
  (setq *id* 0)
  (setq *open* nil)
  (setq *closed* nil)
  (setq *nodos_expandidos* 0)
  (setq *long_max_open* 0)
  (setq *estado-meta* estado-meta)
  (setq *bandera-fin* nil)
  (setq *t1real* (get-internal-real-time))
  (setq *t1run* (get-internal-run-time))
  (let ((nodo nil) (sucesores nil) (solucion nil))
        
        (setq nodo (crea_nodo 0 estado-inicial nil))
        (inserta_nodo nodo *open* :ancho)
        (loop until (null *open*) do 
              (if (> (length *open*) *long_max_open*) (setq *long_max_open* (length *open*)) )
              (setq nodo (extrae_nodo *open* :ancho))
              (añade_nodo_a_memoria nodo)
              (setq sucesores (expande nodo *lista-operaciones*))
              (setq *nodos_expandidos* (+ 1 *nodos_expandidos*))
              (cond
                (*bandera-fin*
                  (setq solucion (rastrea_solucion (first (last sucesores)))) 
                  ;(imprime_datos_solución solucion "Búsqueda ancho (Canónico)")
                  (setq *solution* (imprime_solucion solucion))
                  (return nil)
                  )
                )
              (loop for k in sucesores do (inserta_nodo k *open* :ancho))
              )
        )
  )

(defun depth-first-canon ()
"Busca la salida del laberinto por profundidad primero. Este es el método canónico,
la solución es muy larga."
  (setq estado-inicial (coerce *start* 'list))
  (setq estado-meta (coerce *goal* 'list))
    (setq *id* 0)
    (setq *open* nil)
    (setq *closed* nil)
    (setq *nodos_expandidos* 0)
    (setq *long_max_open* 0)
    (setq *estado-meta* estado-meta)
    (setq *bandera-fin* nil)
    (setq *t1real* (get-internal-real-time))
    (setq *t1run* (get-internal-run-time))
    (let ((nodo nil) (sucesores nil) (solucion nil))
        
        (setq nodo (crea_nodo 0 estado-inicial nil))
        (inserta_nodo nodo *open* :profundo)
        (loop until (null *open*) do 
              (if (> (length *open*) *long_max_open*) (setq *long_max_open* (length *open*)) )
              (setq nodo (extrae_nodo *open* :profundo))
              (añade_nodo_a_memoria nodo)
              (setq sucesores (expande nodo *lista-operaciones*))
              (setq *nodos_expandidos* (+ 1 *nodos_expandidos*))
              (cond
                (*bandera-fin*
                  (setq solucion (rastrea_solucion (first (last sucesores)))) 
                  ;(imprime_datos_solución solucion "Búsqueda profundo (Canónico)")
                  (setq *solution* (imprime_solucion solucion))
                  (return nil)
                  )
                )
              (loop for k in sucesores do (inserta_nodo k *open* :profundo))
              )
        )
    )
(defun error_example nil (error "Error de ejemplo"))

;(defun crea_nodo_BFS (id_ancestro estado operador aptitud)
;"Crea un nodo para el algoritmo BFS. Este contiene la siguiente información:
    ;id: Número único de identificación. Este número se incrementa automáticamente 
        ;conforme se crean nuevos nodos, por ese motivo no se pide como argumento.
    ;id ancestro: indica el número de identificación del nodo del cual desciende
    ;estado: indica el estado del nodo.
    ;operador: indica que operación se le aplicó al nodo padre para obtener este estado.
    ;aptitud: Calificación del nodo"
  ;(setq *id* (+ 1 *id*))
  ;(list *id* id_ancestro estado operador aptitud))

;(defun expande_BFS (nodo lista_m)
;"Expande un nodo, calculando como función de aptitud la distancia que se ha recorrido."
    ;(cond
        ;((null lista_m) nil)
        ;(t (let ( (estado_resultante (funcall (first lista_m) (estado_nodo nodo))))
            ;(cond
                ;((null estado_resultante) (expande_BFS nodo (rest lista_m)))
				;((equal estado_resultante *estado-meta*) (setq *bandera-fin* T) (list (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (f-aptitud estado_resultante (first lista_m) (fifth nodo)))))
                ;((estado_en_memoria estado_resultante *closed*) (expande_BFS nodo (rest lista_m) ))
                ;(t (cons (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (f-aptitud estado_resultante (first lista_m) (fifth nodo)))
                    ;(expande_BFS nodo (rest lista_m))))
            ;)
            ;)
        ;)
    ;)
;)
;(defun f-aptitud (estado-actual operador aptitud_padre)
;"Definida como la distancia que se ha recorrido."
    
    ;(cond
        ;((member (symbol-name operador) '("ARRIBA" "ABAJO" "IZQUIERDA" "DERECHA") :test #'equal)  (+ aptitud_padre 1.0))
        ;(t (+ aptitud_padre 3/2))
    ;)
;)

;(defun f-aptitud-direccion (operador_actual operador_previo)
;"Mide los cambios de dirección. Entre más pronunciado sea el cambio de dirección, 
;menor será la aptitud."
    ;(let ((actual (symbol-name operador_actual)) (previo (symbol-name operador_previo)) (salida nil))
        
		;(cond 
			;((null operador_previo) (setq salida 0))
			;((equal previo actual) (setq salida 0))
			;((equal actual "ARRIBA")
				;(cond
					;((member previo '("NE" "NW"):test #'equal) (setq salida 1))
					;((member previo '("IZQUIERDA" "DERECHA"):test #'equal) (setq salida 2))
					;((member previo '("SE" "SW"):test #'equal) (setq salida 3))
				;)
			;)
			;((equal actual "NE")
				;(cond
					;((member previo '("ARRIBA" "DERECHA"):test #'equal) (setq salida 1))
					;((member previo '("NW" "SE"):test #'equal) (setq salida 2))
					;((member previo '("IZQUIERDA" "ABAJO"):test #'equal) (setq salida 3))
				;)
			;)
			;((equal actual "DERECHA")
				;(cond
					;((member previo '("NE" "SE"):test #'equal) (setq salida 1))
					;((member previo '("ARRIBA" "ABAJO"):test #'equal) (setq salida 2))
					;((member previo '("NW" "SW"):test #'equal) (setq salida 3))
				;)
			;)
			;((equal actual "SE")
				;(cond
					;((member previo '("ABAJO" "DERECHA"):test #'equal) (setq salida 1))
					;((member previo '("SW" "NE"):test #'equal) (setq salida 2))
					;((member previo '("IZQUIERDA" "ARRIBA"):test #'equal) (setq salida 3))
				;)
			;)
			;((equal actual "ABAJO")
				;(cond
					;((member previo '("SW" "SE"):test #'equal) (setq salida 1))
					;((member previo '("IZQUIERDA" "DERECHA"):test #'equal) (setq salida 2))
					;((member previo '("NW" "NE"):test #'equal) (setq salida 3))
				;)
			;)
			;((equal actual "SW")
				;(cond
					;((member previo '("IZQUIERDA" "ABAJO"):test #'equal) (setq salida 1))
					;((member previo '("NW" "SE"):test #'equal) (setq salida 2))
					;((member previo '("ARRIBA" "DERECHA"):test #'equal) (setq salida 3))
				;)
			;)
			;((equal actual "IZQUIERDA")
				;(cond
					;((member previo '("NW" "SW"):test #'equal) (setq salida 1))
					;((member previo '("ARRIBA" "ABAJO"):test #'equal) (setq salida 2))
					;((member previo '("NE" "SE"):test #'equal) (setq salida 3))
				;)
			;)
			;((equal actual "NW")
				;(cond
					;((member previo '("ARRIBA" "IZQUIERDA"):test #'equal) (setq salida 1))
					;((member previo '("NE" "SW"):test #'equal) (setq salida 2))
					;((member previo '("ABAJO" "DERECHA"):test #'equal) (setq salida 3))
				;)
			;)
			;(t (print "Algo salió mal"))
		;)
    ;salida
    ;)
;)

;(defun best-first (estado-inicial estado-meta)
;"Búsqueda de la salida comparando primero el nodo más apto, en este caso el que 
;tenga la menor distancia total recorrida."
    ;(setq *id* 0)
    ;(setq *open* nil)
    ;(setq *closed* nil)
    ;(setq *nodos_expandidos* 0)
    ;(setq *long_max_open* 0)
    ;(setq *estado-meta* estado-meta)
    ;(setq *bandera-fin* nil)
    ;(setq *t1real* (get-internal-real-time))
    ;(setq *t1run* (get-internal-run-time))
    ;(let ((nodo nil) (sucesores nil) (solucion nil))
        
        ;(setq nodo (crea_nodo_BFS 0 estado-inicial nil 0))
        ;(encola nodo *open* )
        ;(añade_nodo_a_memoria nodo)
        
        ;(loop until (null *open*) do 
            ;(if (> (length *open*) *long_max_open*) (setq *long_max_open* (length *open*)) )
            ;(setq *open* (sort *open* #'< :key #'fifth))
            ;(setq nodo (saca_cola *open* ))
            ;(añade_nodo_a_memoria nodo)
            ;(setq sucesores (expande_BFS nodo *lista-operaciones*))
            ;(setq *nodos_expandidos* (+ 1 *nodos_expandidos*))
			;(cond
				;(*bandera-fin*
					;(setq solucion (rastrea_solucion (first (last sucesores)))) 
					;(imprime_datos_solución solucion "Búsqueda Best First (Distancia)")
					;(return (imprime_solucion solucion))
				;)
            ;)
            ;(loop for k in sucesores do (añade_nodo_a_memoria k)(encola k *open*))
        ;)
    ;)
;)

;(defun expande_BFS_direccion (nodo lista_m)
;"Expande un nodo, en este caso tomando como función de aptitud que tan pronunciados
;son los cambios de dirección."
	
    ;(cond
        ;((null lista_m) nil)
        ;(t (let ( (estado_resultante (funcall (first lista_m) (estado_nodo nodo))))
            ;(cond
                ;((null estado_resultante) (expande_BFS_direccion nodo (rest lista_m)))
                ;((equal estado_resultante *estado-meta*) (setq *bandera-fin* T) (list (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (f-aptitud-direccion  (first lista_m) (fourth nodo)))))
                ;((estado_en_memoria estado_resultante *closed*) (expande_BFS_direccion nodo (rest lista_m) ))
                ;(t (cons (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (f-aptitud-direccion  (first lista_m) (fourth nodo)))
                    ;(expande_BFS_direccion nodo (rest lista_m))))
            ;)
            ;)
        ;)
    ;)
;)

;(defun best-first-direccion (estado-inicial estado-meta)
;"Búsqueda de la salida comparando primero el nodo más apto, en este caso el que 
;tenga el cambio de dirección menos pronunciado."
    ;(setq *id* 0)
    ;(setq *open* nil)
    ;(setq *closed* nil)
    ;(setq *nodos_expandidos* 0)
    ;(setq *long_max_open* 0)
    ;(setq *estado-meta* estado-meta)
    ;(setq *bandera-fin* nil)
    ;(setq *t1real* (get-internal-real-time))
    ;(setq *t1run* (get-internal-run-time))
    ;(let ((nodo nil) (sucesores nil) (solucion nil))
        
        ;(setq nodo (crea_nodo_BFS 0 estado-inicial nil 0))
        ;(encola nodo *open* )
        ;(añade_nodo_a_memoria nodo)
        
        ;(loop until (null *open*) do 
            ;(if (> (length *open*) *long_max_open*) (setq *long_max_open* (length *open*)) )
            ;(setq *open* (stable-sort *open* #'< :key #'fifth))
            ;(setq nodo (saca_cola *open* ))
            ;(añade_nodo_a_memoria nodo)
            ;(setq sucesores (expande_BFS_direccion nodo *lista-operaciones*))
            ;(setq *nodos_expandidos* (+ 1 *nodos_expandidos*))
			;(cond
				;(*bandera-fin*
					;(setq solucion (rastrea_solucion (first (last sucesores)))) 
					;(imprime_datos_solución solucion "Búsqueda Best First (Dirección)")
					;(return (imprime_solucion solucion))
				;)
            ;)
            ;(loop for k in sucesores do (añade_nodo_a_memoria k)(encola k *open*))
        ;)
    ;)
;)

;(defun f-aptitud-taxi (estado-actual estado-meta)
;"Determina la aptitud como la distancia Manhattan entre el estado actual y el estado meta"
	;(+ (abs (- (first estado-actual) (first estado-meta))) (abs (- (second estado-actual) (second estado-meta))))
;)

;(defun expande_BFS_taxi (nodo lista_m meta)
;"Expande un nodo, en este caso tomando como función de aptitud la distancia Manhattan
;entre el estado actual y el estado meta."
	
    ;(cond
        ;((null lista_m) nil)
        ;(t (let ( (estado_resultante (funcall (first lista_m) (estado_nodo nodo))))
            ;(cond
                ;((null estado_resultante) (expande_BFS_taxi nodo (rest lista_m) meta))
                ;((equal estado_resultante *estado-meta*) (setq *bandera-fin* T) (list (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (f-aptitud-taxi estado_resultante meta))))
                ;((estado_en_memoria estado_resultante *closed*) (expande_BFS_taxi nodo (rest lista_m) meta))
                ;(t (cons (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (f-aptitud-taxi estado_resultante meta))
                    ;(expande_BFS_taxi nodo (rest lista_m) meta)))
            ;)
            ;)
        ;)
    ;)
;)

;(defun best-first-taxi (estado-inicial estado-meta)
;"Búsqueda de la salida comparando primero el nodo más apto, en este caso el que 
;esté mas cercano a la meta usando distancia Manhattan"
    ;(setq *id* 0)
    ;(setq *open* nil)
    ;(setq *closed* nil)
    ;(setq *nodos_expandidos* 0)
    ;(setq *long_max_open* 0)
    ;(setq *estado-meta* estado-meta)
    ;(setq *bandera-fin* nil)
    ;(setq *t1real* (get-internal-real-time))
    ;(setq *t1run* (get-internal-run-time))
    ;(let ((nodo nil) (sucesores nil) (solucion nil))
        
        ;(setq nodo (crea_nodo_BFS 0 estado-inicial nil (f-aptitud-taxi estado-inicial estado-meta)))
        ;(encola nodo *open* )
        ;(añade_nodo_a_memoria nodo)
        
        ;(loop until (null *open*) do 
            ;(if (> (length *open*) *long_max_open*) (setq *long_max_open* (length *open*)) )
            ;(setq *open* (stable-sort *open* #'< :key #'fifth))
            ;(setq nodo (saca_cola *open* ))
            ;(setq sucesores (expande_BFS_taxi nodo *lista-operaciones* estado-meta))
            ;(setq *nodos_expandidos* (+ 1 *nodos_expandidos*))
			;(cond
				;(*bandera-fin*
					;(setq solucion (rastrea_solucion (first (last sucesores)))) 
					;(imprime_datos_solución solucion "Búsqueda Best First (Taxi)")
					;(return (imprime_solucion solucion))
				;)
            ;)
            ;(loop for k in sucesores do (añade_nodo_a_memoria k)(encola k *open*))
        ;)
    ;)
;)

;(defun estado_en_open (estado memoria contador)
;"Revisa que el estado no esté ya presente en open. Si ya está, regresa el valor 
;de su aptitud y el índice en el que estaba. En caso contrario regresa nil."
    ;(cond
        ;((null memoria) nil)
        ;((equal estado (estado_nodo (first memoria))) (list (fifth (first memoria)) contador))
        ;(t (estado_en_open estado (rest memoria) (+ 1 contador)))
    ;)
;)

;(defun elimina_elemento_lista (lista indice)
;"Elimina un elemento de una lista de acuerdo a su índice."
	;(append (subseq lista 0 indice) (subseq lista (+ indice 1)))
;)

;(defun costo (operador aptitud_padre)
    ;"Definido como la distancia que se ha recorrido. Tiene mayor costo las distancias
    ;diagonales que las verticales u horizontales"
    
    ;(cond
        ;((member (symbol-name operador) '("ARRIBA" "ABAJO" "IZQUIERDA" "DERECHA") :test #'equal)  (+ aptitud_padre 1.0))
        ;(t (+ aptitud_padre 3/2))
    ;)
;)

;(defun expande_a-star_solo_costo (nodo lista_m)
;"Función de expandir nodo para algoritmo a*. Este sólo toma en cuenta el costo para llegar al estado."
    ;(cond
        ;((null lista_m) nil)
        ;(t (let ( (estado_resultante (funcall (first lista_m) (estado_nodo nodo)))(nodo_resultante)(verificacion nil))
            ;(cond
                ;((null estado_resultante) (expande_a-star_solo_costo nodo (rest lista_m)))
                ;((equal *estado-meta* estado_resultante) (setq *bandera-fin* t) (list (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (costo  (first lista_m) (fifth nodo)))))
                ;((estado_en_memoria estado_resultante *closed*) (expande_a-star_solo_costo nodo (rest lista_m) ))
                ;(t (setq verificacion (estado_en_open estado_resultante *open* 0))
                    ;(setq nodo_resultante (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (costo  (first lista_m) (fifth nodo))) )
                    ;(cond
                        ;((null verificacion) (cons nodo_resultante (expande_a-star_solo_costo nodo (rest lista_m))))
                        ;(t 
                            ;(cond
                                ;((< (fifth nodo_resultante) (first verificacion)) (print (nth (second verificacion) *open*)) (print nodo_resultante) (print "~~~") (setq *open* (elimina_elemento_lista *open* (second verificacion)))
                                    ;(cons nodo_resultante (expande_a-star_solo_costo nodo (rest lista_m))))
                                ;(t (expande_a-star_solo_costo nodo (rest lista_m)))
                            ;)
                        ;)

                    ;)
                ;)
            ;)
            ;)
        ;)
    ;)
;)

;(defun a-star_solo_costo (estado-inicial estado-meta)
;"Búsqueda de la salida usando el algoritmo A*. Este toma en cuenta sólo la función
;de costo."
    ;(setq *id* 0)
    ;(setq *open* nil)
    ;(setq *closed* nil)
    ;(setq *nodos_expandidos* 0)
    ;(setq *long_max_open* 0)
    ;(setq *estado-meta* estado-meta)
    ;(setq *bandera-fin* nil)
    ;(setq *t1real* (get-internal-real-time))
    ;(setq *t1run* (get-internal-run-time))
    ;(let ((nodo nil) (sucesores nil) (solucion nil))
        
        ;(setq nodo (crea_nodo_BFS 0 estado-inicial nil 0))
        ;(encola nodo *open* )
        ;(añade_nodo_a_memoria nodo)
        
        ;(loop until (null *open*) do 
            ;(if (> (length *open*) *long_max_open*) (setq *long_max_open* (length *open*)) )
            ;(setq *open* (stable-sort *open* #'< :key #'fifth))
            ;(setq nodo (saca_cola *open* ))
            ;(añade_nodo_a_memoria nodo)
            ;(setq sucesores (expande_a-star_solo_costo nodo *lista-operaciones*))
            ;(setq *nodos_expandidos* (+ 1 *nodos_expandidos*))
			;(cond
				;(*bandera-fin*
					;(setq solucion (rastrea_solucion (first (last sucesores)))) 
					;(imprime_datos_solución solucion "A* (Sólo costo)")
					;(return (imprime_solucion solucion))
				;)
            ;)
            ;(loop for k in sucesores do (encola k *open*))
        ;)
    ;)
;)

;(defun expande_a-star_direccion (nodo lista_m)
;"Función de expandir nodo para algoritmo a*. Como función de aptitud toma en cuenta 
;que tan pronunciados son los cambios de dirección"
    ;(cond
        ;((null lista_m) nil)
        ;(t (let ( (estado_resultante (funcall (first lista_m) (estado_nodo nodo)))(nodo_resultante)(verificacion nil))
            ;(cond
                ;((null estado_resultante) (expande_a-star_direccion nodo (rest lista_m)))
                ;((equal estado_resultante *estado-meta*) (setq *bandera-fin* t) (list (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (+ (costo  (first lista_m) (fifth nodo)) (f-aptitud-direccion (first lista_m) (fourth nodo))))))
                ;((estado_en_memoria estado_resultante *closed*) (expande_a-star_direccion nodo (rest lista_m) ))
                ;(t (setq verificacion (estado_en_open estado_resultante *open* 0))
                    ;(setq nodo_resultante (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (+ (costo  (first lista_m) (fifth nodo)) (f-aptitud-direccion (first lista_m) (fourth nodo)))) )
                    ;(cond
                        ;((null verificacion) (cons nodo_resultante (expande_a-star_direccion nodo (rest lista_m))))
                        ;(t 
                            ;(cond
                                ;((< (fifth nodo_resultante) (first verificacion)) (setq *open* (elimina_elemento_lista *open* (second verificacion)))
                                    ;(cons nodo_resultante (expande_a-star_direccion nodo (rest lista_m))))
                                ;(t (expande_a-star_direccion nodo (rest lista_m)))
                            ;)
                        ;)

                    ;)

                    
                ;)
            ;)
            ;)
        ;)
    ;)
;)

;(defun a-star_direccion (estado-inicial estado-meta)
;"Búsqueda usando algoritmo A*. Toma en cuenta el cambio de dirección como función
;de aptitud."
    ;(setq *id* 0)
    ;(setq *open* nil)
    ;(setq *closed* nil)
    ;(setq *nodos_expandidos* 0)
    ;(setq *long_max_open* 0)
    ;(setq *estado-meta* estado-meta)
    ;(setq *bandera-fin* nil)
    ;(setq *t1real* (get-internal-real-time))
    ;(setq *t1run* (get-internal-run-time))
    ;(let ((nodo nil) (sucesores nil) (solucion nil))
        
        ;(setq nodo (crea_nodo_BFS 0 estado-inicial nil 0))
        ;(encola nodo *open* )
        ;(añade_nodo_a_memoria nodo)
        
        ;(loop until (null *open*) do 
            ;(if (> (length *open*) *long_max_open*) (setq *long_max_open* (length *open*)) )
            ;(setq *open* (stable-sort *open* #'< :key #'fifth))
            ;(setq nodo (saca_cola *open* ))
            ;(añade_nodo_a_memoria nodo)
            ;(setq sucesores (expande_a-star_direccion nodo *lista-operaciones*))
            ;(setq *nodos_expandidos* (+ 1 *nodos_expandidos*))
			;(cond
				;(*bandera-fin*
					;(setq solucion (rastrea_solucion (first (last sucesores)))) 
					;(imprime_datos_solución solucion "A* (Dirección)")
					;(return (imprime_solucion solucion))
				;)
            ;)
            ;(loop for k in sucesores do (encola k *open*))
        ;)
    ;)
;)

;(defun expande_a-star_taxi (nodo lista_m)
;"Función de expandir nodo para algoritmo a*. Toma en cuenta la distancia Manhattan 
;entre el estado actual y el estado meta como función de aptitud."
    ;(cond
        ;((null lista_m) nil)
        ;(t (let ( (estado_resultante (funcall (first lista_m) (estado_nodo nodo)))(nodo_resultante)(verificacion nil))
            ;(cond
                ;((null estado_resultante) (expande_a-star_taxi nodo (rest lista_m)))
                ;((equal estado_resultante *estado-meta*) (setq *bandera-fin* t) (list (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (+ (costo  (first lista_m) (fifth nodo)) (* 0.1 (f-aptitud-taxi estado_resultante *estado-meta*))))))
                ;((estado_en_memoria estado_resultante *closed*) (expande_a-star_taxi nodo (rest lista_m) ))
                ;(t (setq verificacion (estado_en_open estado_resultante *open* 0))
                    ;(setq nodo_resultante (crea_nodo_BFS (first nodo) estado_resultante (first lista_m) (+ (costo  (first lista_m) (fifth nodo)) (* 0.1 (f-aptitud-taxi estado_resultante *estado-meta*)))) )
                    ;(cond
                        ;((null verificacion) (cons nodo_resultante (expande_a-star_taxi nodo (rest lista_m))))
                        ;(t 
                            ;(cond
                                ;((< (fifth nodo_resultante) (first verificacion)) (setq *open* (elimina_elemento_lista *open* (second verificacion)))
                                    ;(cons nodo_resultante (expande_a-star_taxi nodo (rest lista_m))))
                                ;(t (expande_a-star_taxi nodo (rest lista_m)))
                            ;)
                        ;)

                    ;)

                    
                ;)
            ;)
            ;)
        ;)
    ;)
;)

;(defun a-star_taxi (estado-inicial estado-meta)
;"Búsqueda usando A*. Usa como función de aptitud la distancia Manhattan"
    ;(setq *id* 0)
    ;(setq *open* nil)
    ;(setq *closed* nil)
    ;(setq *nodos_expandidos* 0)
    ;(setq *long_max_open* 0)
    ;(setq *estado-meta* estado-meta)
    ;(setq *bandera-fin* nil)
    ;(setq *t1real* (get-internal-real-time))
    ;(setq *t1run* (get-internal-run-time))
    ;(let ((nodo nil) (sucesores nil) (solucion nil))
        
        ;(setq nodo (crea_nodo_BFS 0 estado-inicial nil 0))
        ;(encola nodo *open* )
        ;(añade_nodo_a_memoria nodo)
        
        ;(loop until (null *open*) do 
            ;(if (> (length *open*) *long_max_open*) (setq *long_max_open* (length *open*)) )
            ;(setq *open* (stable-sort *open* #'< :key #'fifth))
            ;(setq nodo (saca_cola *open* ))
            ;(añade_nodo_a_memoria nodo)
            ;(setq sucesores (expande_a-star_taxi nodo *lista-operaciones*))
            ;(setq *nodos_expandidos* (+ 1 *nodos_expandidos*))
			;(cond
				;(*bandera-fin*
					;(setq solucion (rastrea_solucion (first (last sucesores)))) 
					;(imprime_datos_solución solucion "A* (Taxi)")
					;(return (imprime_solucion solucion))
				;)
            ;)
            ;(loop for k in sucesores do (encola k *open*))
        ;)
    ;)
;)

(defun imprime_datos_solución (solución algoritmo)
    (let ((t2run (- (get-internal-run-time) *t1run*))(t2real (- (get-internal-real-time) *t1real*)) (distancia 0))
        (print algoritmo)
        (format t "~%Nodos Creados: ~S~%" *id*)
        (format t "Nodos Expandidos: ~S~%" *nodos_expandidos*)
        (format t "Longitud máxima de la frontera de búsqueda: ~S~%" *long_max_open*)
        (format t "Longitud de la solución: ~S~%" (length solución))
        (format t "Tiempo real: ~S ms~%" t2real)
        (format t "Tiempo de ejecución: ~S ~%" t2run)
        (loop for k in solución do 
            (cond
                ((member (symbol-name (fourth k))  '("ARRIBA" "ABAJO" "IZQUIERDA" "DERECHA") :test #'equal)  (setq distancia (+ distancia 1.0)))
                (t (setq distancia (+ distancia 3/2)))
            )
        )
        (format t "Distancia Recorrida: ~S unidades~%" distancia)
        #|(set-result-info :algorithm algoritmo |#
                  ;:time t2real
                  ;:steps (length solución)
                  ;:created-nodes *id*
                  ;:explored-nodes *nodos_expandidos* 
                  #|:max *long_max_open*)|#
    )
        
)

(start-maze)
