<?php
   session_start();
?>
<!Doctype html>
<html lang="es-MX">
   <head>
      <title>Laberintos: Inicio</title> 
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
                     <h1>Laberintos 2D</h1> 
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
               <a href="maze_lib_demo.lisp" download="maze_lib.lisp">Descargar biblioteca maze-lib.lisp</a>
               <a href="Código_de_ejemplo.lisp" download>Descargar código de ejemplo</a>
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
               <p>Esta página es para que ustedes suban y ejecuten sus algoritmos de resolución de laberintos. A continuación se les explicará como se usa esta interfaz, las funciones con las que cuentan para poder obtener información del laberinto, los requisitos que debe cumplir su código, y finalmente información acerca de los mensajes de error que verán en caso de que su código no funcione correctamente.</p>
               <p>En la barra lateral de la izquierda se encuentran los enlaces para descargar un código de ejemplo y la biblioteca maze-lib. El código de ejemplo contiene comentarios explicando como se usan las funciones que deben usar para resolver los laberintos. Además, ese mismo código pueden subirlo para probar la funcionalidad de esta página. Por otra parte, bajar el archivo de la biblioteca maze-lib les permitirá realizar pruebas de su tarea sin necesidad de conectarse a esta página.</p>
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
               <p>De esta forma las 16 casillas posibles son las siguientes: </p>
               <table id="Tabla_Casillas">
                  <tr>
                     <td>
                        <img src="Poke1/0.png">
                        0
                     </td>
                     <td>
                        <img src="Poke1/1.png">
                        1
                     </td>
                     <td>
                        <img src="Poke1/2.png">
                        2
                     </td>
                     <td>
                        <img src="Poke1/3.png">
                        3
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <img src="Poke1/4.png">
                        4
                     </td>
                     <td>
                        <img src="Poke1/5.png">
                        5
                     </td>
                     <td>
                        <img src="Poke1/6.png">
                        6
                     </td>
                     <td>
                        <img src="Poke1/7.png">
                        7
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <img src="Poke1/8.png">
                        8
                     </td>
                     <td>
                        <img src="Poke1/9.png">
                        9
                     </td>
                     <td>
                        <img src="Poke1/10.png">
                        10
                     </td>
                     <td>
                        <img src="Poke1/11.png">
                        11
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <img src="Poke1/12.png">
                        12
                     </td>
                     <td>
                        <img src="Poke1/13.png">
                        13
                     </td>
                     <td>
                        <img src="Poke1/14.png">
                        14
                     </td>
                     <td>
                        <img src="Poke1/15.png">
                        15
                     </td>
                  </tr>
               </table>
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
               <h3>Después de subir el archivo, no se dibuja el laberinto.</h3>
               <p>Generalmente la primera vez que se carga la página después de haber iniciado el navegador el laberinto no se despliega correctamente. En ocasiones la parte derecha de la página se muestra completamente en blanco o sólo se dibujan algunas casillas. Para solucionar esto basta con seleccionar otro laberinto del panel de la izquierda.</p>
               <h3>No aparece el cuadro para seleccionar un algoritmo</h3>
               <p>Esto puede deberse a los siguientes motivos:</p>
               <ul>
                  <li>Olvidaron incluir la biblioteca <pre style="display:inline">maze_lib.lisp</pre> al principio de su códgo.</li>
                  <li>Olvidaron colocar como última línea de su código el llamado a la función <pre style="display:inline">(start-maze)</pre></li>
                  <li>No agregaron ninguno de sus algoritmos a la lista de funciones disponibles usando la función <pre style="display:inline">add-algorithm</pre></li>
               </ul>
               <h3>"End of file on #"</h3>
               <p>Significa que olvidaron cerrar un paréntesis. El mensaje de error les inidicará el renglón en el cuál se abre el paréntesis que no se cerró.</p>
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
