<?php session_start();
   include("conexion.php"); 
   $link=Conectarse();

$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
}
// Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}
// Check file size
if ($_FILES["fileToUpload"]["size"] > 500000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}
// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        // echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
        //echo $_FILES["fileToUpload"]["name"];
        $img_promo = $_FILES["fileToUpload"]["name"];

    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}



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

    $sucursales = "";
    if (isset($_POST['sucursales'])){
       $sucursales1 = $_POST['sucursales'];
       $sucursales = $sucursales.$sucursales1; 
    }
    if (isset($_POST['sucursales2'])) {
      $sucursales2 = $_POST['sucursales2'];
       $sucursales = $sucursales."-".$sucursales2; 
    }
    if(isset($_POST['sucursales3'])){
        $sucursales3 = $_POST['sucursales3'];
        $sucursales = $sucursales."-".$sucursales3; 
    }


    

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
