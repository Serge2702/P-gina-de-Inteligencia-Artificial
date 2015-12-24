(defvar enorme (make-instance 'maze
                              :data #2A(
                                        ( 1 1 1 1 1 1 1 1 1 1 1 3 9 1 1 1 0 0 0 2 9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 )
                                        ( 0 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                        ( 0 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                        ( 4 4 4 4 0 0 0 0 0 0 0 2 8 0 0 0 4 4 4 6 12 4 4 4 4 4 4 4 4 4 4 4 0 0 0 0 0 0 0 2 )
                                        ( 9 1 1 1 0 0 0 2 8 0 0 2 8 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 2 8 0 0 2 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 8 0 0 2 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 8 0 0 2 )
                                        ( 8 0 0 0 4 4 4 6 8 0 0 2 12 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 6 8 0 0 2 )
                                        ( 8 0 0 0 1 1 1 3 8 0 0 0 1 1 1 1 1 1 1 3 9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 2 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                        ( 8 0 0 0 0 0 0 2 12 4 4 4 0 0 0 0 4 4 4 6 8 0 0 0 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 6 )
                                        ( 8 0 0 2 8 0 0 2 9 1 1 1 0 0 0 2 9 1 1 1 0 0 0 2 9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 )
                                        ( 8 0 0 2 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                        ( 8 0 0 2 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                        ( 8 0 0 2 8 0 0 2 8 0 0 0 4 4 4 6 8 0 0 0 4 4 4 6 8 0 0 0 0 0 0 0 4 4 4 4 0 0 0 2 )
                                        ( 8 0 0 2 8 0 0 2 8 0 0 0 1 1 1 3 8 0 0 2 9 1 1 1 0 0 0 2 8 0 0 2 9 1 1 3 8 0 0 2 )
                                        ( 8 0 0 2 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 2 8 0 0 2 )
                                        ( 8 0 0 2 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 2 8 0 0 2 )
                                        ( 12 4 4 6 8 0 0 2 12 4 4 4 4 4 4 6 8 0 0 2 12 4 4 4 4 4 4 6 8 0 0 2 8 0 0 2 8 0 0 2 )
                                        ( 9 1 1 1 0 0 0 2 9 1 1 1 1 1 1 3 8 0 0 2 9 1 1 1 1 1 1 1 0 0 0 2 8 0 0 0 0 0 0 2 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 )
                                        ( 8 0 0 0 4 4 4 6 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 0 4 4 4 4 4 4 4 6 8 0 0 0 4 4 4 6 )
                                        ( 8 0 0 0 1 1 1 3 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 1 1 1 3 9 1 1 3 8 0 0 0 1 1 1 3 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 0 0 0 0 2 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 8 0 0 2 8 0 0 0 0 0 0 2 )
                                        ( 12 4 4 4 0 0 0 2 8 0 0 2 12 4 4 4 4 4 4 6 12 4 4 4 0 0 0 2 8 0 0 2 12 4 4 4 0 0 0 2 )
                                        ( 9 1 1 1 0 0 0 2 8 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 2 8 0 0 0 1 1 1 3 8 0 0 2 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 8 0 0 2 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 2 8 0 0 2 )
                                        ( 8 0 0 0 4 4 4 6 12 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 6 8 0 0 0 4 4 4 6 8 0 0 2 )
                                        ( 8 0 0 2 9 1 1 1 1 1 1 3 9 1 1 1 1 1 1 1 1 1 1 3 9 1 1 1 0 0 0 0 1 1 1 1 0 0 0 2 )
                                        ( 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                        ( 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                        ( 8 0 0 2 8 0 0 0 0 0 0 2 8 0 0 0 4 4 4 4 0 0 0 2 8 0 0 0 4 4 4 4 4 4 4 4 4 4 4 6 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 1 1 1 3 8 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 3 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                        ( 8 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 2 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 )
                                        ( 12 4 4 4 4 4 4 6 12 4 4 4 4 4 4 4 4 4 4 6 12 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 6 )
                                        )
                              :start_position #(0 0)
                              :goal_position #(0 19)))