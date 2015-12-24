//"Diccionario para convertir de la letra al índice del arreglo"
var letter_to_index = new Object();
letter_to_index={
   A:1,
   B:2,
   C:3,
   D:4,
   E:5,
   F:6,
   G:7,
   H:8,
   I:9,
   J:10,
   K:11,
   L:12,
   M:13,
   N:14,
   O:15,
   P:16,
   Q:17,
   R:18,
   S:19,
   T:20,
   U:21,
   V:22,
   W:23,
   X:24,
   Y:25,
   Z:26,
}

//console.log(letter_to_index["B"]);
//console.log("ASDF!");

var centros = [
   [334,92],
   [511,92],
   [123,213],
   [244,284],
   [334,231],
   [422,284],
   [511,231],
   [599,284],
   [722,214],
   [123,456],
   [244,385],
   [334,437],
   [422,385],
   [511,437],
   [599,385],
   [722,455],
   [334,540],
   [511,540]
];

//Función para precargar las imágenes.
function preload_tiles(folder) 
{
   var image_list= 
      [ 
      "/Board.png", //0
      "/A.png",//1
      "/B.png",//2
      "/C.png",//3
      "/D.png",//4
      "/E.png",//5
      "/F.png",//6
      "/G.png",//7
      "/H.png",//8
      "/I.png",//9
      "/J.png",//10
      "/K.png",//11
      "/L.png",//12
      "/M.png",//13
      "/N.png",//14
      "/O.png",//15
      "/P.png",//16
      "/Q.png",//17
      "/R.png",//18
      "/S.png",//19
      "/T.png",//20
      "/U.png",//21
      "/V.png",//22
      "/W.png",//23
      "/X.png",//24
      "/Y.png",//25
      "/Z.png",//26
         ];
   var images = new Array();
   for (i = 0; i < image_list.length; i++) 
   {
      images[i] = new Image();
      images[i].src = folder.concat(image_list[i]);
   } 
   return images;
}

var tiles=new Array();
tiles[0]=preload_tiles("BYN");

var cruz=new Image();
cruz.src="cross.png";
var question=new Image();
question.src="qm.png";
var rotacion=new Image();
rotacion.src="rotation.png";
var used=new Image();
used.src="used.png";

function dibujo(){
    //var selected_maze=document.getElementById("maze_list").value;
    //document.getElementById("Texto").textContent=selected_maze;
    //maze=maze_list[selected_maze];
    //maze.height=maze.data.length;
    //maze.width=maze.data[0].length;
    var c=document.getElementById("myCanvas");
    c.height=maze.height*32;
    c.width=maze.width*32;
    var c_trayectoria=document.getElementById("trayectoria");
    c_trayectoria.height=maze.height*32;
    c_trayectoria.width=maze.width*32;
    var ctx=c.getContext("2d");

    var c_ancho;
    var c_alto;
    for(c_alto=0;c_alto<maze.height;c_alto++)
    {
        for(c_ancho=0;c_ancho<maze.width;c_ancho++)
        {
            ctx.drawImage(document.getElementById(maze.data[c_alto][c_ancho]),32*c_ancho,32*c_alto);
        }
    }
    //ctx.drawImage(point,72,96)

}

function inicializa(){
    //var selected_board=document.getElementById("board_list").value;
    //var actual_tiles=tiles[selected_board];
    var c_tablero=document.getElementById("c_tablero"); 
    var ctx_tablero=c_tablero.getContext("2d");
    ctx_tablero.drawImage(tiles[0][0],0,0);
}

var TO_RADIANS = Math.PI/180; 
function drawRotatedImage(context, image, x, y, angle) { 
	// save the current co-ordinate system 
	// before we screw with it
	context.save(); 
	// move to the middle of where we want to draw our image
	context.translate(x, y);
	// rotate around that point, converting our 
	// angle from degrees to radians 
	context.rotate(angle * TO_RADIANS);
	// draw it up and to the left by half the width
	// and height of the image 
	context.drawImage(image, -(image.width/2), -(image.height/2));
	// and restore the co-ords to how they were when we began
	context.restore(); 
}

