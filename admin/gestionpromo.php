<?php session_start();
   include("conexion.php"); 
   $link=Conectarse(); 
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Samba BI</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- jQuery Circle-->
    <link rel="stylesheet" href="css/grasp_mobile_progress_circle-1.0.0.min.css">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
          <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/mystyles.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/samba.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <script type="text/javascript" src="js/Script.js"></script>    
        
  </head>
  <body onload="javascript:cambiarPestana(pestanas,ventas)">
    <!-- Side Navbar -->
    <nav class="side-navbar">
      <div class="side-navbar-wrapper">
        <!-- Sidebar Header    -->
        <div class="sidenav-header d-flex align-items-center justify-content-center">
          <!-- Info usuario-->
          <div class="sidenav-header-inner text-center"><img src="img/user.png" alt="person" class="img-fluid rounded-circle">
            <h2 class="h5">Administrador</h2><span>Bienvenido</span>
          </div>
          <!-- Small Brand ,cuando minimizas el menu-->
          <div class="sidenav-header-logo"><a href="#" class="brand-small text-center"><img src="img/SAMBA%20FREH.png"></a></div>
        </div>
        <!-- Sidebar Navigation Menus-->
        <div class="main-menu">
          <h5 class="sidenav-heading">Menú</h5>
          <ul id="side-main-menu" class="side-menu list-unstyled">                  
            <li><a href="index.html"> <i class="fa fa-home"></i>Inicio                             </a></li>
            <li><a href="#"> <i class="fa fa-truck"></i>Embarques                             </a></li>
            <li><a href="#"> <i class="fa fa-users"></i>Empleados                             </a></li>
            <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-cubes"></i>Catálogos </a>
              <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                <li><a href="#">Page</a></li>
                <li><a href="#">Page</a></li>
                <li><a href="#">Page</a></li>
              </ul>
            </li>
            <li><a href="#"> <i class="fa fa-cutlery"></i>Platillos                             </a></li>
            <li><a href="#"> <i class="fa fa-industry"></i>Empresas                             </a></li>
            <li><a href="#"> <i class="fa fa-building-o"></i>Cocinas                             </a></li>
            <li><a href="#submenuBI" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-cogs"></i>Bussines Inteligence </a>
              <ul id="submenuBI" class="collapse list-unstyled ">
                <li><a href="#tercermenu1" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-certificate"></i>Promociones</a>
                      <ul id="tercermenu1" class="collapse list-unstyled ">
                        <li><a href="promoventas.php"> <i class="fa fa-shopping-cart"></i>Crear promoción basado en ventas</a></li>
                        <li><a href="promopreferencias.php"> <i class="fa fa-shopping-basket"></i>Crear promoción basada en preferencias</a></li>
                        <li><a href="promoespecial.php"> <i class="fa fa-star"></i>Crear promoción especial</a></li>
                        <li><a href="gestionpromo.php"> <i class="fa fa-list-ol"></i>Gestionar promociones</a></li>
                      </ul>
                </li>
                <li><a href="#tercermenu2" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-briefcase"></i>Inteligencia de negocios</a>
                      <ul id="tercermenu2" class="collapse list-unstyled ">
                        <li><a href="dashboard.php"> <i class="fa fa-tachometer"></i>Reporte general</a></li>
                        <li><a href="reporteespecifico.html"> <i class="fa fa-shopping-cart"></i>Reportes específicos</a></li>
                      </ul>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="page">
      <!-- navbar-->
      <header class="header">
        <nav class="navbar">
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <div class="navbar-header"><a id="toggle-btn" href="#" class="menu-btn"><i class="icon-bars"> </i></a><a href="#" class="navbar-brand">
                  <div class="brand-text d-none d-md-inline-block"><span><img id="logo" src="img/samba_white.png" width="150px"></span></div></a></div>
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                

                <!-- Log out-->
                <li class="nav-item"><a href="login.html" class="nav-link logout"> <span class="d-none d-sm-inline-block" style="font-size: 1.5em;">Salir</span><i class="fa fa-power-off" style="font-size: 1.5em;"></i></a></li>
              </ul>
            </div>
          </div>
        </nav>
      </header>
      <!-- Breadcrumb-->
      <div class="breadcrumb-holder">
        <div class="container-fluid">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Inicio</a></li>
            <li class="breadcrumb-item active">Gestionar promociones       </li>
          </ul>
        </div>
      </div>
     
