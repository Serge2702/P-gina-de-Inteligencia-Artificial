(defvar irregular (make-instance 'maze
                                 :data #2A(
                                           ( 9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 )
                                           ( 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                           ( 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                           ( 8 0 0 0 0 0 0 0 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 0 0 0 2 )
                                           ( 10 10 10 10 8 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 8 0 0 2 )
                                           ( 10 10 10 10 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 8 0 0 2 )
                                           ( 10 10 10 10 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 8 0 0 2 )
                                           ( 10 10 10 10 12 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 0 6 8 4 4 6 )
                                           ( 10 10 10 10 9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 9 1 0 1 0 1 1 3 )
                                           ( 10 10 10 10 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 )
                                           ( 10 10 10 10 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 )
                                           ( 10 10 10 10 12 4 4 4 0 0 0 0 4 4 4 4 4 4 4 6 12 4 4 4 0 0 0 2 )
                                           ( 10 10 10 12 5 5 5 3 8 0 0 0 1 1 1 3 9 1 1 1 1 1 1 1 0 2 8 2 )
                                           ( 10 10 12 5 5 5 3 10 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 2 8 2 )
                                           ( 10 12 5 5 5 3 10 10 8 0 0 0 0 0 0 2 8 0 0 0 4 4 4 4 4 6 8 2 )
                                           ( 12 5 5 5 3 10 10 10 12 4 4 4 0 0 0 2 10 8 2 8 5 5 5 5 5 5 4 6 )
                                           ( 9 1 1 3 10 10 10 10 9 1 1 1 0 0 0 2 10 8 2 12 5 5 5 5 5 5 5 7 )
                                           ( 8 0 0 2 10 10 10 10 8 0 0 0 0 0 0 2 10 8 0 1 1 1 1 1 1 1 1 3 )
                                           ( 8 0 0 2 10 10 10 10 8 0 0 0 0 0 0 2 10 12 4 4 4 4 4 0 0 4 4 2 )
                                           ( 8 0 0 2 10 10 10 10 8 0 0 0 4 4 4 6 12 5 5 5 5 5 5 2 10 9 1 2 )
                                           ( 8 0 0 2 10 10 10 10 8 0 0 0 1 1 1 1 1 1 1 3 9 5 5 6 14 8 0 2 )
                                           ( 8 0 0 2 10 10 10 10 8 0 0 0 0 0 0 0 0 0 2 10 12 5 5 5 3 8 0 2 )
                                           ( 8 0 0 2 10 10 10 10 8 0 0 0 0 0 0 0 0 0 2 10 9 5 5 5 6 8 0 2 )
                                           ( 8 0 0 2 10 10 10 10 12 4 4 4 4 4 4 4 0 0 2 10 10 9 3 9 3 8 0 2 )
                                           ( 8 0 0 0 0 0 0 2 9 1 1 1 1 1 1 1 0 0 2 10 10 10 10 10 8 0 0 2 )
                                           ( 8 4 4 4 4 4 4 6 8 0 0 0 0 0 0 0 0 0 2 10 10 10 10 10 8 0 0 2 )
                                           ( 8 1 1 1 1 1 1 3 12 4 4 4 4 4 4 4 0 0 2 10 10 10 10 10 8 0 0 2 )
                                           ( 12 4 4 4 4 4 4 4 5 5 5 5 5 5 5 5 4 4 6 10 12 6 12 2 12 4 4 6 )
                                           )
                                 :start_position #(27 19)
                                 :goal_position #(27 23)))
