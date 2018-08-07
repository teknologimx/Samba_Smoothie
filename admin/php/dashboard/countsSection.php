<?php
    error_reporting(0);
    $link= mysql_connect('localhost','root','') or die('No se pudo conectar: ' . mysql_error());
    mysqli_set_charset($link,"utf8");
    mysql_select_db('samba') or die ('No se puede seleccionar la base de datos');

    //Relizar consulta
    $query= 'SELECT ordenesdetalles.cantidad, ordenes.calificacion_comida, ordenes.calificacion_servicio, ordenes.estatus FROM ordenesdetalles, ordenes WHERE calificacion_comida!=0 AND calificacion_servicio!=0';
    $result= mysql_query($query) or die('Consulta fallida' . mysql_error());

    $cont= 0;
    $ordReal= 0;
    $calProd= 0;
    $calServ= 0;
    $ordEnt= 0;
    $ordCan= 0;
    while($row= mysql_fetch_array($result)){
        $cont++;
        $ordReal+= $row[cantidad];
        $calProd+= $row[calificacion_comida];
        $calServ+= $row[calificacion_servicio];
        //echo $row[estatus];
        if($row[estatus]=="Entregado")
            $ordEnt++;
        if($row[estatus]=="Cancelado")
           $ordCan++;
    }

    //Obtener la calificacion del producto
    $calP= bcdiv($calProd/$cont,'1',2);
    //Obtener la calificacion del servicio
    $calS= bcdiv($calServ/$cont,'1',2);

    echo "<div class='col-xl-2 col-md-8 col-6'>
        <div class='col-xl-2 col-md-8 col-6'>
            <div class='wrapper count-title d-flex'>
                <div class='icon'><i class='fa fa-users'></i></div>
                    <div class='name'><strong class='text-uppercase'>Clientes Totales</strong>
                        <div class='count-number'>#</div>
                    </div>
                </div>
            </div>
        </div>
    <div class='col-xl-2 col-md-8 col-6'>
        <div class='col-xl-2 col-md-8 col-6'>
            <div class='wrapper count-title d-flex'>
                <div class='icon'><i class='icon-padnote'></i></div>
                    <div class='name'><strong class='text-uppercase'>Ordenes Realizadas</strong>
                    <div class='count-number'>$ordReal</div>
                </div>
            </div>
        </div>
    </div>
    <div class='col-xl-2 col-md-8 col-6'>
        <div class='col-xl-2 col-md-8 col-6'>
            <div class='wrapper count-title d-flex'>
                <div class='icon'><i class='icon-check'></i></div>
                    <div class='name'><strong class='text-uppercase'>Calificación Producto</strong>
                    <div class='count-number'>$calP</div>
                </div>
            </div>
        </div>
    </div>
    <div class='col-xl-2 col-md-8 col-6'>
        <div class='col-xl-2 col-md-8 col-6'>
            <div class='wrapper count-title d-flex'>
                <div class='icon'><i class='icon-check'></i></div>
                    <div class='name'><strong class='text-uppercase'>Calificación Servicio</strong>
                    <div class='count-number'>$calS</div>
                </div>
            </div>
        </div>
    </div>
    <div class='col-xl-2 col-md-8 col-6'>
        <div class='col-xl-2 col-md-8 col-6'>
            <div class='wrapper count-title d-flex'>
                <div class='icon'><i class='icon-list-1'></i></div>
                    <div class='name'><strong class='text-uppercase'>Ordenes Entregadas</strong>
                    <div class='count-number'>$ordEnt</div>
                </div>
            </div>
        </div>
    </div>";
    /*<div clss='col-xl-2 col-md-8 col-6'>
        <div class='col-xl-2 col-md-8 col-6'>
            <div class='wrapper count-title d-flex'>
                <div class='icon'><i class='icon-list'></i></div>
                    <div class='name'><strong class='text-uppercase'>Ordenes Canceladas</strong>
                    <div class='count-number'>$ordCan</div>
                </div>
            </div>
        </div>
    </div>";*/
?>