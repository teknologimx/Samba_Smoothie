<?php
    error_reporting(0);
    
    //Conectar
    $link= mysql_connect('localhost','root','') or die ('No se puede conectar: ' . mysql_error());
    mysqli_set_charset($link,"utf8");
    mysql_select_db('samba') or die('No se puede conectar la base de datos');

    //$fechaActual= getdate();
    $fecha= new DateTime("now");
    $fecha->modify("-90 day");
    $fecha2= new DateTime("now");
    $fecha2->modify("-91 day");


    //Realizar la consulta
    //$query= 'SELECT * FROM transacciones WHERE monto!=0';
    $query= 'SELECT * FROM transacciones WHERE fecha_operacion!=""';
    $result= mysql_query($query) or die('Consulta fallida ' . mysql_error());
    $cont= 0;
    while($row=mysql_fetch_array($result)){
        $fechaBD= new DateTime($row[fecha_operacion]);
        //echo $fechaBD->format("Y-m-d H:i"), PHP_EOL;
        if(($fechaBD>$fecha2) && ($fechaBD<$fecha)){
            $cont+= $row[monto];
        }
    }
    //Imprimir resultados
    //echo "Fecha actual: $fechaActual[year]-$fechaActual[mon]-$fechaActual[mday]  $fechaActual[hours]:$fechaActual[minutes]<br><br>";
    /*echo "<br><br> fecha actual: ", $fecha->format("Y-m-d H:i"), PHP_EOL;
    echo "<br><br>BD fecha: ", $fechaBD->format("Y-m-d H:i"), PHP_EOL;
    //echo "$cont";*/
    echo "<td class='display h4'>$cont</td>";
?>