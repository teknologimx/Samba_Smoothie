<?php
    error_reporting(0);
    include("http://localhost/Samba_Smoothie/admin/php/dashboard/conexion.php");
    $link=Conectarse(); 

    $result = mysqli_query($link,  'SELECT ordenes.calificacion_comentario as cal, ordenes.date_created as fecha 
    FROM ordenes WHERE calificacion_comentario!="" ORDER BY date_created DESC LIMIT 5');
    $i= 1;
    while($row=mysqli_fetch_array($result)){
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
    mysqli_close($link);
?>