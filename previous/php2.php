<!DOCTYPE html>
<html>
    <head>
        <title>PHP Test</title>
    </head>
    <body>
        <?php 
        echo "<p>Hello World</p>"; 
        $salida = system('sbcl --script code.lisp');
        echo "<pre>$salida</pre>";
        ?>
    </body>
</html>
