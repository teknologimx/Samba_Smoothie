<?php
    header('Content-Type: application/json');
    error_reporting(0);

    $mysqli= new mysqli('localhost','root','','samba');
    if(!$mysqli){
        die("Conexion fallida: " . $mysqli->error);
    }

    $hoy= getdate();
    $inicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $inicio->modify("-60 day");
    $fin->modify("-30 day");
    $var1= $inicio->format("Y-m-d H:m:i");
    $var2= $fin->format("Y-m-d H:m:i");

    //Realizar la consulta
    $query= sprintf("SELECT
                        establecimientos.nombre as est,
                        SUM(ordenesdetalles.cantidad) as cantTotal,
                        SUM(platillosestablecimientos.precio) as precTotal
                FROM platillosestablecimientos, ordenesdetalles INNER JOIN establecimientos
                ON ordenesdetalles.establecimiento_id=establecimientos.id
                Where ordenesdetalles.fecha_pago>='$var1' AND ordenesdetalles.fecha_pago<='$var2'
                GROUP BY est
                ORDER BY est DESC");
    $result= $mysqli->query($query);
    $data= array();
    foreach($result as $row){
        $data[]= $row;
    }
    $result->close();
    $mysqli->close();
    print json_encode($data);
?>