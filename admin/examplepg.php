<?php
  include("conexion.php"); 
   $dbconn=ConectarsePG(); 
   $query = 'SELECT nombre,calorias FROM platillos';
   $result = pg_query($query) or die('La consulta fallo: ' . pg_last_error());
   echo "<table>\n";
		while ($row = pg_fetch_array($result)) {
			echo "\t<tr>\n";
			echo "\t\t<td>".$row['nombre']."</td>\n";
			echo "\t\t<td>".$row['calorias']."</td>\n";		
			echo "\t</tr>\n";
		}
	echo "</table>\n";

	// Liberando el conjunto de resultados - PSQL
	pg_free_result($result);

	// Cerrando la conexión - PSQL
	pg_close($dbconn);
	
?>