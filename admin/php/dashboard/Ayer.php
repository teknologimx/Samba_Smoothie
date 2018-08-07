<?php
    //Muestra el numero de ordenes y ganancias del dia de ayer

    error_reporting(0);
    
    //Conectar
    $link= mysql_connect('localhost','root','') or die ('No se puede conectar: ' . mysql_error());
    mysqli_set_charset($link,"utf8");
    mysql_select_db('samba') or die('No se puede conectar la base de datos');


    $hoy= getdate();
    $fInicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    //echo "<br>Fecha Hoy: ", $fInicio->format("Y-m-d H:i"), PHP_EOL;
    $fInicio->modify("-48 hours");
    $fFin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $fFin->modify("-24 hours");
    /*echo "<br>Fecha inicio: ", $fInicio->format("Y-m-d H:i"), PHP_EOL;
    echo "<br>Fecha fin: ", $fFin->format("Y-m-d H:i"), PHP_EOL;*/
    

    //Realizar la consulta
    $query= 'SELECT * FROM transacciones WHERE monto!=0';
    //$query= 'SELECT * FROM transacciones WHERE fecha_operacion>=$fInicio OR fecha_operacion<=$fFin';
    $query= 'SELECT transacciones.monto, ordenesdetalles.cantidad FROM transacciones INNER JOIN ordenesdetalles ON transacciones.id=ordenesdetalles.id';
    $result= mysql_query($query) or die('Consulta fallida ' . mysql_error());
    $ganancias= 0;
    $ordenes= 0;
    while($row=mysql_fetch_array($result)){
        $fechaBD= new DateTime($row[fecha_operacion]);
        if($fechaBD>=$fInicio && $fechaBD>=$fFin){
            $ganancias+= $row[monto];
            $ordenes+= $row[cantidad];
        }
    }
    echo "<td class='display h4'>$ganancias</td>";
    echo "<td class='display h4'>$ordenes</td>";
?>