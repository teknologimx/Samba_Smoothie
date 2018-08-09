<?php
    error_reporting(0);
    $link= mysql_connect('localhost','root','') or die("No se puede conectar " . mysql_error());
    mysqli_set_charset($link,"utf8");
    mysql_select_db('samba') or die("No se puede seleccionar la basede datos");

    $query= 'SELECT ordenes.calificacion_comentario as cal, ordenes.date_created as fecha FROM ordenes WHERE calificacion_comentario!="" ORDER BY date_created ASC LIMIT 5';
    $result= mysql_query($query) or die('Consulta fallida: ' . mysql_error());

    $i= 1;
    while($row=mysql_fetch_array($result)){
        echo "<li>
                <div class='row'>
                    <div class='col-4 date-holder text-right'>
                        <div class='icon'><i class='icon-clock'></i></div>
                        <div class='date'> <span>$row[fecha]</span><span class='text-info'>6 hours ago</span></div>
                    </div>
                    <div class='col-8 content'><strong>Comentario $i</strong>
                        <p>$row[cal]</p>
                    </div>
                </div>
            </li>";
        $i++;
    }
?>