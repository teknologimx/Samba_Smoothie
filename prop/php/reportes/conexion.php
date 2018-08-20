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

//    mysql -h myinstance.c9akciq32.rds-us-east-1.amazonaws.com
// --ssl-ca=[SSL/rds-combined-ca-bundle.pem]rds-combined-ca-bundle.pem --ssl-verify-server-cert

} 
?>