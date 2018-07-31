<?php
//Include the database configuration file
include("conexion.php"); 
   $link=Conectarse(); 

if(!empty($_POST["cat_id"])){
    //Fetch all state data
    $lineas = mysqli_query($link, "SELECT id_linea, linea from cat_lineas WHERE id_categoria = ".$_POST['cat_id']." ");
    //Count total number of rows
    $rowcount=mysqli_num_rows($lineas);
    
    //State option list
    if($rowCount >= 0){
        echo '<option value="">Selecciona...</option>';
        while($row = mysqli_fetch_row($lineas)){ 
            echo '<option value="'.$row[0].'">'.$row[1].'</option>';
        }
    }else{
        echo '<option value="">No aplica</option>';
    }

}elseif(!empty($_POST["linea_id"])){
    //Fetch all city data
     $producto = mysqli_query($link, "SELECT id_detalle, nom_producto FROM detalle_producto WHERE
 id_linea = ".$_POST['linea_id']." ");

    //Count total number of rows
    $rowCount = mysqli_num_rows($producto);
     
    
    //City option list
    if($rowCount >= 0){
        echo '<option value="">Selecciona...</option>';
        while($row = mysqli_fetch_row($producto)){ 
            echo '<option value="'.$row[0].'">'.$row['1'].'</option>';
        }
    }else{
        echo '<option value="">No hay productos</option>';
    }
}

if(!empty($_POST["cat_id2"])){
    //Fetch all state data
    $lineas2 = mysqli_query($link, "SELECT id_linea, linea from cat_lineas WHERE id_categoria = ".$_POST['cat_id2']." ");
    //Count total number of rows
    $rowcount2=mysqli_num_rows($lineas2);
    
    //State option list
    if($rowCount2 >= 0){
        echo '<option value="">Selecciona...</option>';
        while($row2 = mysqli_fetch_row($lineas2)){ 
            echo '<option value="'.$row2[0].'">'.$row2[1].'</option>';
        }
    }else{
        echo '<option value="">No aplica</option>';
    }

}elseif(!empty($_POST["linea_id2"])){
    //Fetch all city data
     $producto2 = mysqli_query($link, "SELECT id_detalle, nom_producto FROM detalle_producto WHERE
 id_linea = ".$_POST['linea_id2']." ");

    //Count total number of rows
    $rowCount2 = mysqli_num_rows($producto2);
     
    
    //City option list
    if($rowCount2 >= 0){
        echo '<option value="">Selecciona...</option>';
        while($row2 = mysqli_fetch_row($producto2)){ 
            echo '<option value="'.$row2[0].'">'.$row2['1'].'</option>';
        }
    }else{
        echo '<option value="">No hay productos</option>';
    }
}
?>