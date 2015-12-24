(defvar maze_1 
  (make-instance 'maze 
                 :data #2A((3 9 3 9 1 3)
                           (10 10 10 10 12 6)
                           (10 10 12 17 5 3)
                           (8 6 9 4 3 10)
                           (10 9 16 5 6 10)
                           (12 6 12 5 5 4))
                 :start_position #(0 0)
                 :goal_position #(5 5)))
