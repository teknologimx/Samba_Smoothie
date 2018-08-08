<?php
    error_reporting(0);
    // Conectando, seleccionando la base de datos
    $link = mysql_connect('localhost', 'root', '') or die('No se pudo conectar: ' . mysql_error());
    //echo 'Connected successfully';
    mysqli_set_charset($link,"utf8");
    mysql_select_db('samba') or die('No se pudo seleccionar la base de datos');
    
    // Realizar consulta MySQL
    //$query= "SELECT SUM(cantidad) as cantTotal, platillo_id FROM ordenesdetalles WHERE platillo_id!='' GROUP BY(platillo_id)";
    $query= "SELECT
                platillos.nombre,
                platillosestablecimientos.precio,
                ordenesdetalles.cantidad,
                SUM(platillosestablecimientos.precio) as precTotal,
                SUM(ordenesdetalles.cantidad) as cantTotal
            FROM
                platillos INNER JOIN platillosestablecimientos ON
                platillos.id=platillosestablecimientos.platillo_id INNER JOIN ordenesdetalles ON
                platillosestablecimientos.id=ordenesdetalles.platillo_id
            GROUP BY (platillos.nombre), (platillosestablecimientos.precio), (ordenesdetalles.cantidad)
            ORDER BY ordenesdetalles.cantidad DESC";


    $result= mysql_query($query) or die('Consulta fallida' . mysql_error());
    $i= 1;

    echo "<div class='card-body'>
            <div class='table-responsive'>
              <table class='table table-striped table-sm' style='font-size:12px;'>";
    echo "<thead>
            <tr>
                <th>N°</th>
                <th>Nombre</th>
                <th>Cantidad</th>
                <th>Precio Total</th>
            </tr>
          </thead>
        <tbody>";
    while($row=mysql_fetch_array($result)){
        echo "<tr>
                <th scope='row'>$i</th>
                <td>$row[nombre]</td>
                <td>$row[cantTotal]</td>
                <td>$row[precTotal]</td>
              </tr>";
        $i++;
    }
    echo "</tbody>
        </table>
        </div>
        </div>";
?>