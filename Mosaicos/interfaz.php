<?php session_start(); ?>
<!Doctype html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Mosaicos: Ejecución</title>
      <link rel="stylesheet" type="text/css" href="estilo.css"> 
      <script type="text/javascript" src="maze_scripts.js"> </script>
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
                     <h1>Mosaicos</h1> 
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
                  <a href="reinicio.php">(Subir otro archivo.)</a>
                  <h2>Opciones de ejecución</h2>
                  <form method="post" action="ejecuta.php" >
                     <table id="tabla-ejecuta" style="width:100%" >
                        <tr>
                           <td class="tabla_izq">
                              Mosaicos: 
                           </td>
                           <td>
                              <?php
                                 $lista_mosaicos = array('Original'=>0);
                                 echo "<select name='board_list' id='board_list' onchange='inicializa()'>";
                                    foreach($lista_mosaicos as $k=>$v)
                                    {
                                       $selected = ($v == $_SESSION["numero_tablero"]) ? " selected='selected'" : "";
                                       echo "<option value='$v' $selected>$k </option>";
                                    }
                                    echo "</select>";
                              ?> 
                           </td>
                        </tr>
                        <tr>
                           <td class="tabla_izq">
                              Apariencia:
                           </td>
                           <td>
                              <?php
                                 echo "<select name='styles_list' id='styles_list' onchange='inicializa()'>";
                                    $lista_decoraciones = array('Blanco y negro'=>0);
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
                     </table>
                  </form>
               </div>
               <h2>Estadísticas</h2>
               <h3 style="color:red">Algoritmo actual:</h3>
               <ul>
                  <li>Tiempo ejecución: <span id="exec_time"></span> ms.</li> 
               </ul>
            </div>
            <div id="canvas-container" style="padding: 20px;">
               <canvas 
               id="c_piezas" 
               width="900" 
               height="300" 
               style="position: relative; left: 0px; top: 0px; z-index: 0;">
               </canvas>
               <br>
               <canvas 
               id="c_tablero" 
               width="845" 
               height="646" 
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
         draw_tiles(tiles[0]);
      </script>
      <?php
         if ($_SESSION["solucion"] != "" )
         {
            echo "<script type='text/javascript'>";
               echo $_SESSION["solucion"];
               echo " draw_solution(solucion,estados);";
               echo "</script>";
         }
      ?> 
   </body>
</html>
