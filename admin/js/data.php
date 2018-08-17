<?php
    header('Content-Type: application/json');
    error_reporting(0);
    define('DB_HOST', '127.0.0.1');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_NAME', 'samba');

    //$mysqli= new mysqli('localhost','root','','samba');
    $mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
    if(!$mysqli){
        die("Conexion fallida: " . $mysqli->error);
    }
    //Determinar las fechas
    $hoy= getdate();
    $fInicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    //echo "<br>Fecha Hoy: ", $fInicio->format("Y-m-d H:i"), PHP_EOL;
    $fInicio->modify("-300 day");
    $fFin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fFin->modify("-90 day");

    $var= $fInicio->format("Y-m-d");
    $aux= $fFin->format("Y-m-d");

    //Realizar la consulta
    $query= sprintf("SELECT SUM(ordenesdetalles.monto_pagado) as gan,
                            SUM(ordenesdetalles.cantidad) as ord
                    FROM ordenesdetalles
                    WHERE fecha_pago>='$var' AND fecha_pago<='$aux'
                    ORDER BY gan, ord");
    $result= $mysqli->query($query);
    $data= array();
    foreach($result as $row){
        $data[]= $row;
    }
    $result->close();
    $mysqli->close();
    print json_encode($data);
?>