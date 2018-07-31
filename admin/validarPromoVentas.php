<?php session_start();
   include("conexion.php"); 
   $link=Conectarse();
    $oferta = $_POST["tipo_oferta"];
    $fecha_inicio = $_POST["fecha_inicio"];
    $fecha_final = $_POST["fecha_final"];
    $cat =$_POST["categoria"];
    $lin =$_POST["linea"];
    $res = mysqli_query($link, "SELECT categoria FROM cat_categorias WHERE id_categoria = $cat ");
    $row = mysqli_fetch_row($res);
    $categoria = $row[0];
    $res1 = mysqli_query($link, "SELECT linea FROM cat_lineas WHERE id_linea = $lin ");
    $row1 = mysqli_fetch_row($res1);
    $linea = $row1[0];
    $res2 = mysqli_query($link, "SELECT nom_producto FROM detalle_producto WHERE id_categoria = $cat");
    $row2 = mysqli_fetch_row($res2);
    $producto = $row2[0];

    if($oferta == 'Combo'){
        $cat2 =$_POST["categoria2"];
        $lin2 =$_POST["linea2"];
    	$res3 = mysqli_query($link, "SELECT categoria FROM cat_categorias WHERE id_categoria = $cat2 ");
	    $row3 = mysqli_fetch_row($res3);
	    $categoria2 = $row3[0];
	    $res4 = mysqli_query($link, "SELECT linea FROM cat_lineas WHERE id_linea = $lin2 ");
	    $row4 = mysqli_fetch_row($res4);
	    $linea2 = $row4[0];
	    $res5 = mysqli_query($link, "SELECT nom_producto FROM detalle_producto WHERE id_categoria = $cat2 ");
	    $row5 = mysqli_fetch_row($res5);
	    $producto2 = $row5[0];
        $descuento = 0;
    }elseif ($oferta == "2x1") {
    	$categoria2 = 0;
        $linea2 = 0;
        $producto2 = 0;
        $descuento = 0;
    }elseif ($oferta == "Descuento") {
    	$categoria2 = 0;
        $linea2 = 0;
        $producto2 = 0; 
        $descuento = $_POST["descuento"];
    }

    $sucursales = $_POST["sucursales"];
    $img_promo = $_POST["img_promo"];

	if ($oferta == "" || $fecha_inicio == "" ||  $fecha_final =="" || $categoria =="" || $producto =="")
	{
		echo 'No se pudo agregar porque hay datos vacios';
	}
	else
	{

    //guardar a base de datos
	$query = "INSERT INTO promociones (tipo_promo, fecha_inicio, fecha_fin, cat_p1, linea_p1, producto_p1, cat_p2, linea_p2, producto_p2, descuento, sucursal, img_promo)
				  VALUES ('$oferta', '$fecha_inicio', '$fecha_final', '$categoria', '$linea','$producto', '$categoria2', '$linea2', '$producto2', '$descuento', '$sucursales', 'img_promo')";
				  
		mysqli_query($link, $query) or die(mysql_error());
		echo "Se agrego el reactivo exitosamente";
	
    }
?>
