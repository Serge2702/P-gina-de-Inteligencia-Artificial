<?php
Header("content-type: application/x-javascript");
$archivo = $numero = $algoritmo = $salida = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
   $archivo  = $_POST["archivo"];
   $numero = $_POST["numero"];
   $algoritmo = $_POST["algoritmo"];

   $orden="sbcl --script /home/archie/public_html/" . $archivo . " '(select-maze " . $numero .")' '(". $algoritmo .")' '(print-solution)'";
$salida = system($orden);
}
//echo "draw_result($salida);";
$cosa = " function draw_path(maze,path){
    var c_maze=document.getElementById('c_maze'); 
    var c_top=document.getElementById('c_top'); 
    var ctx_top=c_maze.getContext('2d');
    var inicio=[maze.start[1]*32+16,maze.start[0]*32+16];
    var actual=inicio;
    var siguiente=[0,0];
    ctx_top.beginPath();
    var i;
    for(i=0;i<path.length;i++){
        ctx_top.moveTo(actual[0],actual[1]);
        switch(path[i]){
            case 0:
                siguiente=[actual[0],actual[1]-32];
                ctx_top.lineTo(siguiente[0],siguiente[1]);
                actual=siguiente;
                break;
            case 1:
                siguiente=[actual[0]+32,actual[1]-32];
                ctx_top.lineTo(siguiente[0],siguiente[1]);
                actual=siguiente;
                break;
            case 2:
                siguiente=[actual[0]+32,actual[1]];
                ctx_top.lineTo(siguiente[0],siguiente[1]);
                actual=siguiente;
                break;
            case 3:
                siguiente=[actual[0]+32,actual[1]+32];
                ctx_top.lineTo(siguiente[0],siguiente[1]);
                actual=siguiente;
                break;
            case 4:
                siguiente=[actual[0],actual[1]+32];
                ctx_top.lineTo(siguiente[0],siguiente[1]);
                actual=siguiente;
                break;
            case 5:
                siguiente=[actual[0]-32,actual[1]+32];
                ctx_top.lineTo(siguiente[0],siguiente[1]);
                actual=siguiente;
                break;
            case 6:
                siguiente=[actual[0]-32,actual[1]];
                ctx_top.lineTo(siguiente[0],siguiente[1]);
                actual=siguiente;
                break;
            case 7:
                siguiente=[actual[0]-32,actual[1]-32];
                ctx_top.lineTo(siguiente[0],siguiente[1]);
                actual=siguiente;
                break;

        }
    }
    ctx_top.strokeStyle='red';
    ctx_top.stroke();
}

function draw_result(solucion){
    var selected_maze=document.getElementById('maze_list').value;
    var maze=maze_list[selected_maze];
    //var maze=maze_list[0];
    draw_path(maze,solucion);
}";
echo "$cosa draw_result($salida);";
?>
