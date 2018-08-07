<?php
    error_reporting(0);
    //Conectar
    $link= mysql_connect('localhost','root','') or die ('No se puede conectar: ' . mysql_error());
    mysqli_set_charset($link,"utf8");
    mysql_select_db('samba') or die('No se puede conectar la base de datos');

    //Realizar la consulta
    $query= 'SELECT * FROM ordenes WHERE estatus="Cancelado"';
    $result= mysql_query($query) or die('Consulta fallida ' . mysql_error());
    $cont= 0;
    while($row=mysql_fetch_array($result)){
        $cont++;
    }
    //Imprimir resultados
    echo "<div class='col-xl-2 col-md-8 col-6'>
            <div class='col-xl-2 col-md-8 col-6'>
              <div class='wrapper count-title d-flex'>
                <div class='icon'><i class='icon-list'></i></div>
                  <div class='name'><strong class='text-uppercase'>Ordenes Canceladas</strong>
                    <div class='count-number'>$cont</div>
                </div>
              </div>
            </div>
          </div>";
?>