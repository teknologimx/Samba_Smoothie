<?php session_start();
error_reporting(0);
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
                        <li><a href="gestionpromo.php"> <i class="fa fa-shopping-cart"></i>Ver promociones</a></li>
                      </ul>
                </li>
                <li><a href="#tercermenu2" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-briefcase"></i>Inteligencia de negocios</a>
                      <ul id="tercermenu2" class="collapse list-unstyled ">
                        <li><a href="dashboard.php"> <i class="fa fa-tachometer"></i>Reporte general</a></li>
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
            <li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="reporteespecifico.php">Reportes específicos</a></li>
            <li class="breadcrumb-item active">Pronóstico de Ventas</li>
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
                                    <h4>Pronóstico de Ventas</h4>
                              </div>
                              <div class="col-md-2">
                                    
                              </div>
                              <div class="col-md-1">
                                    
                              </div>
                              <div class="col-md-5 form-inline">
                                  <form action="php/reportes/creapdfventas.php" method="post" target="_blank">
                                    <button type="submit" value="imprime" name="imprimepdf" class="btn btn-primary"><i class="fa fa-file-pdf-o"></i> Guardar </button>&nbsp;&nbsp;</form>
                                  <form method="post">
                                    <button  type="submit" value="imprime2"  class="btn btn-primary" onclick="window.print();"><i class="fa fa-print"></i> Imprimir </button>&nbsp;&nbsp;
                                    <button type="submit" value="imprime3" name="imprimepdf3" class="btn btn-primary"><i class="fa fa-download"></i> Exportar </button>
                                  </form>
                                  <div src="php/reportes/creapdf.php" name="ventana"></div>
                              </div>

                          <div class="col-md-4">
                            <h6>Rango de fechas</h6>
                                <select id="status" class="form-control" name="status" onChange="mostrar(this.value);">
                                    <!-- <option selected value="Hoy">Hoy</option>
                                    <option value="Ayer">Ayer</option> -->
                                    <option value="">Selecciona...</option>
                                    <option value="1primB">1 semana</option>
                                    <option value="1primC">2 semanas</option>
                                    <option value="1primD">3 semanas</option>
                                 </select>
                          </div>

                          <div class="col-lg-12"> 
                              <div class="card">
                                    <div class="card-body">
                                      <h4>Datos historicos</h4><br>
                                      <div class="table-responsive">
                                        <table class="table table-striped table-hover">
                                          <thead>
                                            <tr>
                                              <th>#</th>
                                              <th>Semana</th>
                                              <th>Monto Generado</th>
                                            </tr>
                                          </thead>
                                          <tbody>
                                             <?php
                                              /*Determinar las fechas */
                                              $hoy= getdate();
                                              //Fecha HOY
                                              $fInicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
                                              $var= $fInicio->format("Y-m-d");

                                              //Fecha Ayer
                                              $fInicio2= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
                                              $fInicio2->modify("-24 hour");
                                              $var2= $fInicio2->format("Y-m-d");

                                              //Hace 30 dias = 4 semanas
                                              $fInicio4= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
                                              $fInicio4->modify("-31 day");
                                              $var4= $fInicio4->format("Y-m-d");

                                              //Hace 38 dias = 5 semanas
                                              $fInicio3= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
                                              $fInicio3->modify("-38 day");
                                              $var3= $fInicio3->format("Y-m-d");

                                              //Hace 45 dias = 6 semanas
                                              $fInicio5= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
                                              $fInicio5->modify("-45 day");
                                              $var5= $fInicio5->format("Y-m-d");

                                              $result = mysqli_query($link, "SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal
                                                                              FROM ordenesdetalles
                                                                              WHERE fecha_pago='$var'
                                                                              UNION ALL
                                                                              SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal
                                                                              FROM ordenesdetalles
                                                                              WHERE fecha_pago>='$var2' AND fecha_pago<='$var'
                                                                              UNION ALL
                                                                              SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal
                                                                              FROM ordenesdetalles
                                                                              WHERE fecha_pago>='$var3' AND fecha_pago<='$var'
                                                                              UNION ALL
                                                                              SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal
                                                                              FROM ordenesdetalles
                                                                              WHERE fecha_pago>='$var4' AND fecha_pago<='$var'
                                                                              UNION ALL
                                                                              SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal
                                                                              FROM ordenesdetalles
                                                                              WHERE fecha_pago>='$var5' AND fecha_pago<='$var'");
                                              $dias= array("Hoy","Ayer","Hace 4 semana","Hace 5 semanas","Hace 6 semanas");
                                              $i= 0;
                                              //$query = mysqli_query($link, "SELECT IFNULL(ordenesdetalles.monto_pagado,0) as ganancias, IFNULL(ordenesdetalles.cantidad,0) as ordenes FROM ordenesdetalles WHERE fecha_pago>='2018-07-10' AND fecha_pago<='2018-08-21';");
                                              while($row = mysqli_fetch_array($result)){

                                                        echo '<tr>';
                                                        echo '<th scope="row">'.$i.'</th>';  
                                                        echo '<td>'.$dias[$i].'</td>';
                                                        echo '<td>'.$row["MontoTotal"].'</td>';
                                                        echo '</tr>';  
                                                        $i= $i+1; 
                                              }
                                           ?>
                                          </tbody>
                                        </table>
                                      </div>
                                    </div>
                                </div>
                          </div>  
                              
                          <div class="col-lg-12">                             

                                <div id= '1primB' class="card" style="display: none">
                                    <div class="card-body">
                                      <h4>Pronóstico de 1 semana</h4>
                                      <div class="table-responsive">
                                        <table class="table table-striped table-hover">
                                          <thead>
                                            <tr>
                                              <th>#</th>
                                              <th>Semana</th>
                                              <th>Monto Generado</th>
                                            </tr>
                                          </thead>
                                          <tbody>
                                             <?php
                                             /*Determinar las fechas */
                                              $hoy= getdate();
                                              //Fecha HOY
                                              $fInicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
                                              $var= $fInicio->format("Y-m-d");

                                              //Fecha 1 semana
                                              $fInicio2= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
                                              $fInicio2->modify("-7 day");
                                              $var2= $fInicio2->format("Y-m-d");
                                              
                                                $query = mysqli_query($link, "SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal
                                                                              FROM ordenesdetalles
                                                                              WHERE fecha_pago>='$var2' AND fecha_pago<='$var' ");
                                                $i= 1; 
                                                $row = mysqli_fetch_array($query);
                                                echo '<tr>';
                                                echo '<th scope="row">'.$i.'</th>';  
                                                echo '<td>'."1 Semana".'</td>';
                                                echo '<td>'.$row["MontoTotal"].'</td>';
                                                echo '</tr>';  
                                           ?>
                                          </tbody>
                                        </table>
                                      </div>
                                    </div>
                                </div>

                                <div id= '1primC' class="card" style="display: none">
                                    <div class="card-body">
                                      <h4>Pronóstico de 2 semanas</h4>
                                      <div class="table-responsive">
                                        <table class="table table-striped table-hover">
                                          <thead>
                                            <tr>
                                              <th>#</th>
                                              <th>Semana</th>
                                              <th>Monto Generado</th>
                                            </tr>
                                          </thead>
                                          <tbody>
                                             <?php
                                             /*Determinar las fechas */
                                              $hoy= getdate();
                                              //Fecha HOY
                                              $fInicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
                                              $var= $fInicio->format("Y-m-d");

                                              //Fecha 1 semana
                                              $fInicio2= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
                                              $fInicio2->modify("-14 day");
                                              $var2= $fInicio2->format("Y-m-d");
                                              
                                                $query = mysqli_query($link, "SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal
                                                                              FROM ordenesdetalles
                                                                              WHERE fecha_pago>='$var2' AND fecha_pago<='$var' ");
                                                $i= 1; 
                                                $row = mysqli_fetch_array($query);
                                                echo '<tr>';
                                                echo '<th scope="row">'.$i.'</th>';  
                                                echo '<td>'."2 Semanas".'</td>';
                                                echo '<td>'.$row["MontoTotal"].'</td>';
                                                echo '</tr>';  
                                           ?>
                                          </tbody>
                                        </table>
                                      </div>
                                    </div>
                                </div>

                                <div id= '1primD' class="card" style="display: none">
                                    
                                    <div class="card-body">
                                      <h4>Pronóstico de 3 semanas</h4>
                                      <div class="table-responsive">
                                        <table class="table table-striped table-hover">
                                          <thead>
                                            <tr>
                                              <th>#</th>
                                              <th>Semana</th>
                                              <th>Monto Generado</th>
                                            </tr>
                                          </thead>
                                          <tbody>
                                             <?php
                                             /*Determinar las fechas */
                                              $hoy= getdate();
                                              //Fecha HOY
                                              $fInicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
                                              $var= $fInicio->format("Y-m-d");

                                              //Fecha 1 semana
                                              $fInicio2= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
                                              $fInicio2->modify("-21 day");
                                              $var2= $fInicio2->format("Y-m-d");
                                              
                                                $query = mysqli_query($link, "SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal
                                                                              FROM ordenesdetalles
                                                                              WHERE fecha_pago>='$var2' AND fecha_pago<='$var' ");
                                                $i= 1; 
                                                $row = mysqli_fetch_array($query);
                                                echo '<tr>';
                                                echo '<th scope="row">'.$i.'</th>';  
                                                echo '<td>'."3 Semanas".'</td>';
                                                echo '<td>'.$row["MontoTotal"].'</td>';
                                                echo '</tr>';  
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

      <!-- inicia footer -->
      <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p>LKE &copy; 2018</p>
            </div>
            <div class="col-sm-6 text-right">
              <p>Design by <a href="">Jorge Rojas</a></p>

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
    <script src="js/charts-custom.js"></script>
    <script src="js/repvenprod.js"></script>
    <script src="js/chart_repvenprod.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>