<div class="tab">
  <button class="tablinks" onclick=cambiarPestana(event,'Ventas')>Ventas</button>
  <button class="tablinks" onclick=cambiarPestana(event,'Preferencias')>Preferencias</button>
  <button class="tablinks" onclick=cambiarPestana(event,'Especiales')>Especiales</button>
</div>
<!--Promociones basadas en ventas-->
<div id="Ventas" class="tabcontent">
  <div  class="col-lg-20">
        <div class="card">
          <div class="card-header">
            <h4>Promociones basadas en Ventas</h4>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th> No.</th>
                    <th>Categoría</th>
                    <th>Tipo</th>
                    <th>Producto</th>
                    <th>Promoción</th>
                    <th></th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                      $num = 1;
                      $rows = mysqli_query($link, "SELECT promocion.tipo_promo, promocion_ventas.categoria_p1, promocion_ventas.tipo_p1, promocion_ventas.producto_p1, promocion.id_promocion FROM promocion INNER JOIN promocion_ventas ON promocion.id_promocion = promocion_ventas.id_promocion");
                       $rowcount=mysqli_num_rows($rows);
                       if($rowcount >= 0){
                            
                            while($row = mysqli_fetch_row($rows)){ 
                                echo '<tr>';
                                echo '<th scope="row">'.$num.'</th>';  
                                echo '<td>'.$row[1].'</td>';
                                echo '<td>'.$row[2].'</td>';
                                echo '<td>'.$row[3].'</td>';
                                echo '<td>'.$row[0].'</td>';
                                echo '<td>';
                                echo ' <a href='."/ProyectoLKE/Samba_Smoothie/admin/modificarPromoVentas.php?id_promocion=$row[4]".'><input type="button" id="modificar" value=" Modificar " class="btn btn-primary"></a>';
                                echo '</td>';  
                                echo '<td>';

                                echo '<button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-secondary">'."Eliminar".'</button>';
                          
                                // <!--Modal-->
                               echo '<div id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-center">';
                               echo '<div role="document" class="modal-dialog">';
                                  echo '<div class="modal-content">';
                                      echo '<div class="modal-header">';
                                          echo '<h5 id="exampleModalLabel" class="modal-title">'."Confirmar!".'</h5>';
                                          echo '<button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">'."×".'</span></button>';
                                      echo '</div>';
                                      echo '<div class="modal-body">';
                                          echo '<p>&nbsp;'."Presione Eliminar para confirmar".'</p>';
                                      echo '</div>';
                                      echo '<div class="modal-footer">';
                                          echo ' <a href='."/ProyectoLKE/Samba_Smoothie/admin/eliminarPromoVentas.php?id_promocion=$row[4]".'><input type="button" id="eliminar" value=" Eliminar " class="btn btn-primary"></a>';
                                          //echo '<button type="button" class="btn btn-primary">'."Eliminar".'</button>';
                                          echo '<button type="button" data-dismiss="modal" class="btn btn-secondary">'."Cancelar".'</button>';
                                      echo '</div>';
                                   echo '</div>';
                               echo '</div>';
                           echo '</div>';
                          // <!--Fin modal-->
                       echo '</td>';
                             $num = $num +1;
                            echo "</tr>";
                            }
                            
                        }else{
                            echo '<td>'."No hay ofertas".'</td>';
                        }
                   ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
  </div>
</div>
        
