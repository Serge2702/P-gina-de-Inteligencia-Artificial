(defvar Largo3
(make-instance 'maze
:data #2A(
( 9  1  3  9  1  1  1  1  1  1  1  3  8  0  2  9  1  1  1  1  3  9  1  1  1  1  1  1  1  3  9  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  3  9  1  1  1  1  3 )
( 8  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  2 )
( 8  0  2  8  0  0  0  0  0  4  4  6  8  0  2  8  0  0  0  0  2 12  4  4  0  0  0  0  0  2 12  4  4  0  0  0  4  4  4  0  0  0  4  4  4  0  0  2 12  4  4  0  0  2 )
( 8  0  2  8  0  2  8  0  0  1  1  1  0  0  2  8  0  2  8  0  0  1  1  1  0  0  2  8  0  0  1  1  3  8  0  2  9  1  1  0  0  2  9  1  3  8  0  0  1  1  1  0  0  2 )
( 8  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2 )
( 8  0  2  8  0  2 12  4  4  4  4  4  4  4  6  8  0  2 12  4  4  4  4  4  4  4  6 12  4  4  0  0  2 12  4  6  8  0  0  4  4  6  8  0  2 12  4  4  4  4  4  0  0  2 )
( 8  0  0  0  0  2  9  1  1  1  1  3  9  1  1  0  0  0  1  1  3  9  1  1  1  1  1  1  1  3  8  0  0  1  1  1  0  0  2  9  1  1  0  0  0  1  1  3  9  1  1  0  0  2 )
( 8  0  0  0  0  2  8  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  2 )
( 8  0  0  4  4  6  8  0  0  0  0  2  8  0  0  4  4  4  0  0  2 12  4  4  0  0  0  0  0  2 12  4  4  4  4  4  4  4  6  8  0  0  4  4  4  4  4  6  8  0  0  4  4  6 )
( 8  0  2  9  1  1  0  0  2  8  0  2  8  0  2  9  1  3  8  0  2  9  1  1  0  0  2  8  0  0  1  1  1  1  1  3  9  1  1  0  0  0  1  1  1  1  1  3  8  0  2  9  1  3 )
( 8  0  2  8  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  2 )
( 8  0  2 12  4  4  0  0  2 12  4  6  8  0  2  8  0  2  8  0  2  8  0  0  4  4  6 12  4  4  4  4  4  4  4  6  8  0  0  4  4  4  4  4  4  0  0  2  8  0  2  8  0  2 )
( 8  0  0  1  1  3  8  0  0  1  1  1  0  0  0  0  0  2  8  0  2  8  0  2  9  1  1  1  1  1  1  1  1  1  1  3  8  0  0  1  1  1  1  1  3  8  0  0  0  0  2  8  0  2 )
( 8  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  2  8  0  2 )
(12  4  4  0  0  2  8  0  0  4  4  4  4  4  4  0  0  2  8  0  2  8  0  2  8  0  0  4  4  4  4  4  4  0  0  2 12  4  4  4  4  4  0  0  2 12  4  4  4  4  6  8  0  2 )
( 9  1  1  0  0  2  8  0  2  9  1  1  1  1  3  8  0  2  8  0  2  8  0  0  0  0  0  1  1  3  9  1  1  0  0  2  9  1  1  1  1  3  8  0  2  9  1  1  1  1  1  0  0  2 )
( 8  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2 )
( 8  0  0  4  4  6 12  4  6  8  0  0  0  0  2 12  4  6  8  0  2  8  0  0  4  4  4  4  4  6  8  0  0  0  0  2 12  4  4  0  0  2  8  0  2 12  4  4  0  0  0  0  0  2 )
( 8  0  0  1  1  1  1  1  1  0  0  2  8  0  0  1  1  1  0  0  2  8  0  2  9  1  1  1  1  1  0  0  2  8  0  2  9  1  1  0  0  2  8  0  2  9  1  1  0  0  2  8  0  2 )
( 8  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  2 )
(12  4  4  4  4  4  4  4  4  4  4  6 12  4  4  4  4  4  4  4  6 12  4  6  8  0  0  4  4  4  4  4  6  8  0  2  8  0  0  0  0  2  8  0  2  8  0  0  4  4  6  8  0  2 )
( 9  1  3  9  1  1  1  1  1  1  1  1  1  1  3  9  1  1  1  1  1  1  1  1  0  0  2  9  1  1  1  1  3  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  9  1  1  0  0  2 )
( 8  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2 )
( 8  0  2  8  0  0  4  4  4  0  0  0  0  0  2 12  4  4  0  0  0  4  4  4  4  4  6  8  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  0  4  4  6 )
( 8  0  2  8  0  0  1  1  3  8  0  2  8  0  0  1  1  1  0  0  2  9  1  3  9  1  1  0  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  0  1  1  3 )
( 8  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2 )
( 8  0  2 12  4  4  0  0  2  8  0  2 12  4  4  4  4  4  4  4  6  8  0  2  8  0  0  4  4  6 12  4  4  4  4  4  4  4  6 12  4  6  8  0  2  8  0  2 12  4  4  4  4  6 )
( 8  0  0  1  1  3  8  0  2  8  0  0  1  1  1  1  1  3  9  1  1  0  0  0  0  0  0  1  1  3  9  1  1  1  1  1  1  1  1  1  1  3  8  0  2  8  0  0  1  1  1  1  1  3 )
( 8  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2 )
(12  4  4  0  0  2  8  0  2 12  4  4  4  4  4  0  0  2 12  4  4  4  4  4  4  4  4  4  4  6  8  0  0  4  4  4  4  4  4  0  0  2  8  0  2 12  4  4  4  4  4  0  0  2 )
( 9  1  1  0  0  2  8  0  2  9  1  3  9  1  1  0  0  2  9  1  1  1  1  1  1  1  3  9  1  1  0  0  0  1  1  3  9  1  1  0  0  2  8  0  2  9  1  1  1  1  3  8  0  2 )
( 8  0  0  0  0  2  8  0  2  8  0  2  8  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  2 )
( 8  0  0  4  4  6  8  0  2  8  0  2  8  0  0  4  4  6  8  0  0  4  4  4  0  0  2  8  0  0  4  4  4  4  4  6  8  0  0  4  4  6  8  0  2  8  0  0  0  0  2  8  0  2 )
( 8  0  0  1  1  1  0  0  2  8  0  2  8  0  0  1  1  1  0  0  2  9  1  1  0  0  2  8  0  2  9  1  1  1  1  1  0  0  2  9  1  1  0  0  2  8  0  2  8  0  2  8  0  2 )
( 8  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  2  8  0  2 )
( 8  0  0  4  4  4  4  4  6  8  0  2 12  4  4  4  4  4  4  4  6  8  0  0  4  4  6  8  0  2  8  0  0  4  4  4  0  0  2  8  0  0  4  4  6  8  0  2  8  0  2  8  0  2 )
( 8  0  0  1  1  1  1  1  3  8  0  0  1  1  1  1  1  1  1  1  3  8  0  0  1  1  1  0  0  2  8  0  0  1  1  3  8  0  2  8  0  0  1  1  1  0  0  2  8  0  0  0  0  2 )
( 8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  2 )
(12  4  4  4  4  4  0  0  2  8  0  0  4  4  4  4  4  4  4  4  6 12  4  4  4  4  4  4  4  6 12  4  4  0  0  2 12  4  6 12  4  4  4  4  4  4  4  6 12  4  4  0  0  2 )
( 9  1  1  1  1  3  8  0  2  8  0  0  1  1  1  1  1  1  1  1  1  1  1  3  9  1  1  1  1  1  1  1  3  8  0  0  1  1  1  1  1  3  9  1  1  1  1  1  1  1  3  8  0  2 )
( 8  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  2 )
( 8  0  0  4  4  6  8  0  2 12  4  4  4  4  4  4  4  4  0  0  0  0  0  2  8  0  0  4  4  4  4  4  6 12  4  4  0  0  0  4  4  6  8  0  0  0  0  0  4  4  6  8  0  2 )
( 8  0  0  1  1  3  8  0  2  9  1  1  1  1  1  1  1  1  0  0  2  8  0  2  8  0  0  1  1  1  1  1  1  1  1  3  8  0  0  1  1  1  0  0  2  8  0  0  1  1  1  0  0  2 )
( 8  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2 )
(12  4  4  0  0  2  8  0  2  8  0  0  4  4  4  4  4  4  4  4  6  8  0  2  8  0  0  4  4  4  4  4  4  0  0  2 12  4  4  4  4  4  4  4  6 12  4  4  4  4  4  4  4  6 )
( 9  1  1  0  0  2  8  0  0  0  0  2  9  1  1  1  1  1  1  1  1  0  0  2  8  0  0  1  1  1  1  1  3  8  0  0  1  1  1  1  1  1  1  1  1  1  1  3  9  1  1  1  1  3 )
( 8  0  0  0  0  2  8  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  2 )
( 8  0  0  4  4  6 12  4  4  4  4  6  8  0  0  4  4  4  4  4  4  4  4  6 12  4  4  4  4  4  0  0  2 12  4  4  4  4  4  4  4  4  0  0  0  0  0  2  8  0  0  4  4  6 )
( 8  0  0  1  1  1  1  1  1  1  1  3  8  0  2  9  1  1  1  1  1  1  1  3  9  1  1  1  1  3  8  0  0  1  1  3  9  1  1  1  1  1  0  0  2  8  0  2  8  0  0  1  1  3 )
( 8  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  2  8  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  2 )
( 8  0  0  4  4  4  4  4  4  0  0  2  8  0  2  8  0  0  4  4  4  0  0  2  8  0  0  0  0  2 12  4  4  0  0  2  8  0  0  4  4  4  4  4  6  8  0  2 12  4  4  0  0  2 )
( 8  0  2  9  1  1  1  1  1  0  0  2  8  0  2  8  0  0  1  1  3  8  0  0  0  0  2  8  0  2  9  1  1  0  0  2  8  0  0  1  1  1  1  1  3  8  0  2  9  1  1  0  0  2 )
( 8  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  2 )
( 8  0  2  8  0  0  4  4  4  4  4  6  8  0  2  8  0  0  0  0  2 12  4  4  4  4  6  8  0  2  8  0  0  4  4  6 12  4  4  4  4  4  0  0  2  8  0  2  8  0  0  0  0  2 )
( 8  0  2  8  0  0  1  1  1  1  1  1  0  0  2  8  0  2  8  0  2  9  1  1  1  1  1  0  0  2  8  0  0  1  1  1  1  1  1  1  1  3  8  0  2  8  0  0  0  0  2  8  0  2 )
( 8  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  2 )
( 8  0  2 12  4  4  4  4  4  4  4  4  4  4  6 12  4  6  8  0  2  8  0  0  4  4  4  4  4  6 12  4  4  4  4  4  4  4  4  0  0  2  8  0  2 12  4  4  4  4  6  8  0  2 )
( 8  0  0  1  1  3  9  1  1  1  1  3  9  1  1  1  1  3  8  0  2  8  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  3  8  0  2  8  0  2  9  1  1  1  1  1  0  0  2 )
( 8  0  0  0  0  2  8  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  2  8  0  0  0  0  0  0  0  2 )
(12  4  4  0  0  2  8  0  0  0  0  2  8  0  0  0  0  2  8  0  2 12  4  4  4  4  4  4  4  4  4  4  4  4  4  4  0  0  2 12  4  6  8  0  2  8  0  0  4  4  4  4  4  6 )
( 9  1  3  8  0  2  8  0  2  8  0  0  0  0  2  8  0  2  8  0  0  1  1  3  9  1  1  1  1  3  9  1  1  1  1  1  0  0  0  1  1  1  0  0  2  8  0  0  1  1  1  1  1  3 )
( 8  0  2  8  0  2  8  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2 )
( 8  0  2  8  0  2  8  0  2 12  4  4  4  4  6  8  0  2 12  4  4  0  0  2  8  0  0  4  4  6  8  0  0  4  4  4  4  4  4  0  0  0  4  4  6 12  4  4  4  4  4  0  0  2 )
( 8  0  0  0  0  2  8  0  0  1  1  1  1  1  3  8  0  0  1  1  1  0  0  2  8  0  0  1  1  1  0  0  2  9  1  1  1  1  3  8  0  2  9  1  1  1  1  3  9  1  1  0  0  2 )
( 8  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  0  0  0  2 )
( 8  0  0  4  4  6 12  4  4  4  4  4  0  0  2 12  4  4  4  4  4  4  4  6  8  0  0  4  4  4  4  4  6  8  0  0  0  0  2 12  4  6  8  0  0  0  0  2  8  0  0  4  4  6 )
( 8  0  2  9  1  1  1  1  1  1  1  1  0  0  2  9  1  1  1  1  1  1  1  3  8  0  2  9  1  1  1  1  3  8  0  2  8  0  0  1  1  1  0  0  2  8  0  2  8  0  2  9  1  1 )
( 8  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  2  8  0  0 )
( 8  0  2  8  0  0  4  4  4  4  4  4  4  4  6 12  4  4  4  4  4  0  0  2  8  0  2  8  0  0  0  0  2  8  0  2 12  4  4  4  4  4  4  4  6  8  0  2  8  0  2  8  0  0 )
( 8  0  2  8  0  2  9  1  1  1  1  1  1  1  1  1  1  1  1  1  3  8  0  0  0  0  0  0  0  2  8  0  2  8  0  2  9  1  1  1  1  1  1  1  1  0  0  2  8  0  2  8  0  2 )
( 8  0  2  8  0  2  8  0  0  0  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  2 )
( 8  0  2  8  0  2  8  0  0  4  4  4  4  4  4  4  4  4  0  0  2 12  4  4  4  4  4  4  4  6  8  0  2  8  0  2  8  0  0  4  4  4  4  4  4  4  4  6  8  0  2  8  0  2 )
( 8  0  2  8  0  0  0  0  0  1  1  1  1  1  1  1  1  3  8  0  0  1  1  1  1  1  1  1  1  3  8  0  2  8  0  2  8  0  2  9  1  3  9  1  1  1  1  3  8  0  2  8  0  2 )
( 8  0  2  8  0  0  0  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2  8  0  2  8  0  2 )
( 8  0  2 12  4  4  4  4  4  4  4  4  4  4  4  0  0  2 12  4  4  4  4  4  4  4  4  0  0  2 12  4  6  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2  8  0  2  8  0  2 )
( 8  0  0  1  1  1  1  1  1  1  1  1  1  1  3  8  0  2  9  1  1  1  1  3  9  1  3  8  0  0  1  1  1  0  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2  8  0  2 )
( 8  0  0  0  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2  8  0  2 )
(12  4  4  4  4  4  4  4  4  4  4  4  0  0  2  8  0  2  8  0  0  0  0  2  8  0  2 12  4  4  4  4  4  4  4  6  8  0  2  8  0  2  8  0  2 12  4  4  4  4  6  8  0  2 )
( 9  1  1  1  1  3  9  1  1  1  1  3  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2  9  1  1  1  1  1  1  1  3  8  0  2  8  0  2  8  0  2  9  1  1  1  1  1  0  0  2 )
( 8  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  0  0  0  2 )
( 8  0  0  0  0  2 12  4  4  0  0  2  8  0  2  8  0  2  8  0  2 12  4  4  4  4  6  8  0  0  4  4  4  0  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  0  4  4  6 )
( 8  0  2  8  0  0  1  1  1  0  0  2  8  0  2  8  0  0  0  0  2  9  1  1  1  1  3  8  0  2  9  1  3  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  0  1  1  3 )
( 8  0  2  8  0  0  0  0  0  0  0  2  8  0  2  8  0  0  0  0  2  8  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2 )
( 8  0  2 12  4  4  4  4  4  0  0  2  8  0  2 12  4  4  4  4  6  8  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2 12  4  4  0  0  2 )
( 8  0  2  9  1  1  1  1  1  0  0  2  8  0  0  1  1  1  1  1  1  0  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2  8  0  2  9  1  1  0  0  2 )
( 8  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  0  0  0  2  8  0  2  8  0  0  0  0  2 )
( 8  0  2 12  4  4  4  4  4  4  4  6 12  4  4  4  4  4  4  4  4  4  4  6  8  0  2  8  0  2  8  0  2  8  0  2  8  0  2  8  0  0  4  4  6 12  4  6  8  0  0  0  0  2 )
( 8  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  1  1  1  1  1  1  0  0  2  8  0  2 )
( 8  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  2  8  0  0  0  0  0  0  0  0  0  0  2  8  0  2 )
(12  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  4  6 12  4  4  4  4  4  4  4  6 12  4  4  4  4  4  4  4  4  4  4  6 12  4  6 )
)
:start_position #(0 13)
:goal_position #(67 53)))
