<?php
session_start();
?>
<!Doctype html>
<html lang="es-MX">
    <head>
        <title>Laberintos: Inicio</title> 
        <meta charset="UTF-8">
        <style>
        </style>
    </head>
    <body>
        <h1>Laberintos</h1>
        <form action="laberinto_subir.php" method="post" enctype="multipart/form-data">
            <h2> Selecciona el código a subir: </h2>
            <input type="file" name="fileToUpload" id="fileToUpload" required>
            <input type="submit" value="Subir Código" name="Subir_codigo">
        </form>
    </body>
</html>
