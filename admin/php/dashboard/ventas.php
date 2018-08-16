<?php
error_reporting(0);
// Conectando, seleccionando la base de datos
$link = mysql_connect('localhost', 'root', '')
    or die('No se pudo conectar: ' . mysql_error());
//echo 'Connected successfully';
mysqli_set_charset($link,"utf8");
mysql_select_db('samba') or die('No se pudo seleccionar la base de datos');

// Realizar una consulta MySQL
$query = 'SELECT establecimientos.nombre AS "sucursal", userlg.nombre, establecimientos.ciudad, establecimientos.codigo, establecimientos.domicilio, establecimientos.telefono, establecimientos.total_vendido FROM establecimientos INNER JOIN userlg ON establecimientos.administrador_id=userlg.id ORDER BY establecimientos.total_vendido DESC';
$result = mysql_query($query) or die('Consulta fallida: ' . mysql_error());
// Imprimir los resultados en HTML
/* Desplegamos cada uno de los registros dentro de una tabla */  
	echo "<div class='card-body'>
            <div class='table-responsive'>
              <table class='table table-striped table-sm' style='font-size:12px;'>";

	/*Primero los encabezados*/
                    echo "<thead>
                            <tr>
                              <th>N°</th>
                              <th>Nombre</th>
                              <th>Responsable</th>
                              <th>Ciudad</th>
                              <th>Código</th>
                              <th>Domicilio</th>
                              <th>Teléfono</th>
                              <th>Ventas totales</th>
                            </tr>
                          </thead>
                          <tbody>";
                      /*Y ahora todos los registros */
                        $i =1;
                      while($row=mysql_fetch_array($result)){

                        echo "   <tr>
                                  <th scope='row'>$i</th>
                                  <td> $row[sucursal] </td>
                                  <td> $row[nombre] </td>
                                  <td> $row[ciudad] </td>
                                  <td> $row[codigo] </td>
                                  <td> $row[domicilio] </td>
                                  <td> $row[telefono] </td>
                                  <td> $ $row[total_vendido] </td>
                                </tr>";
                            $i++;
                      }

                      echo "</tbody>
                        </table>
                    </div>
                  </div>";

mysql_close($link);
?>