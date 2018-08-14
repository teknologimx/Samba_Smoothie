<?php session_start();
   include("conexion.php"); 
   $link=Conectarse();
    $oferta = $_POST["tipo_promo"];
    $fecha_inicio = $_POST["fecha_inicio"];
    $fecha_final = $_POST["fecha_final"];
    $grupo =$_POST["grupo"];
    $producto =$_POST["producto"];

    if($oferta == 'Descuento'){
        $descuento = $_POST["descuento"];
    }else{
        $descuento = 0;
    }

    $sucursales = "";
    if (isset($_POST['sucursales'])){
       $sucursales1 = $_POST['sucursales'];
       $sucursales = $sucursales."-".$sucursales1; 
    }
    if (isset($_POST['sucursales2'])) {
      $sucursales2 = $_POST['sucursales2'];
       $sucursales = $sucursales."-".$sucursales2; 
    }
    if(isset($_POST['sucursales3'])){
        $sucursales3 = $_POST['sucursales3'];
        $sucursales = $sucursales."-".$sucursales3; 
    }
    
    $img_promo = $_POST["img_promo"];

	if ($oferta == "" || $fecha_inicio == "" ||  $fecha_final =="" || $grupo =="" || $sucursales =="" || $producto =="")
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

    $query2 = "INSERT INTO promocion_preferencias (id_promo, id_promocion, grupo, producto, descuento)
                  VALUES ('', '$id_p', '$grupo', '$producto', $descuento )";
    mysqli_query($link, $query2) or die(mysql_error());
    echo "Se agrego el reactivo exitosamente";
	
    }
    mysqli_close($link);
    header("Location: promopreferencias.php");
?>
