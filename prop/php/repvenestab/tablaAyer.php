<?php
    error_reporting(0);
    if (!($link=mysqli_connect("localhost","root","", "samba"))) 
    { 
       echo "Error conectando a la base de datos.";
    } 
     mysqli_set_charset($link,"utf8");
     

    $hoy= getdate();
    $inicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $inicio->modify("-48 hour");
    $fin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fin->modify("-24 hour");
    $var1= $inicio->format("Y-m-d H:m:i");
    $var2= $fin->format("Y-m-d H:m:i");
     
     $result = mysqli_query($link,  "SELECT
                            establecimientos.nombre as est,
                            SUM(ordenesdetalles.cantidad) as cantTotal,
                            SUM(platillosestablecimientos.precio) as precTotal
                        FROM platillosestablecimientos, ordenesdetalles INNER JOIN establecimientos
                        ON ordenesdetalles.establecimiento_id=establecimientos.id
                        Where ordenesdetalles.fecha_pago>='$var1' AND ordenesdetalles.fecha_pago<='$var2'
                        GROUP BY est
                        ORDER BY precTotal DESC");
    

    echo "<div class='card-body'>
            <div class='table-responsive'>
                <table class='table table-striped table-sm' style='font-size:12px;'>";
    echo "<thead>
            <tr>
                <th>Producto</th>
                <th>Tipo</th>
                <th>Cantidad Vendida</th>
                <th>Ganancia</th>
            </tr>
        </thead>
        <tbody>";
    while($row=mysqli_fetch_array($result)){
        echo "<tr>
                <th scope='row'>$row[nombre]</th>
                    <td>$row[tipo]</td>
                    <td>$row[cantTotal]</td>
                    <td>$ $row[precTotal]</td>
            </tr>";
    }
    echo "</tbody>
        </table>
        </div>
        </div>";
    mysqli_close($link);
?>