<?php
    //Muestra el numero de ordenes y ganandias del dia de hoy

    error_reporting(0);
    
    //Conectar
    $link= mysql_connect('localhost','root','') or die ('No se puede conectar: ' . mysql_error());
    mysqli_set_charset($link,"utf8");
    mysql_select_db('samba') or die('No se puede conectar la base de datos');


    $hoy= getdate();
    $fInicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    //echo "<br>Fecha Hoy: ", $fInicio->format("Y-m-d H:i"), PHP_EOL;
    $fInicio->modify("-101 day");
    $fFin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fFin->modify("-90 day");
    /*echo "<br>Fecha inicio: ", $fInicio->format("Y-m-d H:i"), PHP_EOL;
    echo "<br>Fecha fin: ", $fFin->format("Y-m-d H:i"), PHP_EOL;*/

    //Realizar la consulta
    //$query= "SELECT * FROM ordenesdetalles WHERE cantidad!=0 AND monto_pagado!=0";
    $query= "SELECT * FROM ordenesdetalles WHERE fecha_pago BETWEEN '2018-04-30 00:00' AND '2018-04-31 00:00'";
    $result= mysql_query($query) or die('Consulta fallida ' . mysql_error());
    $ganancias= 0;
    $ordenes= 0;
    
    while($row=mysql_fetch_array($result)){
        $fechaBD= new DateTime($row[fecha_pago]);
        //if($fechaBD>=$fInicio && $fechaBD<=$fFin){
            $ganancias+= $row[monto_pago];
            $ordenes+= $row[cantidad];
            echo "<br>Fecha BD: ", $fInicio->format("Y-m-d H:i"), PHP_EOL;
            echo "<br>Ganancia: $ganancias<br>Ordenes: $ordenes";
        //}
    }
    echo "<td class='display h4'>$ganancias</td>";
    echo "<td class='display h4'>$ordenes</td>";
?>