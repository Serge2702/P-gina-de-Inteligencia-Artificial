var forma=new Object();
forma.data=[
    [15,15,15,15,11,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,11,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,11,15,15,15,15,15,15,15,15,15,15,15,15,15,15],
    [15,15,15,9,4,7,15,15,15,15,15,15,15,15,15,15,15,15,15,9,4,7,15,15,15,15,15,15,15,15,15,15,15,15,15,13,4,3,15,15,15,15,15,15,15,15,15,15,15,15,15],
    [15,15,13,4,5,1,3,15,15,15,15,15,15,15,15,15,15,15,11,8,5,5,3,15,15,15,15,15,15,15,15,15,15,15,9,5,5,2,11,15,15,15,15,15,15,15,15,15,15,15,15],
    [15,13,1,5,5,6,12,3,15,15,15,15,15,15,15,15,15,11,8,6,9,3,8,7,15,15,15,15,15,15,15,15,15,9,4,3,13,4,4,3,15,15,15,15,15,15,15,15,15,15,15],
    [9,5,6,13,5,5,1,6,11,15,15,15,15,15,15,15,9,2,10,9,2,14,12,1,3,15,15,15,15,15,15,15,9,4,7,12,3,9,3,10,11,15,15,15,15,15,15,15,15,15,15],
    [8,5,5,5,5,3,12,5,2,11,15,15,15,15,15,15,10,10,10,10,12,5,3,10,10,11,15,15,15,15,15,15,10,9,5,5,6,14,10,10,8,3,15,15,15,15,15,15,15,15,15],
    [10,9,5,5,3,12,5,3,12,4,7,15,15,15,15,15,14,10,10,12,5,7,10,10,10,8,7,15,15,15,15,15,10,10,9,5,1,5,2,10,10,12,3,15,15,15,15,15,15,15,15],
    [12,6,13,5,6,9,5,2,9,5,5,3,15,15,15,15,9,6,12,5,5,5,2,10,10,10,9,3,15,15,15,15,14,10,12,3,10,9,6,10,10,11,10,11,15,15,15,15,15,15,15],
    [9,5,5,5,5,6,9,6,10,9,7,8,3,15,15,15,12,5,5,1,5,3,10,10,12,6,10,12,3,15,15,15,9,6,13,2,10,12,7,10,10,10,12,4,3,15,15,15,15,15,15],
    [10,9,5,3,13,3,10,11,10,8,3,10,12,7,15,15,9,5,5,6,11,10,10,12,5,5,6,11,8,7,15,15,8,5,3,14,12,1,5,4,6,12,5,3,10,11,15,15,15,15,15],
    [12,2,11,10,9,6,10,10,10,14,10,12,5,5,3,15,12,1,3,9,6,10,10,9,5,5,5,6,12,5,3,15,12,3,12,5,3,12,7,9,5,5,3,10,10,12,3,15,15,15,15],
    [3,12,2,10,8,5,4,6,10,9,4,3,13,3,10,11,15,14,10,12,5,6,10,10,9,5,5,5,5,3,10,11,15,12,3,11,12,5,5,4,5,3,10,12,4,5,4,3,15,15,15],
    [0,3,14,10,14,9,5,5,6,8,3,12,5,6,10,8,3,15,12,1,5,5,6,12,4,5,5,5,7,10,10,8,7,15,12,2,9,5,5,5,3,14,10,9,3,9,7,10,11,15,15],
    [0,0,3,12,3,10,11,9,3,10,12,5,5,3,10,10,8,3,15,12,3,9,5,3,9,5,5,5,5,2,10,12,5,3,15,14,12,5,5,3,12,5,2,10,10,12,5,4,4,3,15],
    [0,0,0,5,2,10,12,6,10,10,11,9,5,2,14,14,10,8,5,5,2,10,9,6,8,5,5,5,3,10,14,9,5,0,5,5,1,5,7,10,9,3,10,10,12,5,7,9,3,8,5],
    [0,0,6,9,2,10,9,5,2,10,10,10,11,10,9,5,2,14,15,11,12,6,10,11,10,11,9,3,10,12,5,6,9,6,15,13,4,5,3,10,14,10,10,10,13,5,3,10,12,6,15],
    [0,6,11,10,10,10,10,13,2,12,2,10,10,10,12,3,14,15,9,4,5,3,10,10,10,10,10,10,12,3,9,5,6,15,9,5,5,3,10,12,3,12,6,10,9,5,6,8,7,15,15],
    [6,9,2,10,12,6,8,3,12,7,10,10,8,6,9,6,15,11,10,11,9,6,10,10,10,12,6,12,3,10,8,7,15,9,4,3,13,4,4,7,12,5,5,6,8,5,5,6,15,15,15],
    [11,10,10,10,13,5,6,12,5,1,6,10,10,9,6,15,9,2,10,10,12,5,6,12,4,5,5,5,6,10,14,15,11,10,11,12,5,5,5,5,5,5,1,7,10,9,7,15,15,15,15],
    [12,6,10,12,5,5,5,5,3,10,11,10,8,6,15,15,10,14,10,12,5,1,1,5,5,5,3,9,1,6,15,15,10,10,10,9,1,3,13,1,3,11,12,5,4,6,15,15,15,15,15],
    [9,5,4,5,5,5,5,3,10,12,6,10,14,15,15,15,12,3,12,5,3,10,10,9,1,7,10,10,14,15,15,15,10,10,8,6,10,12,5,6,10,8,5,1,7,15,15,15,15,15,15],
    [8,5,5,3,9,5,3,10,10,9,1,6,15,15,15,15,9,4,5,7,10,10,10,10,12,5,4,6,15,15,15,15,10,10,12,3,10,9,5,3,10,10,9,6,15,15,15,15,15,15,15],
    [10,9,7,10,12,7,10,10,10,10,14,15,15,15,15,15,8,5,5,5,6,10,10,10,13,1,7,15,15,15,15,15,10,10,11,10,10,10,13,6,10,10,14,15,15,15,15,15,15,15,15],
    [10,12,3,12,5,3,12,6,8,6,15,15,15,15,15,15,10,13,1,5,3,10,10,10,9,6,15,15,15,15,15,15,10,10,12,6,10,8,5,3,8,6,15,15,15,15,15,15,15,15,15],
    [12,5,4,5,3,12,5,5,6,15,15,15,15,15,15,15,12,5,6,11,10,10,10,8,6,15,15,15,15,15,15,15,12,4,5,5,6,12,3,12,6,15,15,15,15,15,15,15,15,15,15],
    [15,13,1,5,6,13,1,7,15,15,15,15,15,15,15,15,15,13,1,2,10,14,10,14,15,15,15,15,15,15,15,15,15,13,1,1,1,7,8,7,15,15,15,15,15,15,15,15,15,15,15],
    [15,15,12,5,5,1,6,15,15,15,15,15,15,15,15,15,15,15,14,10,10,9,6,15,15,15,15,15,15,15,15,15,15,15,14,10,14,9,6,15,15,15,15,15,15,15,15,15,15,15,15],
    [15,15,15,13,1,6,15,15,15,15,15,15,15,15,15,15,15,15,15,12,0,6,15,15,15,15,15,15,15,15,15,15,15,15,15,12,1,6,15,15,15,15,15,15,15,15,15,15,15,15,15],
    [15,15,15,15,14,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,14,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,14,15,15,15,15,15,15,15,15,15,15,15,15,15,15]];
forma.height=forma.data.length;
forma.width =forma.data[0].length;
forma.start=[14,0];
forma.end=[14,50];
forma.name="Forma";
