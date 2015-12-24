<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
<title>Laberintos</title>
        <script type="text/javascript" src="canvas.js"> </script>
<script>
function ejecutar(archivo)
{
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            document.getElementById("salida").innerHTML=xmlhttp.responseText;
        }
    }
    xmlhttp.open("POST","solve.php",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    //var numero = document.getElementById("maze_list").value;
    //var algo = document.getElementById("algorithm").value;
    xmlhttp.send("archivo="+archivo+"&numero=0&algoritmo=depth-first");
}
</script>
    </head>
    <body>
        <h1>Laberintos</h1>
Conjunto de Tiles seleccionado:
<br>
        <img id="0" src="Poke1/0.png" alt="0">
        <img id="1" src="Poke1/1.png" alt="1">
        <img id="2" src="Poke1/2.png" alt="2">
        <img id="3" src="Poke1/3.png" alt="3">
        <img id="4" src="Poke1/4.png" alt="4">
        <img id="5" src="Poke1/5.png" alt="5">
        <img id="6" src="Poke1/6.png" alt="6">
        <img id="7" src="Poke1/7.png" alt="7">
        <img id="8" src="Poke1/8.png" alt="8">
        <img id="9" src="Poke1/9.png" alt="9">
        <img id="10" src="Poke1/10.png" alt="10">
        <img id="11" src="Poke1/11.png" alt="11">
        <img id="12" src="Poke1/12.png" alt="12">
        <img id="13" src="Poke1/13.png" alt="13">
        <img id="14" src="Poke1/14.png" alt="14">
        <img id="15" src="Poke1/15.png" alt="15">
        <img id="guy" src="Poke1/guy.png" alt="point">
        <img id="end" src="Poke1/end.png" alt="point">
        <img id="start" src="Poke1/start.png" alt="point">
        <br>
<br><br>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post" enctype="multipart/form-data">
   Selecciona el código a subir:
    <input type="file" name="fileToUpload" id="fileToUpload" required>
    <input type="submit" value="Subir Código" name="Subir_codigo">
</form>
<?php
$target_file = $target_file = $uploadOk = "";
$nombre_archivo = "Ninguno.";
$lista = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["tmp_name"]);
    $uploadOk = 1;
    echo "<br>";
    if ($_FILES["fileToUpload"]["size"] > 500000) {
        echo "<script>alert('El archivo es muy grande.')</script>";
        $uploadOk = 0;
    }
    $finfo = finfo_open(FILEINFO_MIME_TYPE);
    if (finfo_file($finfo, $_FILES["fileToUpload"]["tmp_name"])!="text/x-lisp")
    {
        echo "<script>alert('Eso no es un archivo .lisp')</script>";
        $uploadOk = 0;
    }
    finfo_close($finfo);
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "<script>alert('Ocurrió un error al subir el archivo.')</script>";
        // if everything is ok, try to upload file
    } 
    else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            $nombre_archivo = basename( $_FILES["fileToUpload"]["name"]);
            $orden = "sbcl --script /home/archie/public_html/" . $target_file . " '(print-function-list)'";
            echo "Código Actual: $nombre_archivo";
            echo "<br>";
            echo "Algoritmos: ";
            $lista = system($orden,$salida);
            echo "<br>";
        } else {
            echo "<script>alert('Ocurrió un error al subir el archivo.')</script>";
        }
    }
}
echo "<br>";
echo "<br>";
echo "<button name='ejecuta' id='ejecuta' onclick='ejecutar(\"$target_file\")'>Resuelve</button>";
?> 

Laberintos Disponibles:
        <select name="Lista Laberintos" id="maze_list" onchange="inicializa()">
            <option value="0">Normal</option>
            <option value="1">Unidos</option>
            <option value="2">Forma</option>
            <option value="3" selected>Chico</option>
        </select>
<br><br>
<button name='dibuja' id='dibuja' onclick='draw_result()'>Resultado</button>
<div id="salida"></div>
<script type="text/javascript" src="solve.php"></script>
<br><br>
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
    </body>
</html>
