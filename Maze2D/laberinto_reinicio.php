<?php
   session_start();
   session_destroy();
   //header("location: laberinto_inicio.php");
   echo "<script type='text/javascript'>";
      echo   "window.location.href = './'";
      echo "</script>";

?>
