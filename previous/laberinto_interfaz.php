<?php session_start(); ?>
<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
<title>Laberintos: Ejecución</title>
        <script type="text/javascript" src="canvas.js"> </script>
    </head>
    <body>
        <h1>Laberintos</h1>
<a href="laberinto_reinicio.php">Subir otro archivo.</a>
<br>
<?php
echo "Archivo actual: ";
echo $_SESSION['nombre_archivo'];
echo "  ";
echo "(" . $_SESSION['nombre_exec'] . ")";
echo "<br>";
?>

<form method="post" action="laberinto_ejecuta.php">
    <fieldset>
        <?php
        echo "Algoritmos: ";
        echo $_SESSION["lista_algoritmos"];
        echo "Laberintos Disponibles:";
        $lista_laberintos = array('Normal'=>0,'Unidos'=>1,'Forma'=>2,'Chico'=>3);
        echo "<select name='maze_list' id='maze_list' onchange='inicializa()'>";
        foreach($lista_laberintos as $k=>$v)
        {
            $selected = ($v == $_SESSION["numero_laberinto"]) ? " selected='selected'" : "";
            echo "<option value='$v' $selected>$k </option>";
        }
        echo "</select>";
        echo "Apariencia:";
        echo "<select name='tiles_list' id='tiles_list' onchange='inicializa()'>";
        $lista_decoraciones = array('Good'=>0,'Water'=>1,'Lava'=>2,'Stone'=>3);
        foreach($lista_decoraciones as $k=>$v)
        {
            $selected = ($v == $_SESSION["numero_decoracion"]) ? " selected='selected'" : "";
            echo "<option value='$v' $selected>$k </option>";
        }
        echo "/select>";
        ?>
        <input type="submit" value="Resolver">
    </fieldset>
</form>
<br>
<br>
        <canvas 
            id="c_maze" 
            width="120" 
            height="120" 
            style="border:1px solid #000000; position: absolute; left: 50; top: 50; z-index: 0;">
        </canvas> 
        <canvas 
            id="c_top" 
            width="120" 
            height="120" 
            style="border:1px solid #000000; position: absolute; left: 50; top: 50; z-index: 1;">
        </canvas>
<script type="text/javascript">
inicializa();
</script>
<?php
        if ($_SESSION["solucion"] != "" )
        {
            echo "<script>";
            echo "draw_result(";
            echo $_SESSION["solucion"];
            //echo "[0,1,2,3,4,5,6,7]";
            echo ");";
            echo "</script>";
        }
?>
    </body>
</html>
