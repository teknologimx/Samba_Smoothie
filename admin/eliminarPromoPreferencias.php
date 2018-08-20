<?php session_start();
   include("conexion.php"); 
   $id_promocion=$_GET['id_promocion'];
   $link=Conectarse();

   $query = "DELETE FROM promocion_preferencias WHERE id_promocion=$id_promocion";
    mysqli_query($link, $query); 
   $query2 = "DELETE FROM promocion WHERE id_promocion=$id_promocion";                 
    mysqli_query($link, $query2);
    mysqli_close($link);
    header("Location: gestionpromo.php");
?>