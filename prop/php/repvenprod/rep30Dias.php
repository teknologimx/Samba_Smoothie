<?php
    header('Content-Type: application/json');
    error_reporting(0);

    $mysqli= new mysqli('localhost','root','','samba');
    if(!$mysqli){
        die("Conexion fallida: " . $mysqli->error);
    }

    /*Determinar las horas */
    //Fecha de hace 30 dias
    $hoy= getdate();
    $fecha= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fecha->modify("-2 month");
    //Primera semana
    $var1= $fecha->format("Y-m-d H:m:i");
    $fecha->modify("+1 week");
    $var2= $fecha->format("Y-m-d 00:00:00");
    //Segunda semana
    $fecha->modify("+1 week");
    $var3= $fecha->format("Y-m-d H:m:i");
    //Tercera semana
    $fecha->modify("+1 week");
    $var4= $fecha->format("Y-m-d H:m:i");
    //Cuarta semana
    $fecha->modify("+1 week");
    $var5= $fecha->format("Y-m-d H:m:i");
    

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
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var4' AND fecha_pago<'$var5'
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