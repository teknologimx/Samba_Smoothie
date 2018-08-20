<?php
    header('Content-Type: application/json');
    error_reporting(0);

    $mysqli= new mysqli('localhost','root','','samba');
    if(!$mysqli){
        die("Conexion fallida: " . $mysqli->error);
    }

    /*Determinar las horas */
    //Fecha de ayer
    $hoy= getdate();
    $fecha= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 09:00:00");
    //Dia 1
    $fecha->modify("-14 day");
    $var1= $fecha->format("Y-m-d H:m:i");
    $var2= $fecha->format("Y-m-d 17:00:00");
    //Dia 2
    $fecha->modify("-13 day");
    $var3= $fecha->format("Y-m-d H:m:i");
    $var4= $fecha->format("Y-m-d 17:00:00");
    //Dia 3
    $fecha->modify("-12 day");
    $var5= $fecha->format("Y-m-d H:m:i");
    $var6= $fecha->format("Y-m-d 17:00:00");
    //Dia 4
    $fecha->modify("-11 day");
    $var7= $fecha->format("Y-m-d H:m:i");
    $var8= $fecha->format("Y-m-d 17:00:00");
    //Dia 5
    $fecha->modify("-10 day");
    $var9= $fecha->format("Y-m-d H:m:i");
    $var10= $fecha->format("Y-m-d 17:00:00");
    //Dia 6
    $fecha->modify("-9 day");
    $var11= $fecha->format("Y-m-d H:m:i");
    $var12= $fecha->format("Y-m-d 17:00:00");
    //Dia 7
    $fecha->modify("-8 day");
    $var13= $fecha->format("Y-m-d H:m:i");
    $var14= $fecha->format("Y-m-d 17:00:00");

    //Realizar la consulta
    $query= sprintf("SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var1' AND fecha_pago<'$var2'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var3' AND fecha_pago<'$var4'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var5' AND fecha_pago<'$var6'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var7' AND fecha_pago<'$var8'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var9' AND fecha_pago<'$var10'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var11' AND fecha_pago<'$var12'
                    UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var13' AND fecha_pago<'$var14'
                    /*UNION ALL
                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                            SUM(ordenesdetalles.cantidad) as ordenes
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$varf16' AND fecha_pago<'$varf17'*/
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