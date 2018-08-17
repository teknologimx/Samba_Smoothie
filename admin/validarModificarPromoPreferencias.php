<?php session_start();
   include("conexion.php"); 
   $id_promocion=$_POST["Id"];
   $link=Conectarse();
   $promocion = mysqli_query($link, "SELECT * FROM promocion WHERE id_promocion = $id_promocion");
   $row_promo = mysqli_fetch_array($promocion);
   $img_promon=$row_promo["img_promo"];
   

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
        // if (file_exists($target_file)) {
        //     echo "Sorry, file already exists.";
        //     $uploadOk = 0;
        // }
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
            $img_promo=$img_promon;
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

    if ($oferta == "" || $fecha_inicio == "" ||  $fecha_final =="" || $grupo =="" || $sucursales =="" || $producto =="")
    {
        
        echo 'No se pudo agregar porque hay datos vacios';
    }
    else
    {

    //actualizar a base de datos

    $query="UPDATE promocion SET fecha_inicio='$fecha_inicio', fecha_fin='$fecha_final', sucursal='$sucursales', tipo_promo = '$oferta', img_promo = '$img_promo' WHERE id_promocion=$id_promocion";
    mysqli_query($link, $query);

    $query2="UPDATE promocion_preferencias SET grupo='$grupo', producto='$producto', descuento='$descuento' WHERE id_promocion=$id_promocion";
    mysqli_query($link, $query2);

    echo "Se modifico el reactivo exitosamente";
    
    }
    mysqli_close($link);
    header("Location: gestionpromo.php");
	
?>
