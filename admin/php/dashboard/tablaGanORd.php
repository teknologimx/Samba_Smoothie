<?php
    error_reporting(0);
    //include("conexion.php");
    //$link= Conectarse();
    $link= new mysqli('localhost','root','','samba');
    if(!$link){
        die("Conexion fallida: " . $mysqli->error);
    }

    /*Determinar las fechas */
    //Fecha de hoy
    $hoy= getdate();
    $fInicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    //$fInicio->modify("-300 day");
    $fFin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fFin->modify("+1 day");
    $var= $fInicio->format("Y-m-d");
    $aux= $fFin->format("Y-m-d");

    //Fecha Ayer
    $fInicio2= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fInicio2->modify("-48 hour");
    $fFin2= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fFin2->modify("-24 hour");
    $var2= $fInicio2->format("Y-m-d");
    $aux2= $fFin2->format("Y-m-d");

    //Hace 7 dias
    $fInicio3= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fInicio3->modify("-8 day");
    $fFin3= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fFin3->modify("-7 day");
    $var3= $fInicio3->format("Y-m-d");
    $aux3= $fFin3->format("Y-m-d");

    //Hace 30 dias
    $fInicio4= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fInicio4->modify("-31 day");
    $fFin4= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fFin4->modify("-30 day");
    $var4= $fInicio4->format("Y-m-d");
    $aux4= $fFin4->format("Y-m-d");

    //Hace 90 dias
    $fInicio5= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fInicio5->modify("-91 day");
    $fFin5= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fFin5->modify("-90 day");
    $var5= $fInicio5->format("Y-m-d");
    $aux5= $fFin5->format("Y-m-d");

    $result = mysqli_query($link, "SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                                        SUM(ordenesdetalles.cantidad) as ordenes
                                    FROM ordenesdetalles
                                    WHERE fecha_pago>='$var' AND fecha_pago<='$aux'
                                    UNION ALL
                                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                                    SUM(ordenesdetalles.cantidad) as ordenes
                                    FROM ordenesdetalles
                                    WHERE fecha_pago>='$var2' AND fecha_pago<='$aux2'
                                    UNION ALL
                                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                                    SUM(ordenesdetalles.cantidad) as ordenes
                                    FROM ordenesdetalles
                                    WHERE fecha_pago>='$var3' AND fecha_pago<='$aux3'
                                    UNION ALL
                                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                                    SUM(ordenesdetalles.cantidad) as ordenes
                                    FROM ordenesdetalles
                                    WHERE fecha_pago>='$var4' AND fecha_pago<='$aux4'
                                    UNION ALL
                                    SELECT SUM(ordenesdetalles.monto_pagado) as ganancias,
                                    SUM(ordenesdetalles.cantidad) as ordenes
                                    FROM ordenesdetalles
                                    WHERE fecha_pago>='$var5' AND fecha_pago<='$aux5'
                                    ORDER BY ganancias, ordenes");
    $dias= array("Hoy","Ayer","Hace 7 dias","Hace 30 dias","Hace 90 dias");
    
    $i= 0;
    echo "<tbody>";
    while($row=mysqli_fetch_array($result)){
        echo "<tr>
                <th scope='row'>$i</th>
                <td class='display h4'>$dias[$i]</td>";
        echo "<td class='display h4'>$row[gan]</td>";
        echo "<td class='display h4'>$row[ord]</td>";
        echo "</tr>";
        $i++;
    }
    echo "</tbody>";
    mysqli_close($link);
?>