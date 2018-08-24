<?php session_start(); 
  include("admin/conexion.php"); 
  $link=Conectarse(); 

  $usuario=$_REQUEST['usuario']; 
  $password=$_REQUEST['password'];

  if ($usuario=="")
  {
     echo "<script>";
     echo "alert('Debes introducir un usuario');";  
     echo "window.location = 'index.php';";
     echo "</script>";
  }
  else if ($password=="")
  {
       echo "<script>";
       echo "alert('Debes introducir un password');";  
       echo "window.location = 'index.php';";
       echo "</script>";

  }
  else
  {
   $result = mysqli_query($link, "SELECT l.nombre as name, l.password, l.username, u.userlg_id, u.rolelg_id, r.nombre as tipo FROM userlg l inner join userlg_rolelg u on l.id = u.userlg_id inner join rolelg r on r.id=u.rolelg_id where username='".$usuario."' ");
   if($row = mysqli_fetch_array($result))
    {
        $nombre=$row['name'];
        $tipo=$row['rolelg_id'];
        $usuario=$row["username"];
        if($row["password"] == $password)
        {
              $_SESSION["k_user"]=$usuario;
              $_SESSION["k_tipo"]=$tipo;
              $_SESSION["k_name"]=$nombre;

              echo "$tipo";
              if($tipo==3)
              header("Location: admin/index.php");// administrador 3
              if($tipo==2)
              header("Location: prop/index.php");//   propietario   2
        }
        else
          {
                echo "<script>";
                echo "alert('Password incorrecto');";  
                echo "window.location = 'index.php';";
                echo "</script>";  
          } 
    }
   else
   {
        echo "<script>";
        echo "alert('No existe usuario');";  
        echo "window.location = 'index.php';";
        echo "</script>";
    }
 }
?>