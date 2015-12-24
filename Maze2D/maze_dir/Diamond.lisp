(defvar Diamond
(make-instance 'maze
:data #2A(
(15 15 15 15 15 15 15 15 15 15 15 15 15  9  1  3  9  1  5  3 13  5  1  1  5  7  9  5  5  5  3  9  5  3  9  1  5  7 12  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  6  9  3 13  1  3  9  5  3  9  5  1  5  5  5  5  3  9  5  1  5  5  5  5  5  7 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15  9  6 10 10 14 10 11 10  9  3 10 14  9  3 10 11  9  5  6 10 11 12  6 12  5  5  3 12  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  6  9  6 12  5  6 10 10 11 10 12  3 10 13  5  1  7 10 10 13  2  9  5  5  5  5  1  7 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15  9  4  7 10 10  9  6 10 12  6 10  8  5  6 12  4  6 10  9  5  6  8  3  9  5  1  3 12  3 12  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  6  9  6  9  7  9  3 10 10  8  6 11 10 12  5  3  8  5  6  8  3 14 12  1  7  9  3 12  1  3 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 11  8  7  9  6 10 10 11  8  5  3 10 10  9  5  5  5  3 10 10 13  1  6 10 14  9  6 14  9  4  7 12  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  6  9  6  9  4  5  6 10 12  6 10 13  4  4  7  9  6 10  9  3 14 12  1  7 10  9  6 10  9  6 10 11 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15  9  4  6  9  6 13  4  6 10 10 11 12  6 10 12  5  5  3 12  2 12  5  6 11 12  3 12  5  3 12  5  5  3 12  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  6  9  2 13  4  5  7  9  2  9  3 12  5  5  5  5  6 11 12  6 12  5  3  8  5  6 10 11 10 10  9  6  8  3 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 11 12  3  9  6  9  5  5  3 10 10  8  5  7 12  3 11  9  6 13  2 13  5  1  4  7 10  9  5  2 13  3  9  4  3 12  0  0  0  0  0  0  0  0  0  0  0  0  0  6  9  6 12  5  5  3  9  6 12  6 10 13  1  5  3  9  3  8  5  3 13  3 10 10  9  7 10 10 12  6 10 13  6  8  7 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15  9  4  5  6 12  5  4  5  7 10 10 10  8  5  1  3 12  2 12  5  3 10  9  1  6  9  3 12  6 11 12  3 10 12  3 10 11 12  0  0  0  0  0  0  0  0  0  0  0  6  9  4  5  3 11  9  6 10 13  5  5  4  5  6 11 12  6 12  6 11 10  9  6 10 12  6  9  6 12  5  3 12  5  3  8  5  3 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 11 10  9  1  5  5  5  7  9  3 10 10 10 10 11 10 14  9  6  9  7 10 12  6 10  9  6 12  5  5  0  7 10  8  7 10 10 12  3 12  0  0  0  0  0  0  0  0  0  6  9  6  9  3 12  6 10 13  4  5  5  5  5  5  3 12  5  5  5  5  4  4  2  9  6  9  5  6 13  1  5  2  9  3 10  8  7  8  3 15 15 15 15 15 15 )
(15 15 15 15 15  9  6 12  6 10  9  1  5  5  6 12  6 10 10 10 10 12  3 12  3 12  3 12  3 11 10 10  9  5  1  7 12  5  6 12  3 10 12  5  4  7 12  0  0  0  0  0  0  0  6 11 10  9  6 12  5  5  2  9  5  5  3  9  5  3  8  5  5  5  5  1  5  3 14 10  9  6 13  1  5  6 11 12  6 10 10 10  9  6 12  3 15 15 15 15 15 )
(15 15 15 15 13  4  1  5  5  6 10 10  9  5  5  5  3 10 10 10 12  3 12  3  8  5  6  9  6 12  2 10 12  7 12  5  1  3  9  5  2 12  5  5  5  5  3 12  0  0  0  0  0  6 13  4  2 12  5  5  3 11 10 12  3  9  6 10  9  6 12  5  7  9  3  8  7 12  3 12  6  9  5  6 13  5  4  5  5  6 10 14 10 11  9  6 11 15 15 15 15 )
(15 15 15 13  1  3  8  5  7  9  6 14  8  5  7  9  6 10 10 12  5  2 11 12  6  9  3  8  5  3 10 12  5  1  5  5  6 10 10 11  8  5  5  5  3  9  4  7 12  0  0  0  6 13  1  3 12  3  9  5  6  8  4  7 10 12  3 10 12  5  3  9  5  6 10 10  9  5  4  5  3  8  5  5  5  3  9  5  5  5  6  9  6 10 12  3  8  3 15 15 15 )
(15 15  9  1  6 10 14  9  3 12  5  5  2  9  3 10  9  2 12  3 13  4  2 11  9  6 10 10  9  6 10  9  5  6  9  5  3 10 10 10 10  9  5  3 10 12  5  5  3 12  0  6  9  5  6 12  3 14 10 11  9  6  9  5  6 11 10 12  3  9  6  8  3 11 10 10 12  3 11  9  6 10  9  7  9  6 10 13  5  5  5  2  9  6  9  4  6 12  7 15 15 )
(15  9  6 10 11 12  5  6 10  9  5  3 14 10 10 10 10 12  7 12  5  3  8  6 10  9  6 10 12  3 14  8  7  9  6  9  6 10 10 10 10 10 13  2 12  5  7  9  4  3 10  9  6  9  5  3  8  5  6 10 10 11 12  5  5  2 12  3 10 10  9  6 10 10 10 14  9  6 12  4  7 10 12  3 12  5  4  5  3  9  1  6 12  5  4  7  9  5  1  3 15 )
(13  2  9  6 12  3  9  5  4  6 11 12  5  6 12  6 12  5  5  1  7 10 14  9  6 10 11 12  3 12  5  6  9  6 11 12  3 10 10  8  6 12  3 12  5  3  9  2 13  4  0  6 13  6  9  6 10  9  3 12  4  0  5  5  7 10 11 12  6 10 12  3 10 12  4  5  2  9  5  5  5  4  5  4  5  7  9  3 10 10 10  9  5  5  5  5  6  9  6  8  7 )
(15 14  8  5  3 12  2  9  3 13  0  1  7  9  5  5  1  5  3 10  9  6  9  6 11 10  8  7 10  9  7  9  6  9  2  9  6 10 10 10  9  3 12  5  3 10 10 14  9  3 14  9  5  3 10  9  6 10 12  3 13  6  9  5  5  6 10  9  5  6 11 10 12  5  5  3 14 10  9  3 13  3  9  5  5  5  6 10 12  6 14 10  9  3  9  5  5  6  9  6 15 )
(15 15 12  3 12  3 10 10 12  3 10 12  5  2  9  3 10 13  4  6 12  5  6 13  2 10  8  5  6 10  9  6  9  6 10 10  9  6 10 10 10 12  1  7 10 10  8  5  6 12  5  6  9  6 10 12  3 12  3 12  5  3 10 13  1  3 10 12  3 13  4  4  5  5  3 12  5  4  6 12  5  6 10  9  7  9  3 10  9  5  3 10 10 14 10  9  5  5  6 15 15 )
(15 15 15 14  9  6 14 12  3 10 14  9  3 10 10 12  6  9  5  5  5  5  1  5  6 10 10 13  1  6 10  9  2 13  6 10 12  5  6 10 10  9  6  9  6 10 12  7  9  5  5  5  6  9  4  3 10 11 10  9  3 12  4  5  2 12  4  7 10  9  5  5  3 13  4  5  7  9  5  5  5  3  8  6  9  2 12  6 12  3 12  4  6  9  6 12  1  7 15 15 15 )
(15 15 15 15 12  1  3  9  6 12  5  6 10 10 12  5  5  4  5  7  9  5  6  9  3 10 12  5  6  9  6 14 12  5  3 10 13  5  5  2 10 14  9  6 11 10  9  3  8  5  5  3 11 10 11 12  4  6 12  2 14  9  3 13  6  9  5  3 12  4  3 11 12  5  5  1  5  6 13  5  3 12  6  9  6 10  9  1  7 10 11  9  5  6  9  5  6 15 15 15 15 )
(15 15 15 15 15 14  8  6  9  3  9  5  6 10 13  1  3 11  9  5  6  9  5  6 12  4  5  5  5  6 13  1  5  3 10 12  5  5  3 10 10  9  6  9  4  4  6 10 14  9  3 10 12  4  4  3  9  5  3 10  9  6 12  5  5  6 11 10  9  3 12  4  7  9  3 10 13  5  1  3  8  3  9  6 13  6 10 12  5  4  6 10  9  3  8  7 15 15 15 15 15 )
(15 15 15 15 15 15 12  3 10 10 12  3 13  4  5  6 10 10 12  5  5  6  9  5  5  3  9  5  3  9  3 10 13  2 12  1  3 11 10 12  6 10 11 10  9  5  3 10  9  6 10 12  5  3 11 10 12  3 12  6 12  5  5  5  3  9  2 12  6 12  5  5  5  6 10 10  9  5  6 12  6 10 12  5  5  5  4  7  9  5  5  6 10 12  6 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 12  6 12  3 12  5  5  5  3 10 10  9  5  5  5  6 11  9  2 12  3 12  6 10  8  3 10  9  6 10 10 10  9  3 10 12  6 10  9  6 10 10 11 10  9  5  6  8  6  9  6  9  3  9  3 11  9  6 10 12  1  5  5  7  9  5  3 10 10  8  5  5  3 13  4  5  3  9  5  7  9  6  9  5  3  8  7 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 13  3 12  3  9  3 11 10 12  6 10  9  5  1  5  6 10 12  7 10  9  5  6 10 10 12  6 11 10 10 12  6 10  8  5  5  6 12  3 12  6 10 10 10 13  5  4  7 10  9  6 10 10 10 10 12  3  8  7 12  3  9  5  6  9  6 10 10 14  9  3 12  5  3 11 10 12  5  3 12  3  8  7 10 14 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 12  1  4  6 12  6 10  9  3 10 12  3 10  9  5  6  9  5  6 10  9  5  6 10  9  3 10 10 12  1  3 10 12  5  5  7  9  6  9  5  6 10 10  9  5  5  5  6 10 11 10 10  8  6  9  6 14  9  3 10 10 13  3 12  5  6  8  5  6 10  9  5  6 10 10  9  5  4  7  8  6  9  6 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 14  9  5  5  5  6 10 12  6  9  6 10 12  5  5  6  9  5  6 12  5  7 10 10 10 10 12  5  6 10 10  9  5  5  5  6  9  2  9  5  6  8  6 13  1  3  9  6  8  4  6 14  9  6  9  1  6 12  6 10  9  4  5  5  3 14  9  3 12  6  9  5  4  4  6  9  5  3 14  9  6 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 12  1  5  5  3 12  3 13  4  3 10  9  3  9  3 10 13  1  3  9  5  6 10 12  4  5  3 11 10 12  6 11  9  1  3 14 10 12  3 11 10 13  1  6 12  6  9  6  9  5  3 10 13  6 10  9  5  5  6  8  5  3 11 12  5  6 10  9  7 10  9  5  5  3 10 11 10  9  6 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 14  9  5  4  7 12  5  5  6 12  2 14 10 12  6  9  6 12  6  9  3 12  1  5  3 10 10 10 11  9  4  6 10 10  9  2 11 10 10 10  9  6  9  3 13  6  9  6 13  2  8  3  9  6 10  9  5  3 14  9  6 12  5  5  3 10 12  5  6 10  9  7 10 10 10  8  6 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 12  1  5  5  5  5  1  5  5  6  9  6 13  1  6  9  5  5  6 12  3 10 11 10 12  2 10 12  4  7  9  6 12  6 10 10 10 12  4  6  9  6 10  9  3 12  5  3 10 14 10  8  5  6 10 13  4  5  6  9  5  3  9  2 10  9  5  5  6 12  3 10 10  8  6 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  3  9  5  3 10  9  7  9  6  9  3  8  5  4  5  7  9  5  6 10 10 10  9  6 12  5  3  9  6 13  1  3 12  2 12  5  5  3 10 11 12  6 10  9  5  6 12  3 10 12  3  9  4  5  5  5  5  6  9  6 10 10 12  6  9  5  5  5  6 12  2 14 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 14  8  3 10 12  2  9  6 13  2 10  8  5  7  9  3 10  9  7 12  2 10 12  5  5  7 10  8  5  3 14 12  5  4  5  5  3 12  6  8  1  3 12  6  9  5  3 10 10 11 10 10 13  5  5  1  3  9  6  9  6 10  9  5  4  5  3  9  5  5  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 14 10 12  3 14 10  9  1  6 10 14  9  5  6 10 10 12  5  5  6 10  9  5  5  5  6 10 11 12  5  1  5  3  9  3 12  7  9  6 10 14  9  1  6 13  6 12  6 10 10  8  5  5  5  6 10 10  9  4  3 14 10 13  3  9  6 10  9  7 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  3 12  3 10 10 10 13  4  5  6  9  3 10  8  5  5  3  9  6 10  9  7  9  5  4  6  9  3 14  9  2 10 12  5  3 10 11 12  5  6 10  9  5  5  3  9  4  6 14  9  5  5  3 10 10 12  7 12  5  4  5  6 12  3  8  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  3 12  6 10 12  5  5  3 13  2 12  6 12  7  9  6 12  3 10 12  5  4  7  9  5  6 12  5  6 10 10  9  3 12  6  8  3  9  5  6 10  9  7 10 10 11  9  1  6 13  5  2 10 12  5  5  5  5  5  5  5  3  8  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  1  3 10 13  1  3 12  3 12  5  5  5  5  6  9  5  2 12  3  9  3  9  6 13  5  1  3 11 10 10 10 12  3 13  6 10 12  5  3 10 10  9  6 10 10 10 12  5  5  3 10 12  3  9  3 11  9  1  1  7 10 14 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 14 10 12  5  6 12  7  8  5  5  3  9  3 13  2 11 12  3 12  6 10 12  5  3  9  6  8  6 10 10 10 11 10  9  5  2  9  3 12  6 10 12  5  6 10 12  1  7  9  6 10 11 12  6 10  8  6 10 14  9  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  1  5  5  5  3 12  5  7 12  6 12  3 10  8  7 10 11  9  6  9  5  6 10 13  2  9  6 12  6 10 12  6 11 10 14  8  7  9  0  7  9  5  4  1  6  9  6  9  6 12  1  3 10 14  9  6  9  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  3 13  3 12  5  5  3  9  3  9  6 10 12  5  4  6 12  3 10 11  9  4  3 10 10 13  5  1  4  3  9  2 12  3 12  5  2 12  5  6  9  3 14  9  6 11 10  9  5  6 14 10  9  6  9  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  1  4  5  7  9  6 10 10 10  9  4  5  5  5  1  7 12  6 10 10 11 10 14 10  9  5  6 13  4  2 12  7 10  9  3 10 11  9  5  2 12  5  6  9  4  6  8  5  5  5  4  6  9  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 14  9  5  3 10 13  2 10 10 12  5  3  9  3 12  5  5  1  2 10 10 12  3 10 10  9  5  5  3 10  9  5  6 10 10 10 10 10  9  6  9  3 13  4  3 11 12  1  7  9  3  9  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  3 12  6  9  6 12  6  9  3 12  6 12  3  9  3 14 12  0  4  7 12  4  2 10  9  5  6 10 12  3  9  6 10  8  6 10 10 11 10 12  5  3 10 12  5  6  9  6  8  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  3 13  0  5  5  3 10 12  5  5  3 14 10 12  5  3 14  9  5  3 13  6 10 12  3 11  8  7 10 10 11 10 14  9  6 12  6 10  9  5  6 10  9  5  3 10  9  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  3 12  5  7 12  2  9  3 11 12  5  4  5  7 12  5  2 11 12  5  5  6  9  6  8  6  9  6 10 12  4  5  2  9  5  5  6 12  3 11 12  6 11 12  2 14 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  1  5  5  3 12  6 12  2  9  3  9  5  5  5  3 10  8  5  3  9  3 12  3 12  7 12  3  8  5  5  3 14 10  9  7  9  5  6  8  5  5  4  5  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  3 11 12  5  3 13  6 10 12  6  9  7  9  6 10 10 11 10 10  8  7 12  5  3  9  6 10  9  7 12  5  4  6  9  6  9  3 12  3  9  1  7 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  4  5  3 12  5  5  4  5  5  6  9  6 11 10 12  2 12  6 12  5  3  9  6 10 13  2  8  1  5  5  7  9  6  9  6 12  7 12  2 14 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 13  1  6 13  5  5  3  9  5  5  6  9  6 10  9  6  9  1  7  9  2 12  3 12  3 10 14 12  5  3  9  6  9  4  5  3  9  5  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  5  5  5  5  2 12  5  5  3 10  9  6  8  5  6 14  9  6 12  3 12  3 10 10  9  3  9  6 10 11 12  3  9  6  8  7 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 13  1  5  7 12  3 13  3 10 10 12  3 10  9  5  3 10 13  5  2 11 12  6 12  2 12  6  9  6  8  7 10 10  9  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  1  5  5  4  5  6 10 12  3 10 14 10 11 12  2 13  3 12  2 13  1  3 14  9  3 10 11  8  5  6 12  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  5  3  9  5  3  8  3 10 12  5  6  8  7 10 11 10 13  4  5  6 12  5  6 12  6  8  6  9  1  7 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 13  2 10 13  2 14 10  8  3  9  1  2  9  6 10 12  3  9  5  5  3  9  5  3 11 12  3 10 14 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 14  8  3 12  5  6 10 12  6 10 14 10 13  4  3 12  6 13  3 10 10 13  4  6  9  4  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 14  8  5  3 11 12  5  3 12  5  6  9  5  4  5  5  5  2 10 10  9  5  3  8  7 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 14  9  6 12  1  7 10  9  5  3 10  9  5  5  3 13  6 10 12  4  3 12  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  1  3 12  5  4  6  9  6  8  6  9  3 12  5  3 10  9  3  8  7 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 14  8  5  3 13  3 10 13  4  7 10 10  9  3 10 12  6 10 14 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  3 10  9  6 10  9  3  9  6 10 10 10  8  7  9  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 14 10 12  5  4  6 12  6 11 10 10  8  6  9  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  1  5  3  9  3  9  4  4  6 14  9  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  3 12  6 10 10  9  5  3  9  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  1  7 10 10 12  3 12  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 14  9  6 12  7  8  7 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  1  5  5  6 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 12  1  7 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
(15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 10 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 )
)
:start_position #(0 50)
:goal_position #(63 50)))