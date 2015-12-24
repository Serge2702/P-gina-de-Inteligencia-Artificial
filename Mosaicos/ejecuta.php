<?php 
   session_start();
   $locale='en_US.UTF-8';
   setlocale(LC_ALL,$locale);
   putenv('LC_ALL='.$locale);
?>
<!Doctype html>
<html>
   <head>
      <title>Error de ejecución</title>
      <link rel="stylesheet" type="text/css" href="estilo.css"> 
      <meta charset="UTF-8">
      <link href='http://fonts.googleapis.com/css?family=Inconsolata|Noto+Sans' rel='stylesheet' type='text/css'>
   </head>
   <body>
      <div id="container">
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
               <div id="info_archivo" class="sidebar-element">
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
               </div>
            </div>
            <div id="mensaje_error" class="main_content">
               <?php
                  if ($_SERVER["REQUEST_METHOD"] == "POST")
                  {
                     $archivo = $_SESSION["nombre_exec"];
                  }
                  $orden = "python3 limpia.py " . $archivo;
                  echo "<h1>";
                     echo $orden;
                     echo "</h1>";
                  echo "<h1>Ocurrió un error al ejecutar el programa</h1>";
                  echo "<pre>";
                     $_SESSION["solucion"] = system($orden,$salida);
                     echo "</pre>";
                  if ($salida == 0)
                  {
                     //header("location: laberinto_interfaz.php");
                     echo "<script type='text/javascript'>";
                        echo   "window.location.href = 'interfaz.php'";
                        echo "</script>";
                  }
                  elseif($salida == 2)
                  {
                     echo "<pre>Tu código no entregó una solución antes del tiempo establecido. Su ejecución fue terminada.</pre>";
                  } 
               ?>
               <br>
               <button onclick="goBack()">Regresar</button>
            </div>
         </div>
         <div id="footer">
            <p>
            Instituto Politécnico Nacional. Centro de Investigación en Computación. Sergio Gabriel Morales Valencia.
            </p>
         </div>
      </div>
      <script>
         function goBack() {
               window.history.back();
         }
      </script>
   </body>
</html>
