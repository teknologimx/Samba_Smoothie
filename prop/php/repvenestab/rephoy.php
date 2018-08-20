<?php
    header('Content-Type: application/json');
    error_reporting(0);

    $mysqli= new mysqli('localhost','root','','samba');
    if(!$mysqli){
        die("Conexion fallida: " . $mysqli->error);
    }

    /*Determinar las horas */
    //Fecha de hoy
    $hoy= getdate();
    $f9= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 09:00:00");
    $varf9= $f9->format("Y-m-d H:m:i");
    $f10= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 10:00:00");
    $varf10= $f10->format("Y-m-d H:m:i");
    $f11= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 11:00:00");
    $varf11= $f11->format("Y-m-d H:m:i");
    $f12= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 12:00:00");
    $varf12= $f12->format("Y-m-d H:m:i");
    $f13= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 13:00:00");
    $varf13= $f13->format("Y-m-d H:m:i");
    $f14= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 14:00:00");
    $varf14= $f14->format("Y-m-d H:m:i");
    $f15= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 15:00:00");
    $varf15= $f15->format("Y-m-d H:m:i");
    $f16= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 16:00:00");
    $varf16= $f16->format("Y-m-d H:m:i");
    $f17= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 17:00:00");
    $varf17= $f17->format("Y-m-d H:m:i");

    //Realizar la consulta
    $query= sprintf("SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$varf9' AND fecha_pago<'$varf10'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$varf10' AND fecha_pago<'$varf11'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$varf11' AND fecha_pago<'$varf12'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$varf12' AND fecha_pago<'$varf13'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$varf13' AND fecha_pago<'$varf14'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$varf14' AND fecha_pago<'$varf15'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$varf15' AND fecha_pago<'$varf16'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$varf16' AND fecha_pago<'$varf17'
                    ORDER BY ganancias, ordenes");
    $result= $mysqli->query($query);
    $data= array();
    foreach($result as $row){
        $data[]= $row;
    }
    $result->close();
    $mysqli->close();
    print json_encode($data);
?>