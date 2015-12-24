<?php 
   session_start();
   $locale='en_US.UTF-8';
   setlocale(LC_ALL,$locale);
   putenv('LC_ALL='.$locale);
?>
<!Doctype html>
<html>
   <head>
      <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
      <title>Mosaicos: Ejecución</title>
      <link rel="stylesheet" type="text/css" href="estilo.css"> 
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
               <div class="sidebar-element">
                  <div id="info_archivo">
                     <h1>Opciones:</h1>
                     <a href="../">Página de inicio</a>
                     <h2>Archivo actual:</h2>
                     <?php
                        echo $_SESSION['nombre_archivo'];
                     ?>
                     <br>
                     <a href="reinicio.php">(Subir otro archivo.)</a>
                  </div>
               </div>
            </div>
            <div class="main_content">
               <?php
                  $target_file = $target_dir = $uploadOk = "";
                  $nombre_archivo = "Ninguno.";
                  $lista = "";
                  if ($_SERVER["REQUEST_METHOD"] == "POST") {
                     $target_dir = "uploads/";
                     $target_file = $target_dir . basename($_FILES["fileToUpload"]["tmp_name"]);
                     $uploadOk = 1;
                     if ($_FILES["fileToUpload"]["size"] > 500000) {
                        echo "<script>alert('El archivo es muy grande.')</script>";
                        $uploadOk = 0;
                     }
                     //$finfo = finfo_open(FILEINFO_MIME_TYPE);
                     //if (finfo_file($finfo, $_FILES["fileToUpload"]["tmp_name"])!="application/x-lisp")
                     //{
                        //echo "<script>alert('Eso no es un archivo .lisp')</script>";
                        //$uploadOk = 0;
                        //}
                        //finfo_close($finfo);
                        // Check if $uploadOk is set to 0 by an error
                        if ($uploadOk == 0) {
                           session_destroy();
                           // if everything is ok, try to upload file
                        } 
                        else {
                           if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
                              $_SESSION["nombre_archivo"] = basename( $_FILES["fileToUpload"]["name"]);
                              $_SESSION["nombre_exec"] = $target_file;
                              echo "<h1>Ocurrió un error al ejecutar el código</h1>";
                              echo "<br>";
                              $_SESSION["exec_time"]="";
                              $_SESSION["solucion"] = "";
                              $_SESSION["numero_tablero"] = 0;
                              $_SESSION["numero_decoracion"] = 0;
                              if($salida==0)
                              {
                                 echo "<script type='text/javascript'>";
                                    echo   "window.location.href = 'interfaz.php'";
                                    echo "</script>";
                              }
                              else
                              {
                                 }
                              }  
                           }
                        }
                     ?> 
                     <button onclick="goBack()">Regresar</button>
                     <script>
                        function goBack() {
                              window.history.back();
                        }
                     </script>
                  </div>
               </div>
               <div id="footer">
                  <p>
                  Instituto Politécnico Nacional. Centro de Investigación en Computación. Sergio Gabriel Morales Valencia.
                  </p>
               </div>
            </div>
         </body>
      </html>
