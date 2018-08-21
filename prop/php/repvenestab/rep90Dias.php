<?php
    header('Content-Type: application/json');
    error_reporting(0);

    $mysqli= new mysqli('localhost','root','','samba');
    if(!$mysqli){
        die("Conexion fallida: " . $mysqli->error);
    }

    /*Determinar las horas */
    //Fecha de hace 90 dias
    $hoy= getdate();
    $fecha= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    //Primer mes
    $fecha->modify("-6 month");
    $var1= $fecha->format("Y-m-d H:m:i");
    //Segundo mes
    $fecha->modify("+1 month");
    $var2= $fecha->format("Y-m-d H:m:i");
    //Tercer mes
    $fecha->modify("+1 month");
    $var3= $fecha->format("Y-m-d H:m:i");
    //Cuarto mes (limite)
    $fecha->modify("+1 month");
    $var4= $fecha->format("Y-m-d H:m:i");
    

    //Realizar la consulta
    $query= sprintf("SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var1' AND fecha_pago<'$var2'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var2' AND fecha_pago<'$var3'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var3' AND fecha_pago<'$var4'
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