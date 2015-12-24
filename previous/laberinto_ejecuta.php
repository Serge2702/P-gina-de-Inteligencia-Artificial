<?php session_start();?>
<!Doctype html>
<html>
    <body>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST")
{
    $archivo = $_SESSION["nombre_exec"];
    $algoritmo = $_POST["algorithms"];
    $numero = $_POST["maze_list"];
    $decoracion = $_POST["tiles_list"];
}

$orden="sbcl --script /home/archie/public_html/" . $archivo . " '(select-maze " . $numero .")' '(". $algoritmo .")' '(print-solution)'";
$_SESSION["numero_laberinto"]=$numero;
$_SESSION["numero_decoracion"]=$decoracion;
echo $archivo;
echo "<br>";
echo $algoritmo;
echo "<br>";
echo $numero;
echo "<br>";
echo $orden;
echo "<br>";
$_SESSION["solucion"] = system($orden);
echo "<br>";
echo $_SESSION["solucion"];
echo "<br>";
header("location: laberinto_interfaz.php");
?>
    </body>
</html>
