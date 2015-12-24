<?php session_start(); ?>
<!Doctype html>
<html>
    <body>
<?php
$target_file = $target_file = $uploadOk = "";
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
    $finfo = finfo_open(FILEINFO_MIME_TYPE);
    if (finfo_file($finfo, $_FILES["fileToUpload"]["tmp_name"])!="text/x-lisp")
    {
        echo "<script>alert('Eso no es un archivo .lisp')</script>";
        $uploadOk = 0;
    }
    finfo_close($finfo);
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        session_destroy();
        // if everything is ok, try to upload file
    } 
    else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            $_SESSION["nombre_archivo"] = basename( $_FILES["fileToUpload"]["name"]);
            $_SESSION["nombre_exec"] = $target_file;
            $orden = "sbcl --script /home/archie/public_html/" . $target_file . " '(print-function-list)'";
            $_SESSION["lista_algoritmos"] = system($orden,$salida);
            $_SESSION["solucion"] = "";
            $_SESSION["numero_laberinto"] = 0;
            $_SESSION["numero_decoracion"] = 0;
            header("location: laberinto_interfaz.php");
        }  
    }
}
?> 
    </body>
</html>
