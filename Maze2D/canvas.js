var maze=new Object();
var maze1=new Object();
var maze2=new Object();
var maze3=new Object();
var maze4=new Object();
var solucion;

function preload_tiles(folder) 
{
    var image_list= 
        [
        "/0.png",
        "/1.png",
        "/2.png",
        "/3.png",
        "/4.png",
        "/5.png",
        "/6.png",
        "/7.png",
        "/8.png",
        "/9.png",
        "/10.png",
        "/11.png",
        "/12.png",
        "/13.png",
        "/14.png",
        "/15.png",
        "/guy.png",
        "/end.png"];
    var images = new Array();
    for (i = 0; i < image_list.length; i++) 
    {
        images[i] = new Image();
        images[i].src = folder.concat(image_list[i]);
    } 
    return images;
}

var tiles=new Array();
tiles[0]=preload_tiles("Space");
tiles[1]=preload_tiles("Poke1");
tiles[2]=preload_tiles("Water");
var image_error=new Image();
var image_oob=new Image();
var image_question=new Image();
image_error.src="Images/error.png"
image_oob.src="Images/oob.png"
image_question.src="Images/question.png"

function dibujo(){
    var selected_maze=document.getElementById("maze_list").value;
    //document.getElementById("Texto").textContent=selected_maze;
    maze=maze_list[selected_maze];
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
    var selected_maze=document.getElementById("maze_list").value;
    var maze=maze_list[selected_maze];
    //var maze=maze_list[0];
    draw_maze(maze);
    draw_start_top_layer(maze);
    //draw_path(maze,solucion);
}

function draw_maze(maze){
    var c_maze=document.getElementById("c_maze"); 
    var ctx_maze=c_maze.getContext("2d");
    c_maze.height=maze.height*32;
    c_maze.width=maze.width*32;
    var c_ancho;
    var c_alto;
    for(c_alto=0;c_alto<maze.height;c_alto++)
    {
        for(c_ancho=0;c_ancho<maze.width;c_ancho++)
        {
            ctx_maze.drawImage(tiles[document.getElementById("tiles_list").value][maze.data[c_alto][c_ancho]],32*c_ancho,32*c_alto);
        }
    }
}

function draw_start_top_layer(maze){
    var c_maze=document.getElementById("c_maze"); 
    //var c_top=document.getElementById("c_top"); 
    var ctx_maze=c_maze.getContext("2d");
    //c_maze.height=maze.height*32;
    //c_maze.width=maze.width*32;
    ctx_maze.drawImage(tiles[document.getElementById("tiles_list").value][16],32*maze.start[1],32*maze.start[0]);
    ctx_maze.drawImage(tiles[document.getElementById("tiles_list").value][17],32*maze.end[1],32*maze.end[0]);
}

//solucion=[2,4,4,4,4,6,0,0,0,6,0,6,4,6,4,2,2,4,6,4,6,0];
//var foobar=[2,3,6,7,10,11,14,15];
//console.log("índice " + foobar.indexOf(4));

