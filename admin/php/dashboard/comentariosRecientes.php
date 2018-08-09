<?php
    error_reporting(0);
    $link= mysql_connect('localhost','root','') or die("No se puede conectar " . mysql_error());
    mysqli_set_charset($link,"utf8");
    mysql_select_db('samba') or die("No se puede seleccionar la basede datos");

    $query= 'SELECT ordenes.calificacion_comentario as cal, ordenes.date_created as fecha 
    FROM ordenes WHERE calificacion_comentario!="" ORDER BY date_created ASC LIMIT 5';
    $result= mysql_query($query) or die('Consulta fallida: ' . mysql_error());
    //$fecha= date("Y-m-d");
    //echo date("Y-m-d",strtotime($fecha."-1 day"));
    $i= 1;
    while($row=mysql_fetch_array($result)){
        //echo date("$row[fecha]",strtotime($fecha."-1 month"));
        //echo date($row[fecha]);
        $fecha= date($row[fecha]);
        $fecha= new DateTime($fecha);
        echo "<li>
                <div class='row'>
                    <div class='col-4 date-holder text-right'>
                        <div class='icon'><i class='icon-clock'></i></div>
                        <div class='date'> <span>".$fecha->format("Y-m-d"), PHP_EOL."</span><span class='text-info'>".$fecha->format("H:i:s"), PHP_EOL."</span></div>
                    </div>
                    <div class='col-8 content'><strong>Comentario $i</strong>
                        <p>$row[cal]</p>
                    </div>
                </div>
            </li>";
        $i++;
    }
?>