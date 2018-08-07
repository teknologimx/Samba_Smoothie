<?php session_start();
   include("conexion.php"); 
   $link=Conectarse();
    $oferta = $_POST["tipo_promo"];
    $fecha_inicio = $_POST["fecha_inicio"];
    $fecha_final = $_POST["fecha_final"];
    $cat =$_POST["categoria"];
    //obtener tipo
    $id_tipo =$_POST["tipo"];
    $res = mysqli_query($link, "SELECT nombre from tipos WHERE id = '$id_tipo' ");
    $row = mysqli_fetch_row($res);
    $tipo = $row[0];
    //obtener producto
    $id_producto =$_POST["producto"];
    $res2 = mysqli_query($link, "SELECT nombre FROM platillos WHERE id = '$id_producto' ");
    $row2 = mysqli_fetch_row($res2);
    $producto = $row2[0];

    if($oferta == 'Combo'){
        $cat2 =$_POST["categoria2"];
        //obtener tipo
        $id_tipo2 =$_POST["tipo2"];
        $res3 = mysqli_query($link, "SELECT nombre from tipos WHERE id = '$id_tipo2' ");
        $row3 = mysqli_fetch_row($res3);
        $tipo2 = $row3[0];
        //obtener producto
        $id_producto2 =$_POST["producto2"];
        $res4 = mysqli_query($link, "SELECT nombre FROM platillos WHERE id = '$id_producto2' ");
        $row4 = mysqli_fetch_row($res4);
        $producto2 = $row4[0];
        $descuento = 0;
    }elseif ($oferta == "2x1") {
    	$cat2 = 0;
        $tipo2 = 0;
        $producto2 = 0;
        $descuento = 0;
    }elseif ($oferta == "Descuento") {
    	$cat2 = 0;
        $tipo2 = 0;
        $producto2 = 0; 
        $descuento = $_POST["descuento"];
    }

    $sucursales = $_POST["sucursales"];
    $img_promo = $_POST["img_promo"];

	if ($oferta == "" || $fecha_inicio == "" ||  $fecha_final =="" || $cat =="" || $tipo =="" || $producto =="")
	{
		echo 'No se pudo agregar porque hay datos vacios';
	}
	else
	{

    //guardar a base de datos
    $query = "INSERT INTO promocion (id_promocion, fecha_inicio, fecha_fin, sucursal, tipo_promo, img_promo)
                  VALUES ('', '$fecha_inicio', '$fecha_final', '$sucursales', '$oferta', '$img_promo')";
                  
    mysqli_query($link, $query);
    $id_p = mysqli_insert_id($link);

    $query2 = "INSERT INTO promocion_ventas (id_promo, id_promocion, categoria_p1, tipo_p1, producto_p1, categoria_p2, tipo_p2, producto_p2, descuento)
                  VALUES ('', '$id_p', '$cat', '$tipo', '$producto', '$cat2', '$tipo2', '$producto2', $descuento )";
    mysqli_query($link, $query2) or die(mysql_error());
    echo "Se agrego el reactivo exitosamente";
	
    }
    mysqli_close($link);
    header("Location: promoventas.php");
?>
