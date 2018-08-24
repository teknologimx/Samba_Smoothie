<?php 
function Conectarse() 
{ 
   if (!($link=mysqli_connect("localhost","root","", "samba"))) 
   { 
      echo "Error conectando a la base de datos."; 
      exit(); 
   } 
   mysqli_set_charset($link,"utf8");
   return $link; 
} 
?>
