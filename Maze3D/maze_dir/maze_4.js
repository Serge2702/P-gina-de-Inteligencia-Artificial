var maze_4=new Object();
maze_4.data= [
    [1, 3, 9, 5, 5, 1, 5, 5, 5, 1, 3, 9, 1, 5, 5, 5, 1, 5, 5, 5, 1, 5, 1, 1, 5, 5, 1, 3, 9, 5, 3, 9, 5, 5, 1, 5, 3, 9, 5, 5, 1, 3],
    [10, 10, 10, 9, 3, 12, 1, 5, 1, 6, 8, 4, 4, 3, 9, 1, 17, 3, 9, 1, 6, 9, 6, 8, 5, 5, 17, 6, 10, 9, 6, 12, 3, 9, 6, 9, 6, 10, 9, 1, 17, 6],
    [8, 6, 10, 10, 12, 3, 12, 5, 16, 3, 10, 9, 3, 10, 12, 17, 6, 12, 16, 17, 3, 10, 9, 6, 9, 3, 10, 9, 4, 17, 5, 5, 16, 2, 9, 6, 9, 17, 4, 6, 12, 3],
    [12, 3, 10, 12, 5, 16, 5, 3, 8, 16, 2, 10, 12, 2, 9, 2, 9, 3, 10, 12, 6, 12, 4, 5, 17, 6, 8, 4, 5, 6, 9, 5, 4, 6, 10, 9, 17, 6, 9, 3, 9, 2],
    [9, 2, 10, 9, 5, 17, 3, 10, 10, 12, 4, 17, 5, 4, 6, 12, 0, 2, 10, 9, 5, 5, 5, 3, 12, 5, 16, 5, 5, 5, 16, 3, 9, 5, 0, 17, 6, 9, 6, 10, 10, 10],
    [10, 10, 8, 16, 3, 10, 12, 6, 10, 9, 5, 16, 3, 9, 3, 9, 6, 10, 8, 2, 9, 3, 9, 16, 3, 9, 6, 9, 3, 9, 17, 6, 10, 9, 6, 12, 5, 6, 9, 16, 6, 10],
    [10, 12, 16, 6, 12, 17, 5, 1, 4, 17, 5, 6, 8, 2, 10, 8, 3, 12, 2, 12, 16, 6, 12, 6, 10, 12, 1, 6, 10, 10, 10, 9, 4, 6, 9, 5, 5, 1, 6, 10, 9, 6],
    [8, 3, 12, 3, 9, 6, 9, 16, 5, 6, 9, 3, 10, 10, 10, 8, 17, 3, 12, 3, 10, 9, 5, 5, 17, 1, 17, 3, 8, 6, 10, 10, 9, 5, 17, 3, 9, 6, 9, 16, 4, 3],
    [12, 17, 3, 12, 16, 3, 10, 12, 5, 3, 10, 12, 4, 17, 6, 12, 2, 10, 9, 4, 6, 10, 9, 3, 10, 10, 10, 8, 6, 9, 4, 4, 16, 5, 2, 10, 12, 5, 4, 17, 3, 10],
    [9, 2, 12, 5, 17, 2, 10, 9, 5, 6, 10, 9, 3, 10, 9, 3, 8, 16, 2, 9, 5, 2, 10, 12, 6, 12, 6, 12, 3, 10, 9, 5, 6, 9, 6, 12, 5, 5, 5, 16, 2, 10],
    [10, 10, 9, 5, 6, 12, 2, 10, 9, 3, 10, 10, 10, 10, 10, 10, 10, 10, 8, 6, 9, 17, 6, 9, 5, 5, 5, 3, 8, 17, 4, 5, 3, 12, 5, 5, 5, 3, 9, 6, 10, 10],
    [10, 10, 12, 5, 5, 5, 6, 10, 12, 2, 12, 6, 10, 10, 12, 16, 17, 2, 12, 5, 4, 6, 9, 16, 5, 5, 3, 10, 10, 12, 3, 9, 4, 3, 9, 3, 9, 6, 12, 3, 10, 10],
    [12, 2, 9, 5, 5, 3, 9, 4, 5, 2, 9, 5, 16, 6, 9, 6, 10, 12, 1, 5, 5, 3, 12, 4, 5, 3, 12, 17, 16, 5, 6, 8, 5, 4, 2, 12, 16, 3, 9, 6, 10, 10],
    [9, 6, 12, 3, 9, 6, 12, 5, 5, 2, 10, 9, 6, 9, 4, 3, 10, 9, 17, 5, 5, 16, 5, 5, 3, 12, 1, 16, 6, 9, 3, 10, 9, 5, 6, 9, 6, 12, 17, 5, 17, 2],
    [12, 3, 9, 6, 10, 9, 5, 5, 5, 2, 12, 17, 5, 17, 3, 10, 12, 17, 6, 9, 1, 17, 5, 1, 16, 3, 12, 6, 9, 17, 6, 10, 10, 9, 3, 10, 9, 5, 16, 3, 8, 6],
    [9, 16, 6, 9, 17, 16, 5, 5, 3, 12, 3, 10, 9, 2, 12, 4, 5, 6, 9, 6, 12, 6, 9, 2, 10, 10, 9, 3, 10, 12, 3, 12, 6, 10, 10, 10, 12, 3, 10, 12, 17, 3],
    [10, 12, 5, 4, 6, 12, 3, 9, 16, 3, 10, 10, 8, 2, 9, 5, 5, 3, 12, 3, 9, 5, 2, 12, 4, 6, 10, 10, 10, 9, 6, 9, 5, 6, 10, 12, 3, 10, 10, 9, 6, 10],
    [12, 3, 9, 3, 9, 1, 6, 8, 17, 16, 17, 16, 6, 12, 4, 5, 5, 16, 3, 8, 4, 3, 8, 3, 9, 5, 17, 16, 17, 16, 5, 16, 5, 3, 12, 3, 10, 10, 10, 10, 9, 6],
    [9, 17, 16, 17, 16, 4, 5, 6, 10, 10, 12, 6, 9, 5, 3, 9, 5, 17, 16, 6, 9, 2, 12, 17, 4, 3, 10, 12, 16, 6, 9, 4, 3, 12, 5, 6, 10, 10, 10, 10, 12, 3],
    [8, 6, 10, 12, 2, 9, 5, 5, 17, 16, 5, 3, 8, 5, 2, 8, 3, 10, 8, 5, 4, 16, 3, 10, 9, 6, 12, 5, 17, 5, 17, 3, 8, 1, 5, 5, 17, 6, 8, 4, 3, 10],
    [12, 1, 16, 5, 16, 6, 9, 5, 6, 12, 3, 10, 10, 9, 6, 10, 12, 17, 6, 9, 1, 6, 12, 17, 16, 3, 9, 1, 16, 3, 10, 8, 6, 12, 5, 5, 16, 3, 12, 3, 10, 10],
    [9, 6, 8, 5, 0, 3, 10, 9, 5, 1, 4, 2, 10, 10, 9, 2, 9, 16, 3, 10, 12, 5, 5, 6, 12, 16, 6, 10, 12, 16, 2, 12, 3, 9, 3, 9, 17, 6, 9, 6, 10, 10],
    [10, 9, 16, 3, 10, 10, 12, 17, 5, 17, 1, 6, 10, 12, 16, 17, 6, 10, 10, 12, 5, 5, 3, 9, 3, 8, 5, 17, 3, 12, 6, 9, 16, 4, 16, 17, 6, 9, 4, 5, 2, 10],
    [10, 10, 10, 12, 2, 12, 1, 16, 5, 6, 10, 9, 4, 5, 4, 0, 1, 2, 10, 9, 5, 5, 6, 10, 10, 10, 9, 16, 17, 3, 9, 16, 6, 9, 6, 12, 3, 8, 5, 5, 2, 10],
    [10, 12, 4, 5, 16, 3, 12, 6, 9, 3, 12, 4, 5, 5, 3, 12, 6, 10, 10, 12, 3, 9, 1, 17, 6, 12, 4, 6, 10, 10, 10, 8, 5, 4, 1, 3, 12, 17, 3, 9, 16, 6],
    [10, 9, 1, 5, 2, 12, 5, 3, 10, 12, 5, 5, 5, 3, 10, 9, 5, 16, 17, 1, 17, 2, 10, 10, 9, 3, 9, 5, 6, 12, 17, 6, 9, 3, 12, 16, 3, 12, 17, 6, 8, 3],
    [12, 6, 10, 9, 16, 1, 5, 6, 12, 5, 5, 5, 5, 17, 6, 8, 3, 10, 12, 6, 10, 10, 10, 10, 10, 12, 6, 9, 5, 5, 6, 9, 16, 4, 3, 10, 8, 3, 12, 3, 10, 10],
    [9, 5, 2, 10, 8, 16, 5, 3, 9, 5, 3, 9, 5, 6, 9, 6, 12, 4, 3, 9, 17, 16, 17, 2, 10, 9, 5, 16, 5, 3, 9, 6, 12, 3, 8, 6, 10, 12, 3, 10, 12, 2],
    [10, 9, 16, 6, 10, 12, 3, 8, 6, 9, 16, 0, 5, 1, 6, 9, 5, 5, 2, 12, 16, 6, 10, 12, 6, 10, 9, 2, 9, 17, 0, 3, 9, 6, 10, 9, 2, 9, 16, 17, 5, 2],
    [12, 6, 12, 5, 2, 9, 6, 12, 5, 16, 2, 12, 1, 6, 9, 2, 9, 1, 17, 3, 12, 3, 10, 9, 3, 10, 10, 8, 6, 10, 10, 12, 0, 3, 8, 16, 6, 8, 6, 12, 3, 10],
    [9, 5, 3, 9, 6, 8, 1, 5, 5, 6, 12, 1, 16, 5, 4, 6, 10, 10, 10, 10, 9, 2, 12, 6, 10, 10, 8, 17, 5, 6, 12, 3, 10, 12, 16, 4, 1, 6, 9, 1, 6, 10],
    [12, 5, 4, 4, 5, 6, 12, 5, 5, 5, 5, 6, 12, 5, 5, 5, 6, 12, 4, 6, 12, 4, 5, 5, 4, 6, 12, 4, 5, 5, 5, 6, 12, 5, 4, 5, 4, 5, 6, 12, 5, 4]] ;
maze_4.height=maze_4.data.length;
maze_4.width =maze_4.data[0].length;
maze_4.start=[0,0];
maze_4.end=[31,41];
maze_4.name="Nivel 4";
