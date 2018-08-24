<?php session_start(); 
// Borramos toda la sesion
	session_destroy(); 
	echo "<script>";
	echo "alert('Ha terminado la sesion');";  
	echo "window.location = 'index.php';";
	echo "</script>";
?>