<!--Promociones basadas en preferencias-->
<div id="Preferencias" class="tabcontent">
  <div  class="col-lg-20">
        <div class="card">
          <div class="card-header">
            <h4>Promociones basadas en Preferencias</h4>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th> No.</th>
                    <th>Grupo</th>
                    <th>Producto</th>
                    <th>Promoción</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                 <?php
                      $num = 1;
                      $rows = mysqli_query($link, "SELECT promocion.tipo_promo, promocion_preferencias.grupo, promocion_preferencias.producto, promocion.id_promocion FROM promocion INNER JOIN promocion_preferencias  ON promocion.id_promocion = promocion_preferencias.id_promocion;");
                       $rowcount=mysqli_num_rows($rows);
                       if($rowcount >= 0){
                            
                            while($row = mysqli_fetch_row($rows)){ 
                                echo '<tr>';
                                echo '<th scope="row">'.$num.'</th>';  
                                echo '<td>'.$row[1].'</td>';
                                echo '<td>'.$row[2].'</td>';
                                echo '<td>'.$row[0].'</td>';
                                echo '<td>';
                                echo '<a href='."/ProyectoLKE/Samba_Smoothie/admin/modificarPromoVentas.php?id_promocion='.$row[3].'/".'><input type="button" id="modificar" value=" Modificar " class="btn btn-primary"></a>';
                                echo '<button type="button" data-toggle="modal" data-target="#myModal2" class="btn btn-secondary">'."Eliminar".'</button>';
                          
                                // <!--Modal-->
                               echo '<div id="myModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-center">';
                               echo '<div role="document" class="modal-dialog">';
                                  echo '<div class="modal-content">';
                                      echo '<div class="modal-header">';
                                          echo '<h5 id="exampleModalLabel" class="modal-title">'."Confirmar!".'</h5>';
                                          echo '<button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">'."×".'</span></button>';
                                      echo '</div>';
                                      echo '<div class="modal-body">';
                                          echo '<p>&nbsp;'."Presione Eliminar para confirmar".'</p>';
                                      echo '</div>';
                                      echo '<div class="modal-footer">';
                                          echo '<button type="button" class="btn btn-primary">'."Eliminar".'</button>';
                                          echo '<button type="button" data-dismiss="modal" class="btn btn-secondary">'."Cancelar".'</button>';
                                      echo '</div>';
                                   echo '</div>';
                               echo '</div>';
                           echo '</div>';
                          // <!--Fin modal-->
                       echo '</td>';
                             $num = $num +1;
                            echo "</tr>";
                            }
                            
                        }else{
                            echo '<td>'."No hay ofertas".'</td>';
                        }
                   ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
  </div>
</div>
        
<!--Promociones especiales-->
<div id="Especiales" class="tabcontent">
  <div  class="col-lg-20">
        <div class="card">
          <div class="card-header">
            <h4>Promociones Especiales</h4>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th> No.</th>
                    <th>Categoría</th>
                    <th>Tipo</th>
                    <th>Producto</th>
                    <th>Temática</th>
                    <th>Promoción</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                      $num = 1;
                      $rows = mysqli_query($link, "SELECT promocion.id_promocion, promocion_especial.categoria_p1, promocion_especial.tipo_p1, promocion_especial.producto_p1, promocion_especial.tematica, promocion.tipo_promo FROM promocion INNER JOIN promocion_especial ON promocion.id_promocion = promocion_especial.id_promocion");
                       $rowcount=mysqli_num_rows($rows);
                       if($rowcount >= 0){             
                            while($row = mysqli_fetch_row($rows)){ 
                                echo '<tr>';
                                echo '<th scope="row">'.$num.'</th>';  
                                echo '<td>'.$row[1].'</td>';
                                echo '<td>'.$row[2].'</td>';
                                echo '<td>'.$row[3].'</td>';
                                echo '<td>'.$row[4].'</td>';
                                echo '<td>'.$row[5].'</td>';
                                echo '<td>';
                                echo '<a href='."/ProyectoLKE/Samba_Smoothie/admin/modificarPromoVentas.php?id_promocion='.$row[0].'/".'><input type="button" id="modificar" value=" Modificar " class="btn btn-primary"></a>';
                                echo '<button type="button" data-toggle="modal" data-target="#myModal3" class="btn btn-secondary">'."Eliminar".'</button>';
                          
                                // <!--Modal-->
                               echo '<div id="myModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-center">';
                               echo '<div role="document" class="modal-dialog">';
                                  echo '<div class="modal-content">';
                                      echo '<div class="modal-header">';
                                          echo '<h5 id="exampleModalLabel" class="modal-title">'."Confirmar!".'</h5>';
                                          echo '<button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">'."×".'</span></button>';
                                      echo '</div>';
                                      echo '<div class="modal-body">';
                                          echo '<p>&nbsp;'."Presione Eliminar para confirmar".'</p>';
                                      echo '</div>';
                                      echo '<div class="modal-footer">';
                                          echo '<button type="button" class="btn btn-primary">'."Eliminar".'</button>';
                                          echo '<button type="button" data-dismiss="modal" class="btn btn-secondary">'."Cancelar".'</button>';
                                      echo '</div>';
                                   echo '</div>';
                               echo '</div>';
                           echo '</div>';
                          // <!--Fin modal-->
                       echo '</td>';
                             $num = $num +1;
                            echo "</tr>";
                            }
                            
                        }else{
                            echo '<td>'."No hay ofertas".'</td>';
                        }
                   ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
  </div>
</div>
        
      <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p>Teknologi &copy; 2018</p>
            </div>
            <div class="col-sm-6 text-right">
              <p>Design by <a href="#" class="external">Teknologi</a></p>
  
            </div>
          </div>
        </div>
      </footer>
    </div>
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>