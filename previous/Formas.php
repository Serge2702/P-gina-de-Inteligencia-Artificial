<!Doctype html>
<html lang="es-MX">
    <head>
        <title>Ejercicio Formularios</title> 
        <meta charset="UTF-8">
        <style>
        </style>
    </head>
    <body>
        <?php
        // define variables and set to empty values
        $Texto1 = $Carro = "";
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $Texto1 = test_input($_POST["Texto1"]);
            $Carro = test_input($_POST["cars"]);
        }

        function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
        }
        ?>
        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            <fieldset>
                Texto raro:
                <br>
                <input type="text" id="Texto1" name="Texto1">
                <br>
                <legend>Info personal </legend>
                Genero:
                <br>
                <input id="radio1" type="radio" name="sex" value="male" checked>Male
                <br>
                <input id="radio1" type="radio" name="sex" value="female">Female
                <br>
                <select name="cars">
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="fiat">Fiat</option>
                    <option value="audi">Audi</option>
                </select>
                <br>
                <textarea name="message" rows="10" cols="30"> The cat was playing in the garden.
                </textarea>
                <br><br>
                <input type="submit" value="Submit">
            </fieldset>
        </form>
        <?php
            echo "<br>";
            echo $Texto1;
            echo "<br>";
            echo $Carro;
        ?>
    </body>
</html>