function check_bit(num_bit,numero){
    if((numero & (1 << num_bit))!=0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

function draw_path(maze,path,color){

    //Variables para el canvas:
    var c_maze=document.getElementById("c_maze"); 
    var ctx_maze=c_maze.getContext("2d");
    //Variables para las coordenadas de la posición.
    var coord_actual=maze.start;
    var coord_siguiente=[0,0];
    var dir_actual;
    //Variables para la validación:
    var path_error=false;
    var ruta_valida;
    var paredes_actual=maze.data[coord_actual[0]][coord_actual[1]];
    var paredes_siguiente;

    var distancia_recorrida=0;
    var r2=Math.sqrt(2);
    //Dibujando el camino.
    var i=0;

    ctx_maze.beginPath();
    ctx_maze.lineWidth=4;
    ctx_maze.moveTo(32*coord_actual[1]+16,32*coord_actual[0]+16);
    while((i<path.length) && (path_error==false)){
        ruta_valida=false;
        dir_actual=path[i];
        paredes_actual=maze.data[coord_actual[0]][coord_actual[1]];
        switch(dir_actual){

            case 0: //Norte
                distancia_recorrida+=1;
                coord_siguiente=[coord_actual[0]-1,coord_actual[1]];
                ctx_maze.lineTo(32*coord_siguiente[1]+16,32*coord_siguiente[0]+16);
                if(dentro_laberinto(coord_siguiente,maze)==false)
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1],32*coord_actual[0]-8);
                }
                else if (check_bit(0,paredes_actual))
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1],32*coord_actual[0]-16);
                }
                break;

            case 1: //Noreste
                distancia_recorrida+=r2;
                coord_siguiente=[coord_actual[0]-1,coord_actual[1]+1];
                ctx_maze.lineTo(32*coord_siguiente[1]+16,32*coord_siguiente[0]+16);
                if(dentro_laberinto(coord_siguiente,maze)==false)
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1]+8,32*coord_actual[0]-8);
                }
                else 
                {
                    paredes_siguiente=maze.data[coord_siguiente[0]][coord_siguiente[1]];
                    if(!((!check_bit(0,paredes_actual) && !check_bit(3,paredes_siguiente)) || (!check_bit(1,paredes_actual) && !check_bit(2,paredes_siguiente))))
                    {
                        path_error=true;
                        ctx_maze.drawImage(image_error,32*coord_actual[1]+16,32*coord_actual[0]-16);
                    }
                }
                break;

            case 2: //Este
                distancia_recorrida+=1.000;
                coord_siguiente=[coord_actual[0],coord_actual[1]+1];
                ctx_maze.lineTo(32*coord_siguiente[1]+16,32*coord_siguiente[0]+16);
                if(dentro_laberinto(coord_siguiente,maze)==false)
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1]+8,32*coord_actual[0]);
                }
                else if (check_bit(1,paredes_actual))
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1]+16,32*coord_actual[0]);
                }
                break;

            case 3: //Sureste
                distancia_recorrida+=r2;
                coord_siguiente=[coord_actual[0]+1,coord_actual[1]+1];
                ctx_maze.lineTo(32*coord_siguiente[1]+16,32*coord_siguiente[0]+16);
                if(dentro_laberinto(coord_siguiente,maze)==false)
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1]+8,32*coord_actual[0]+8);
                }
                else 
                {
                    paredes_siguiente=maze.data[coord_siguiente[0]][coord_siguiente[1]];
                    if(!((!check_bit(1,paredes_actual) && !check_bit(0,paredes_siguiente)) || (!check_bit(2,paredes_actual) && !check_bit(3,paredes_siguiente))))
                    {
                        path_error=true;
                        ctx_maze.drawImage(image_error,32*coord_actual[1]+16,32*coord_actual[0]+16);
                    }
                }
                break;

            case 4: //Sur
                distancia_recorrida+=1.000;
                coord_siguiente=[coord_actual[0]+1,coord_actual[1]];
                ctx_maze.lineTo(32*coord_siguiente[1]+16,32*coord_siguiente[0]+16);
                if(dentro_laberinto(coord_siguiente,maze)==false)
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1],32*coord_actual[0]+8);
                }
                else if (check_bit(2,paredes_actual))
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1],32*coord_actual[0]+16);
                }
                break;

            case 5: //Suroeste
                distancia_recorrida+=r2;
                coord_siguiente=[coord_actual[0]+1,coord_actual[1]-1];
                ctx_maze.lineTo(32*coord_siguiente[1]+16,32*coord_siguiente[0]+16);
                if(dentro_laberinto(coord_siguiente,maze)==false)
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1]-8,32*coord_actual[0]+8);
                }
                else 
                {
                    paredes_siguiente=maze.data[coord_siguiente[0]][coord_siguiente[1]];
                    if(!((!check_bit(2,paredes_actual) && !check_bit(1,paredes_siguiente)) || (!check_bit(3,paredes_actual) && !check_bit(0,paredes_siguiente))))
                    {
                        path_error=true;
                        ctx_maze.drawImage(image_error,32*coord_actual[1]-16,32*coord_actual[0]+16);
                    }
                }
                break;

            case 6: //Oeste
                distancia_recorrida+=1.000;
                coord_siguiente=[coord_actual[0],coord_actual[1]-1];
                ctx_maze.lineTo(32*coord_siguiente[1]+16,32*coord_siguiente[0]+16);
                if(dentro_laberinto(coord_siguiente,maze)==false)
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1]-8,32*coord_actual[0]);
                }
                else if (check_bit(3,paredes_actual))
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1]-16,32*coord_actual[0]);
                }
                break;

            case 7: //Noroeste
                distancia_recorrida+=r2;
                coord_siguiente=[coord_actual[0]-1,coord_actual[1]-1];
                ctx_maze.lineTo(32*coord_siguiente[1]+16,32*coord_siguiente[0]+16);
                if(dentro_laberinto(coord_siguiente,maze)==false)
                {
                    path_error=true;
                    ctx_maze.drawImage(image_error,32*coord_actual[1]-8,32*coord_actual[0]-8);
                }
                else 
                {
                    paredes_siguiente=maze.data[coord_siguiente[0]][coord_siguiente[1]];
                    if(!((!check_bit(3,paredes_actual) && !check_bit(2,paredes_siguiente)) || (!check_bit(0,paredes_actual) && !check_bit(1,paredes_siguiente))))
                    {
                        path_error=true;
                        ctx_maze.drawImage(image_error,32*coord_actual[1]-16,32*coord_actual[0]-16);
                    }
                }
                break;
        }
        coord_actual=coord_siguiente;
        i++;
    }

    if(path_error)
    {
        console.log("¡Error en la solución!");
    }
    else if((coord_siguiente[0]!=maze.end[0]) || (coord_siguiente[1]!=maze.end[1]))
    {
        console.log("No se llegó a la meta.");
        ctx_maze.drawImage(image_question,32*coord_actual[1],32*coord_actual[0]);
    }

    console.log("Distancia recorrida:");
    console.log(distancia_recorrida);
    if(color=='green')
    {
       document.getElementById('dist_rec_prev').innerHTML = distancia_recorrida.toFixed(2);
    }
    else
    {
       document.getElementById('dist_rec').innerHTML = distancia_recorrida.toFixed(2);
    }
    ctx_maze.strokeStyle=color;
    ctx_maze.stroke();
}

function draw_result(solucion,color){
    var selected_maze=document.getElementById("maze_list").value;
    var maze=maze_list[selected_maze];
    //var maze=maze_list[0];
    draw_path(maze,solucion,color);
}

//Verifica que las coordenadas sean válidas, es decir positivas y menores al
//tamaño del laberinto.
function dentro_laberinto(coordenadas,maze)
{
    if(coordenadas[0]<0 || coordenadas[1]<0)
    {
        return false;
    }
    else if(coordenadas[0]>=maze.height || coordenadas[1]>=maze.width)
    {
        return false;
    }
    else
    {
        return true;
    }
}