function draw_test(){
    var c_tablero=document.getElementById("c_tablero"); 
    var ctx_tablero=c_tablero.getContext("2d");
    //ctx_tablero.drawImage(tiles[0][0],0,0);
    //1
    drawRotatedImage(ctx_tablero,tiles[0][26],334,92,180)
    //2
    drawRotatedImage(ctx_tablero,tiles[0][18],511,92,90)

    //3
    drawRotatedImage(ctx_tablero,tiles[0][7],123,213,30)
    //4
    drawRotatedImage(ctx_tablero,tiles[0][25],244,284,240)
    //5
    drawRotatedImage(ctx_tablero,tiles[0][15],334,231,300)
    //6
    drawRotatedImage(ctx_tablero,tiles[0][12],422,284,120)
    //7
    drawRotatedImage(ctx_tablero,tiles[0][17],511,231,180)
    //8
    drawRotatedImage(ctx_tablero,tiles[0][13],599,284,0)
    //9
    drawRotatedImage(ctx_tablero,tiles[0][22],722,214,240)

    //10
    drawRotatedImage(ctx_tablero,tiles[0][1],123,456,330)
    //11
    drawRotatedImage(ctx_tablero,tiles[0][23],244,385,180)
    //12
    drawRotatedImage(ctx_tablero,tiles[0][19],334,437,0)
    //13
    drawRotatedImage(ctx_tablero,tiles[0][5],422,385,300)
    //14
    drawRotatedImage(ctx_tablero,tiles[0][21],511,437,240)
    //15
    drawRotatedImage(ctx_tablero,tiles[0][4],599,385,300)
    //16
    drawRotatedImage(ctx_tablero,tiles[0][14],722,455,120)

    //17
    drawRotatedImage(ctx_tablero,tiles[0][11],334,540,180)
    //18
    drawRotatedImage(ctx_tablero,tiles[0][10],511,540,180)
    //drawRotatedImage(ctx_tablero,tiles[0][2],0,0,90)
}

function draw_solution(solution,estados){
    var c_tablero=document.getElementById("c_tablero"); 
    var ctx_tablero=c_tablero.getContext("2d");
   var c_piezas=document.getElementById("c_piezas"); 
   var ctx_piezas=c_piezas.getContext("2d");
    var row;
    var col;
    var i;
    for (i = 0; i < solution.length; i++){
        drawRotatedImage(ctx_tablero,tiles[0][solution[i][0]],centros[i][0],centros[i][1],solution[i][1]);
        row=Math.floor((solution[i][0]-1)/9);
        col=(solution[i][0]-1)%9;
        ctx_piezas.drawImage(used,100*col,100*row);
        if(estados[i]==1)
        {
            drawRotatedImage(ctx_tablero,question,centros[i][0],centros[i][1],0);
        }
        if(estados[i]==2)
        {
            drawRotatedImage(ctx_tablero,rotacion,centros[i][0],centros[i][1],0);
        }
        if(estados[i]==3)
        {
            drawRotatedImage(ctx_tablero,cruz,centros[i][0],centros[i][1],0);
        }
    }
}

function draw_tiles(piezas){
   var c_piezas=document.getElementById("c_piezas"); 
   var ctx_piezas=c_piezas.getContext("2d");
   ctx_piezas.fillStyle="white";
   ctx_piezas.fillRect(0,0,c_piezas.width,c_piezas.height);
   var contador=1;
   var cont_filas=0;
   var cont_cols=0;
   while (contador<=piezas.length){
      ctx_piezas.drawImage(piezas[contador],100*cont_cols,100*cont_filas,100,100);
      contador=contador+1;
      cont_cols=cont_cols+1;
      if(cont_cols==9)
      {
         cont_filas=cont_filas+1;
         cont_cols=0;
      }
   }
}
