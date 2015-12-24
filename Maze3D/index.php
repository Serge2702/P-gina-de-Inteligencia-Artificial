<?php
   session_start();
?>
<!Doctype html>
<html lang="es-MX">
   <head>
      <title>Laberintos 3D: Inicio</title> 
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
                     <h1>Laberintos 3D</h1> 
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
               <h1 >Opciones</h1>
               <a href="../">Página de inicio</a>
               <h2>Descargas:</h2>
               <a href="maze_lib_demo.lisp" download="maze_lib.lisp">Descargar biblioteca maze-lib.lisp</a>
               <a href="Código_de_ejemplo_3D.lisp" download>Descargar código de ejemplo</a>
               <div id="forma_subir" class="forma">
                  <form action="laberinto_subir.php" method="post" enctype="multipart/form-data">
                     <h2>Código a subir:</h2>
                     <input type="file" name="fileToUpload" id="fileToUpload" required>
                     <br>
                     <input type="submit" value="Subir Código" name="Subir_codigo">
                  </form>
               </div>
            </div>
            <div id="instrucciones" class="main_content">
               <h1>Resolución de laberintos en Common Lisp</h1>
               <p>Esta página es para que ustedes suban y ejecuten sus algoritmos de resolución de laberintos 3D. El modo de empleo de esta página es muy similar a la de los Laberintos 2D, así que se recomienda leer primero la introducción de dicha página.</p>
               <p>En la barra lateral de la izquierda podrán encontrar el código de ejemplo que explica las funciones que tienen disponibles, además de poder descargar una versión de la biblioteca maze-lib.lsp que podrán usar en caso de que deseen realizar pruebas en su computadora sin necesidad de usar esta página.</p>
               <h2>Instrucciones de uso</h2>
               <p> El modo de empleo de esta página es el siguiente: </p>
               <ol>
                  <li>Suban su archivo usando el menú ubicado a la izquierda de esta página. Si el código es válido serán enviados a la página para la ejecución de sus algoritmos.</li>
                  <li>En el menú de la izquierda se mostrará el nombre del archivo que subieron. Además podrán seleccionar el algoritmo que desean ejecutar, el laberinto que desean resolver, y opcionalmente el tema con el que se dibujará el laberinto.</li>
                  <img  src="Images/1_opciones.png">
                  <li>Una vez que hayan seleccionado las opciones deseadas podrán ejecutar su código al presionar el botón de "Resolver".</li>
                  <li>Si la ejecución de su algoritmo fue exitosa en el laberinto se dibujará en color rojo la ruta de la solución encontrada. Además se desplegarán algunas estadísticas acerca del resultado obtenido. Si ejecutan otro algoritmo la solución previa cambiará a color verde, mientras que la nueva solución encontrada se dibujará en rojo. De igual forma las estadísticas de la solución previa y de la solución actual se mostrarán en el panel izquierdo para que puedan ser comparadas fácilmente.</li>
                  <img src="Images/2_stats.png">
                  <li>Finalmente, si desean subir otro archivo lo podrán hacer usando el panel izquierdo</li>
               </ol>
               <h2>Codificación de los laberintos</h2>
               <p>Los laberintos están codificados en un arreglo de dos dimensiones en Common Lisp. Un ejemplo de ello se encuentra dentro de la biblioteca maze-lib. Cada casilla del laberinto está representado por un número del 0 al 15, el cuál indica cuales paredes están presentes.</p>
               <p>Las paredes están representadas como un número binario de 4 bits, en donde el bit menos significativo es el de la pared superior y el más significativo es el de la pared izquierda. Si la pared está presente dicho bit es un 1, en caso contrario es un 0. De esta forma, si la casilla no tiene paredes su número es 0 (0000), si todas las paredes están presentes su número es 15 (1111). Esta representación les permite verificar si una pared en particular está presente revisando si el valor de su bit correspondiente es 1 o 0.</p>
               <img src="Images/Celda.png">
               <p>Las 16 casillas posibles son las siguientes: </p>
               <table id="Tabla_Casillas">
                  <tr>
                     <td>
                        <img src="Road/0.png">
                        0
                     </td>
                     <td>
                        <img src="Road/1.png">
                        1
                     </td>
                     <td>
                        <img src="Road/2.png">
                        2
                     </td>
                     <td>
                        <img src="Road/3.png">
                        3
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <img src="Road/4.png">
                        4
                     </td>
                     <td>
                        <img src="Road/5.png">
                        5
                     </td>
                     <td>
                        <img src="Road/6.png">
                        6
                     </td>
                     <td>
                        <img src="Road/7.png">
                        7
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <img src="Road/8.png">
                        8
                     </td>
                     <td>
                        <img src="Road/9.png">
                        9
                     </td>
                     <td>
                        <img src="Road/10.png">
                        10
                     </td>
                     <td>
                        <img src="Road/11.png">
                        11
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <img src="Road/12.png">
                        12
                     </td>
                     <td>
                        <img src="Road/13.png">
                        13
                     </td>
                     <td>
                        <img src="Road/14.png">
                        14
                     </td>
                     <td>
                        <img src="Road/15.png">
                        15
                     </td>
                  </tr>
               </table>
               <p> Además, en los laberintos 3D se cuenta con dos celdas nuevas para los pasos en desnivel. Estas corresponden a los números 16 y 17. </p>
               <table id="Tabla_Casillas">
                  <tr>
                     <td>
                        <img src="Road/16.png">
                        16
                     </td>
                     <td>
                        <img src="Road/17.png">
                        17
                     </td>
                  </tr>
               </table>
               <p>La funcionalidad de ambas es exactamente la misma, la única diferencia es en la apariencia. Es responsabilidad del usuario que su programa tome en cuenta la situación especial de estas celdas.</p>
               <h2>Requisitos del código</h2>
               <p>Dentro del código de ejemplo se explican las funciones que están disponibles para obtener la información del laberinto, además de los requisitos que debe tener su código para que este pueda ser ejecutado correctamente por el servidor.</p>
               <h2>Validación de la solución obtenida</h2>
               <p>La solución que haya sido obtenida por su algoritmo será validada por la página. En caso de que la solución no sea correcta se les indicará de la siguiente forma:</p>
               <ul>
                  <li>Si la solución realiza un movimiento inválido, ya sea atravesar una pared o salirse de los límites del laberinto, aparecerá el ícono <img src="Images/error.png" style="display:inline"> en el lugar del error</li>
                  <li>Si la solución termina antes de llegar a la casilla de la meta, entonces aparecerá un ícono <img src="Images/question.png" style="display:inline"> en donde se detuvo la solución.</li>
               </ul>
               <h2>Solución de errores frecuentes</h2>
               <p>Si ocurre algún error al momento de ejecutar su código la página desplegará los mensajes de error emitidos por el intérprete SBCL. Sin embargo, hay ciertos errores que es muy probable que encuentren las primeras veces que estén usando esta página. A continuación se les explicará como solucionarlos:</p>
               <h3>No aparece el cuadro para seleccionar un algoritmo</h3>
               <p>Esto puede deberse a los siguientes motivos:</p>
               <ul>
                  <li>Olvidaron incluir la biblioteca <pre style="display:inline">maze_lib.lisp</pre> al principio de su código.</li>
                  <li>Olvidaron colocar como última línea de su código el llamado a la función <pre style="display:inline">(start-maze)</pre></li>
                  <li>No agregaron ninguno de sus algoritmos a la lista de funciones disponibles usando la función <pre style="display:inline">add-algorithm</pre></li>
               </ul>
               <h3>"End of file on #"</h3>
               <p>Significa que olvidaron cerrar un paréntesis. El mensaje de error les indicará el renglón en el cuál se abre el paréntesis que no se cerró.</p>
               <h3>"Error opening #P: No such file or directory"</h3>
               <p>El servidor elimina cada cierto tiempo los archivos subidos para evitar que se acumulen y llenen el espacio disponible. Si aparece este mensaje significa que deben volver a subir su código.</p>
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
