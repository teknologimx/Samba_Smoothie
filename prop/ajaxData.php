<?php
//Include the database configuration file
include("conexion.php"); 
   $link=Conectarse(); 
//producto 1
if(!empty($_POST["cat_id"])){
    //Fetch all state data
    if($_POST["cat_id"] == "Bebidas"){
     $tipos = mysqli_query($link, "SELECT id, nombre from tipos WHERE super_tipo = 'Bebidas' ");}
    elseif ($_POST["cat_id"] == "Comidas") {
     $tipos = mysqli_query($link, "SELECT id, nombre from tipos WHERE super_tipo = 'Comidas' ");
    }
    //Count total number of rows
    $rowcount=mysqli_num_rows($tipos);

    //tipos option list
    if($rowCount >= 0){
        echo '<option value="">Selecciona...</option>';
        while($row = mysqli_fetch_row($tipos)){ 
            echo '<option value="'.$row[0].'">'.$row[1].'</option>';
        }
    }else{
        echo '<option value="">No aplica</option>';
    }

}elseif(!empty($_POST["tipo_id"])){
    //Fetch all city data
    $id=$_POST["tipo_id"];
     $producto = mysqli_query($link, "SELECT id, nombre FROM platillos WHERE tipo_id = '$id' ");

    //Count total number of rows
    $rowCount = mysqli_num_rows($producto);
     
    
    //producto option list
    if($rowCount >= 0){
        echo '<option value="">Selecciona...</option>';
        while($row = mysqli_fetch_row($producto)){ 
            echo '<option value="'.$row[0].'">'.$row['1'].'</option>';
        }
    }else{
        echo '<option value="">No hay productos</option>';
    }
}
//producto 2
if(!empty($_POST["cat_id2"])){
    //Fetch all state data
    if($_POST["cat_id2"] == "Bebidas"){
     $tipos2 = mysqli_query($link, "SELECT id, nombre from tipos WHERE super_tipo = 'Bebidas' ");}
    elseif ($_POST["cat_id2"] == "Comidas") {
     $tipos2 = mysqli_query($link, "SELECT id, nombre from tipos WHERE super_tipo = 'Comidas' ");
    }
    //Count total number of rows
    $rowcount2=mysqli_num_rows($tipos2);
    
    //State option list
    if($rowCount2 >= 0){
        echo '<option value="">Selecciona...</option>';
        while($row2 = mysqli_fetch_row($tipos2)){ 
            echo '<option value="'.$row2[0].'">'.$row2[1].'</option>';
        }
    }else{
        echo '<option value="">No aplica</option>';
    }

}elseif(!empty($_POST["tipo_id2"])){
    //Fetch all city data
     $id=$_POST["tipo_id2"];
     $producto2 = mysqli_query($link, "SELECT id, nombre FROM platillos WHERE tipo_id = '$id' ");

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