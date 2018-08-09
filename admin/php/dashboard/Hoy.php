<?php
    //Muestra el numero de ordenes y ganancias del dia de hoy
    error_reporting(0);
    
    //Conectar
    $link= mysql_connect('localhost','root','') or die ('No se puede conectar: ' . mysql_error());
    mysqli_set_charset($link,"utf8");
    mysql_select_db('samba') or die('No se puede conectar la base de datos');

    //Realizar la consulta
    $query= "SELECT SUM(ordenesdetalles.monto_pagado) as gan,
                    SUM(ordenesdetalles.cantidad) as ord
            FROM ordenesdetalles
            WHERE fecha_pago>='$var' AND fecha_pago<='$aux'
            ORDER BY gan, ord";

    $result= mysql_query($query) or die('Consulta fallida ' . mysql_error());
    
    while($row=mysql_fetch_array($result)){
        echo "<td class='display h4'>$row[gan]</td>";
        echo "<td class='display h4'>$row[ord]</td>";
    }
?>