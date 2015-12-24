<?php
   session_start();
?>
<!Doctype html>
<html lang="es-MX">
   <head>
      <title>Mosaicos: Inicio</title> 
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
         <div id="content" >
            <div class="sidebar">
               <h1 >Opciones</h1>
               <a href="../">Página de inicio</a>
               <h2>Descargas:</h2>
               <a href="BYN/Board.png" download>Descargar Tablero</a>
               <br>
               <a href="BYN/Piezas.png" download>Descargar Piezas</a>
               <div id="forma_subir" class="forma">
                  <form action="subir.php" method="post" enctype="multipart/form-data">
                     <h2>Código a subir:</h2>
                     <input type="file" name="fileToUpload" id="fileToUpload" required>
                     <br>
                     <input type="submit" value="Subir Código" name="Subir_codigo">
                  </form>
               </div>
            </div>
            <div id="instrucciones" class="main_content">
               <h1>Colocación de mosaicos en un tablero</h1>
               <p>El objetivo es colora mosaicos sobre un tablero, de tal forma que los números de dos mosaicos adyacentes coincidan. En el panel de la izquierda pueden descargar como imágenes el tablero y los mosaicos.</p>
               <h1>Requisitos del código</h1>
               <p>La solución encontrada por su código debe almacenarse en la variable <strong>*solution*</strong>. Esta variable debe ser una lista que a su vez contiene 18 listas de dos elementos cada una. Cada una de estas sublistas representa una de las casillas del tablero. Estas están numeradas de la siguiente forma:</p>
               <img src="Tablero_numerado.bmp">
               <p>El primer elemento de cada sublista es una cadena de texto conteniendo la letra del mosaico. El segundo elemento es la rotación del mosaico en grados. Un ejemplo de solución sería el siguiente:</p>
               <pre style="text-align:center">(("A" 0) ("Z" 180) ... ("Y" 300) ("E" 180))</pre>
               <p>Las rotaciones son en el sentido de las manecillas del reloj. No se pueden usar números negativos paralas rotaciones.</p>
               <table  id="Tabla_Casillas">
                  <tr>
                     <td>
                        <img src="A.png">
                     </td>
                     <td>
                        <img src="A_30.png">
                     </td>
                     <td>
                        <img src="A_180.png">
                     </td>
                     <td>
                        <img src="A_300.png">
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <strong style="text-align:center;display:block">0°</strong>
                     </td>
                     <td>
                        <strong style="text-align:center;display:block">30°</strong>
                     </td>
                     <td>
                        <strong style="text-align:center;display:block">180°</strong>
                     </td>
                     <td>
                        <strong style="text-align:center;display:block">300°</strong>
                     </td>
                  </tr>
               </table>
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
