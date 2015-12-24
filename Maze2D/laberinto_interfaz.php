<?php session_start(); ?>
<!Doctype html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Laberintos: Ejecución</title>
      <link rel="stylesheet" type="text/css" href="estilo.css"> 
      <!--Este es el lugar para agregar los archivos de los nuevos laberintos.-->
      <script type="text/javascript" src="maze_dir/chico.js"> </script>
      <script type="text/javascript" src="maze_dir/normal.js"> </script>
      <script type="text/javascript" src="maze_dir/forma.js"> </script>
      <script type="text/javascript" src="maze_dir/tall.js"> </script>
      <script type="text/javascript" src="maze_dir/unidos.js"> </script>
      <script type="text/javascript" src="maze_dir/irregular.js"> </script>
      <script type="text/javascript" src="maze_dir/enorme.js"> </script>
      <script type="text/javascript" src="maze_dir/Largo1.js"> </script>
      <script type="text/javascript" src="maze_dir/Largo2.js"> </script>
      <script type="text/javascript" src="maze_dir/Largo3.js"> </script>
      <script type="text/javascript" src="maze_dir/Largo4.js"> </script>
      <script type="text/javascript" src="maze_dir/Pumpkin.js"> </script>
      <script type="text/javascript" src="maze_dir/Diamond.js"> </script>
      <script type="text/javascript" src="maze_dir/Extra.js"> </script>
      <!--Este es el arreglo que contiene los laberintos.-->
      <!--El orden de este arrreglo debe ser exactamente igual a la lista del
      archivo en lisp.-->
      <script type="text/javascript">
         var maze_list=[chico,normal,forma,tall,unidos,irregular,enorme,Largo1,Largo2,Largo3,Largo4,Pumpkin,Diamond,Extra];
      </script>
      <script type="text/javascript" src="canvas.js"> </script>
      <link href='http://fonts.googleapis.com/css?family=Inconsolata|Noto+Sans' rel='stylesheet' type='text/css'>
   </head>
   <body>
      <div class="container">
         <div id="header"> 
            <table id="table_header">
               <tr>
                  <td style="width:100px;vertical-align:top">
                     <img id="logo_ipn" src="Images/logo_IPN.png" height="125px">
                  </td>
                  <td  style="text-align:center;vertical-align:top">
                     <h1>Laberintos 2D</h1> 
                  </td>
                  <td style="text-align:right;width:365px;vertical-align:top;padding:15px"><div style="color:white;font-weight:700;font-size:16px">Centro de Investigación en Computación<br>Laboratorio de Inteligencia Artificial</div></td>
                  <td style="text-align:right;width:100px;vertical-align:top" >
                     <img id="logo_cic" src="Images/logo_CIC.png" height="100px">
                  </td>
               </tr>
            </table>
         </div>
         <div id="content">
            <div class="sidebar">
               <div id="forma-ejecuta" class="forma">
                  <h1>Opciones:</h1>
                  <a href="../">Página de inicio</a>
                  <h2>
                     Archivo actual:
                  </h2>
                  <?php
                     echo $_SESSION['nombre_archivo'];
                  ?>
                  <br>
                  <a href="laberinto_reinicio.php">(Subir otro archivo.)</a>
                  <h2>Opciones de ejecución</h2>
                  <form method="post" action="laberinto_ejecuta.php" >
                     <table id="tabla-ejecuta" style="width:100%" >
                        <tr>
                           <td class="tabla_izq"> 
                              Algoritmo: 
                           </td>
                           <td>
                              <?php
                                 echo $_SESSION["lista_algoritmos"];
                              ?> 
                           </td>
                        </tr>
                        <tr>
                           <td class="tabla_izq">
                              Laberinto: 
                           </td>
                           <td>
                              <select name='maze_list' id='maze_list' onchange='inicializa()'></select>
                              <script>
                                 var select_maze_list = document.getElementById("maze_list");
                                 for (var i = 0; i < maze_list.length; i++) {
                                       var option = document.createElement("option");
                                       option.value = i;
                                       option.text = maze_list[i].name;
                                       select_maze_list.appendChild(option);
                                 }
                                 <?php
                                    echo "select_maze_list.selectedIndex=";
                                    echo $_SESSION["numero_laberinto"];
                                    echo ";\n";
                                 ?>
                              </script>
                           </td>
                        </tr>
                        <tr>
                           <td class="tabla_izq">
                              Apariencia:
                           </td>
                           <td>
                              <?php
                                 echo "<select name='tiles_list' id='tiles_list' onchange='inicializa()'>";
                                    $lista_decoraciones = array('Space'=>0,'Grass'=>1,'Water'=>2);
                                    foreach($lista_decoraciones as $k=>$v)
                                    {
                                       $selected = ($v == $_SESSION["numero_decoracion"]) ? " selected='selected'" : "";
                                       echo "<option value='$v' $selected>$k </option>";
                                    }
                                    echo "</select>";
                              ?> 
                           </td>
                        </tr>
                        <tr>
                           <td></td>
                           <td><input type="submit" value="Resolver"></td>
                        </tr>
                        <tr>
                           <td></td>
                           <td><input type="submit" value="Debug" formaction="laberinto_debug.php">Les permite ver la salida de su programa. Verán todo lo que imprima.</td>
                        </tr>
                     </table>
                  </form>
               </div>
               <h2>Estadísticas</h2>
               <h3 style="color:red">Algoritmo actual:</h3>
               <ul>
                  <li>Algoritmo: <span id="nombre_algoritmo"></span></li>
                  <li>Longitud de la solución: <span id="long_sol"></span> pasos.</li>
                  <li>Distancia recorrida: <span id="dist_rec"></span> unidades.</li>
                  <li>Tiempo ejecución: <span id="exec_time"></span> ms.</li> 
               </ul>
               <h3 style="color:green">Algoritmo previo:</h3>
               <ul>
                  <li>Algoritmo: <span id="nombre_algoritmo_prev"></span></li>
                  <li>Longitud de la solución: <span id="long_sol_prev"></span> pasos.</li>
                  <li>Distancia recorrida: <span id="dist_rec_prev"></span> unidades.</li>
                  <li>Tiempo ejecución: <span id="exec_time_prev"></span> ms.</li> 
               </ul>
            </div>
            <div id="canvas-container" style="padding: 20px;">
               <canvas 
               id="c_maze" 
               width="120" 
               height="120" 
               style="position: relative; left: 0px; top: 0px; z-index: 0;">
               </canvas> 
            </div>
         </div>
         <div id="footer">
            <p>
            Instituto Politécnico Nacional. Centro de Investigación en Computación. Sergio Gabriel Morales Valencia.
            </p>
         </div>
      </div>
      <script type="text/javascript">
         inicializa();
      </script>
      <?php
         if ($_SESSION["solucion"] != "" )
         {
            echo "<script>\n";
               echo "var solucion;\n";
               echo "var numero_laberinto;\n";
               echo "var exec_time;\n";
               echo "var nombre_algoritmo;\n";
               echo $_SESSION["solucion"];
               echo "\n";
               echo "document.getElementById('long_sol').innerHTML = solucion.length;\n";
               echo "document.getElementById('exec_time').innerHTML = exec_time;\n";
               echo "document.getElementById('nombre_algoritmo').innerHTML = nombre_algoritmo;\n";
               echo "var solucion_actual=solucion;\n";
               echo "var num_laberinto_actual = numero_laberinto;\n";
               if ($_SESSION["solucion_prev"] != "" )
               {
                  //echo "var solucion=";
                  echo $_SESSION["solucion_prev"];
                  echo "\n";
                  echo "if(num_laberinto_actual==numero_laberinto){\n";
                  echo "draw_result(solucion,'green');\n";
                  echo "document.getElementById('long_sol_prev').innerHTML = solucion.length;\n";
                  echo "document.getElementById('exec_time_prev').innerHTML = exec_time;\n";
                  echo "document.getElementById('nombre_algoritmo_prev').innerHTML = nombre_algoritmo;}\n";
               }
               echo "draw_result(solucion_actual,'red');\n";
               echo "</script>\n";
            $_SESSION["solucion_prev"]=$_SESSION["solucion"];
         }
      ?> 
   </body>
</html>
