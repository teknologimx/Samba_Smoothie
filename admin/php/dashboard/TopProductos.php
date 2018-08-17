<?php
    //error_reporting(0);
    // Conectando, seleccionando la base de datos
    include("conexion.php");
    $link=Conectarse();
    $result = mysqli_query($link,  "SELECT
                platillos.nombre as nombre,
                ordenesdetalles.cantidad as cantidad,
                platillosestablecimientos.precio as precio,
                SUM(cantidad) as cantTotal,
                SUM(precio) as precTotal
            FROM
                platillos INNER JOIN platillosestablecimientos ON
                platillos.id=platillosestablecimientos.platillo_id INNER JOIN ordenesdetalles ON
                platillosestablecimientos.id=ordenesdetalles.platillo_id
            GROUP BY (nombre), (cantidad), (precio)
            ORDER BY precTotal DESC");
 
    /*$link = mysql_connect('localhost', 'root', '') or die('No se pudo conectar: ' . mysql_error());
    //echo 'Connected successfully';
    mysqli_set_charset($link,"utf8");
    mysql_select_db('samba') or die('No se pudo seleccionar la base de datos');*/
    
    // Realizar consulta MySQL
   

    echo "<div class='card-body'>
            <div class='table-responsive'>
              <table class='table table-striped table-sm' style='font-size:12px;'>";
    echo "<thead>
            <tr>
                <th>N°</th>
                <th>Nombre</th>
                <th>Cantidad</th>
                <th>Precio</th>
            </tr>
          </thead>
        <tbody>";
    $i= 1;
    while($row=mysqli_fetch_array($result)){
        echo "<tr>
                <th scope='row'>$i</th>
                <td>$row[nombre]</td>
                <td>$row[cantTotal]</td>
                <td>$ $row[precTotal]</td>
              </tr>";
        $i++;
    }
    echo "</tbody>
        </table>
        </div>
        </div>";
    mysqli_close($link);
?>