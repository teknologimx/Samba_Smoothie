<?php 
function Conectarse() 
{ 
   if (!($link=mysqli_connect("localhost","root","", "samba"))) 
   { 
      echo "Error conectando a la base de datos."; 
      exit(); 
   } 
   return $link; 
} 
//Conectar base de datos de postgresql
// function ConectarsePG() 
// { 
// 	$dbconn = pg_connect("host=aaup9i3gfi41kk.ctmunks7fjkr.us-west-2.rds.amazonaws.com port=5432 dbname=ebdb user=sambaDevAws password=sambasDev01")
// 		or die('No se ha podido conectar: ' . pg_last_error());
//    return $dbconn; 
// } 
?>
