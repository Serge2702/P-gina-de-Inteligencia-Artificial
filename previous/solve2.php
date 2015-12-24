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
$cosa = file_get_contents("canvas.js");
echo "<script>$cosa; draw_result($salida);</script>";
?>
