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
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/samba.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <!-- Side Navbar -->
    <nav class="side-navbar">
      <div class="side-navbar-wrapper">
        <!-- Sidebar Header    -->
        <div class="sidenav-header d-flex align-items-center justify-content-center">
          <!-- Info usuario-->
          <div class="sidenav-header-inner text-center"><img src="img/user.png" alt="person" class="img-fluid rounded-circle">
            <h2 class="h5">Propietario</h2><span>Bienvenido</span>
          </div>
          <!-- Small Brand ,cuando minimizas el menu-->
          <div class="sidenav-header-logo"><a href="#" class="brand-small text-center"><img src="img/SAMBA%20FREH.png"></a></div>
        </div>
        <!-- Sidebar Navigation Menus-->
        <div class="main-menu">
          <h5 class="sidenav-heading">Menú</h5>
          <ul id="side-main-menu" class="side-menu list-unstyled">                  
            <li><a href="index.php"> <i class="fa fa-home"></i>Inicio                             </a></li>
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
                      <li><a href="verpromo.php"> <i class="fa fa-shopping-cart"></i>Ver promociones</a></li>
                      </ul>
                </li>
                <li><a href="#tercermenu2" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-briefcase"></i>Inteligencia de negocios</a>
                      <ul id="tercermenu2" class="collapse list-unstyled ">
                        <li><a href="reportegeneral.php"> <i class="fa fa-tachometer"></i>Reporte general</a></li>
                        <li><a href="reporteespecifico.php"> <i class="fa fa-shopping-cart"></i>Reportes específicos</a></li>
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
                <li class="nav-item"><a href="../logout.php" class="nav-link logout"> <span class="d-none d-sm-inline-block" style="font-size: 1.5em;">Salir</span><i class="fa fa-power-off" style="font-size: 1.5em;"></i></a></li>
              </ul>
            </div>
          </div>
        </nav>
      </header>
      <!-- Breadcrumb-->
      <div class="breadcrumb-holder">
        <div class="container-fluid">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="reporteespecifico.php">Reportes específicos</a></li>
            <li class="breadcrumb-item active">Clientes en Riesgo</li>
          </ul>
        </div>
      </div>
      <section id="dvContainer" class="forms">
        <div class="container-fluid">
          <!-- Page Header-->
          <header> 
          </header>
          <div class="row">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                        <div class="row">
                          <div class="col-md-12 form-inline">
                              <div class="col-md-4">
                                    <h4>Clientes en riesgo</h4>
                              </div>
                              <div class="col-md-2">
                                    
                              </div>
                              <div class="col-md-1">
                                    
                              </div>
                              <div class="col-md-5 form-inline">
                                  <form action="php/reportes/creapdfclientes.php" method="post" target="_blank">
                                    <input type="hidden" id="tipo" name="tipo" value="1">
                                    <button type="submit" value="imprime" name="imprimepdf" class="btn btn-primary"><i class="fa fa-file-pdf-o"></i> Guardar </button>&nbsp;&nbsp;</form>
                                  <form method="post">
                                    <button  type="submit" value="imprime2"  class="btn btn-primary" onclick="window.print();"><i class="fa fa-print"></i> Imprimir </button>&nbsp;&nbsp;
                                    <!--<button type="submit" value="imprime3" name="imprimepdf3" class="btn btn-primary"><i class="fa fa-download"></i> Imprimir </button>-->
                                  </form>
                                  <div src="php/reportes/creapdf.php" name="ventana"></div>
                              </div>

                          <div class="col-md-3">
                            <!-- h6>Rango de fechas</h6>
                                <select id="status" class="form-control" name="status" onChange="mostrar(this.value);">
                                    <option selected value="Hoy">Hoy</option>
                                    <option value="Ayer">Ayer</option>
                                    <option value="1primB">Hace 7 días</option>
                                    <option value="1primC">Hace 30 días</option>
                                 </select> -->
                                 <br>
                          </div>

                          <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                      <div class="table-responsive">
                                        <table class="table table-striped table-hover">
                                          <thead>
                                            <tr>
                                              <th>Nombre</th>
                                              <th>Email</th>
                                              <th>Último día de pedido</th>
                                              <th>Pedidos totales</th>
                                              <th>Monto total</th>
                                            </tr>
                                          </thead>
                                          <tbody>
                                             <?php
                                              $query1 = mysqli_query($link, "SELECT  id, nombre, contacto_email FROM empresas");
                                              while($row1 = mysqli_fetch_array($query1)){ 
                                                $id=$row1["id"];
                                                $query = mysqli_query($link, "SELECT  COUNT(*) as TOTAL, IF(last_updated IS NULL or last_updated = '', 'null', last_updated) as last_updated FROM embarques WHERE  empresa_id = '".$id."'");
                                                  $row = mysqli_fetch_array($query); 
                                                  if($row["TOTAL"]<3){
                                                    $query2 = mysqli_query($link, "SELECT COUNT(*) as TOTALP, IFNULL(SUM(monto_pagado),0) AS MONTO FROM ordenes WHERE empresa_id='".$id."'");
                                                        $row2 = mysqli_fetch_array($query2);
                                                        echo '<tr>';
                                                        echo '<th scope="row">'.$row1["nombre"].'</th>';  
                                                        echo '<td>'.$row1["contacto_email"].'</td>';
                                                        echo '<td>'.$row["last_updated"].'</td>';
                                                        echo '<td>'.$row2["TOTALP"].'</td>';
                                                        echo '<td>'.'$ '.$row2["MONTO"].'</td>';  
                                                        echo '</tr>';   
                                                  }
                                              }
                                           ?>
                                          </tbody>
                                        </table>
                                      </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              </div>
              </div>
            </div>
        </div>
      </section>
      <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p>LKE &copy; 2018</p>
            </div>
            <div class="col-sm-6 text-right">
            <p>Design by <a href="http://www.lke.buap.mx/">LKE BUAP</a></p>

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
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>